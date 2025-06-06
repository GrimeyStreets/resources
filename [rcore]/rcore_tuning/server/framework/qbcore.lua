if Config.Framework == nil or Config.Framework == 0 then
    if GetResourceState('qb-core') == 'starting' or GetResourceState('qb-core') == 'started' then
        Config.Framework = 2
    end
end

if Config.Framework == nil or Config.Framework == 0 or Config.Framework == 2 then
    if GetResourceState('qb-bossmenu') == 'starting' or GetResourceState('qb-bossmenu') == 'started' then
        Config.SocietySystem = 2
    end

    if GetResourceState('qb-management') == 'starting' or GetResourceState('qb-management') == 'started' then
        Config.SocietySystem = 3
    end

    if Config.Framework == 2 then
        if GetResourceState('okokBanking') == 'starting' or GetResourceState('okokBanking') == 'started' then
            Config.SocietySystem = 5
        end
    end
end

if Config.Framework == 2 then
    if Config.FrameworkTriggers['notify'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['notify'])) == 'qbcore' then
        Config.FrameworkTriggers['notify'] = 'QBCore:Notify'
    end

    if Config.FrameworkTriggers['load'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['load'])) == 'qbcore' then
        Config.FrameworkTriggers['load'] = 'QBCore:GetObject'
    end

    if Config.FrameworkTriggers['resourceName'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['resourceName'])) == 'qbcore' then
        Config.FrameworkTriggers['resourceName'] = 'qb-core'
    end
end

CreateThread(function()
    local version = GetResourceMetadata('qb-banking', 'version', 0)
    if version and version >= "2.0.0" then
        Config.SocietySystem = 4
    end

    if Config.Framework == 2 then
        local QBCore = Citizen.Await(GetSharedObjectSafe())

        ShowNotification = function(src, msg)
            TriggerClientEvent('QBCore:Notify', src, msg, "error")
        end

        PlayerHasMoney = function(serverId, amount)
            local player = QBCore.Functions.GetPlayer(serverId)
            if Config.Components then
                if Config.EnableQSInventorySupport then
                    return exports['qs-inventory']:GetItemTotalAmount(serverId, Config.ComponentItemName) >= amount
                elseif Config.EnableOxInventorySupport then
                    local result = exports.ox_inventory:GetItemCount(serverId, Config.ComponentItemName)
                    return result and result >= amount
                else
                    return QBCore.Functions.HasItem(serverId, Config.ComponentItemName, amount)
                end
            else
                if Config.UseSocietyMoney then
                    local jobName = GetPlayersJobName(serverId)
                    return GetSocietyMoney(jobName) >= amount
                else
                    return player.PlayerData.money.cash >= amount
                end
            end
        end

        PlayerTakeMoney = function(serverId, workerId, amount, priceWithMargin, isShopUpgrade)
            local player = QBCore.Functions.GetPlayer(serverId)
            if amount == 0 then
                return true
            end

            if PlayerHasMoney(serverId, (isShopUpgrade and amount) or ((not Config.ChargeOrderedPlayer and amount) or priceWithMargin)) then
                if Config.Components then
                    if Config.EnableOxInventorySupport then
                        local result = exports.ox_inventory:RemoveItem(serverId, Config.ComponentItemName, amount)
                        return result
                    elseif Config.EnableQSInventorySupport then
                        if PlayerHasMoney(serverId, amount) then
                            exports['qs-inventory']:RemoveItem(serverId, Config.ComponentItemName, amount)
                            return true
                        else
                            return false
                        end
                    elseif not player.Functions.RemoveItem(Config.ComponentItemName, amount) then
                        return false
                    else
                        TriggerClientEvent('inventory:client:ItemBox', serverId, QBCore.Shared.Items[Config.ComponentItemName], "remove")
                    end
                else
                    if Config.UseSocietyMoney and not Config.ChargeOrderedPlayer then
                        local jobName = GetPlayersJobName(serverId)
                        RemoveSocietyMoney(jobName, amount)
                    elseif Config.ChargeOrderedPlayer then
                        player.Functions.RemoveMoney("cash", (isShopUpgrade and amount) or priceWithMargin, "tuning-shop")
                        if not isShopUpgrade then
                            if Config.AddMarginToSociety then
                                local jobName = GetPlayersJobName(workerId)
                                AddSocietyMoney(jobName, priceWithMargin - amount)
                            else
                                PlayerGiveMoney(workerId, priceWithMargin - amount, true)
                            end
                        end
                    else
                        player.Functions.RemoveMoney("cash", amount, "tuning-shop")
                    end
                end

                return true
            end
            return false
        end
        PlayerGiveMoney = function(serverId, amount, ignoreSociety)
            local player = QBCore.Functions.GetPlayer(serverId)

            if Config.Components then
                if not player.Functions.AddItem(Config.ComponentItemName, amount) then
                    return false
                else
                    TriggerClientEvent('inventory:client:ItemBox', serverId, QBCore.Shared.Items[Config.ComponentItemName], 'add')
                end
            else
                if not ignoreSociety and Config.UseSocietyMoney then
                    local jobName = GetPlayersJobName(serverId)
                    AddSocietyMoney(jobName, amount)
                else
                    player.Functions.AddMoney('cash', amount, "tuning-shop")
                end
            end
            return true
        end

        IsVehicleOwnedByServerId = function(vehNetId, serverId)
            if not Config.OnlyOwnersCanTuneOwnedCars then
                return true
            end

            local vehEnt = NetworkGetEntityFromNetworkId(vehNetId)
            local vehLp = GetVehicleNumberPlateText(vehEnt)

            local vehicleData = MySQL.Sync.fetchAll('SELECT citizenid, hash from player_vehicles WHERE plate = @plate', {
                ['@plate'] = vehLp,
            })

            if vehicleData[1] then
                local citizenId = vehicleData[1].citizenid
                local vehHash = tonumber(vehicleData[1].hash)

                local qbPlayer = QBCore.Functions.GetPlayer(serverId)

                if not qbPlayer then
                    return false
                end

                local realVehModelHash = GetEntityModel(vehEnt)

                return realVehModelHash == vehHash and qbPlayer.PlayerData.citizenid == citizenId
            end

            return true
        end

        GetPlayersJobName = function(serverId)
            local player = QBCore.Functions.GetPlayer(serverId)

            if player and player.PlayerData and player.PlayerData.job then
                return player.PlayerData.job.name
            end

            return nil
        end

        GetPlayersJobGrade = function(serverId)
            local player = QBCore.Functions.GetPlayer(serverId)

            if player and player.PlayerData and player.PlayerData.job then
                return player.PlayerData.job.grade.level
            end

            return nil
        end

        GetSocietyMoney = function(jobName)
            if Config.SocietySystem == 2 then
                return exports['qb-bossmenu']:GetAccount(jobName)
            elseif Config.SocietySystem == 3 then
                return exports['qb-management']:GetAccount(jobName)
            elseif Config.SocietySystem == 4 then
                return exports['qb-banking']:GetAccountBalance(jobName)
            elseif Config.SocietySystem == 5 then
                return exports['okokBanking']:GetAccount(jobName)
            end
        end

        RemoveSocietyMoney = function(jobName, amount)
            if Config.SocietySystem == 2 then
                TriggerEvent('qb-bossmenu:server:removeAccountMoney', jobName, amount)
            elseif Config.SocietySystem == 3 then
                exports['qb-management']:RemoveMoney(jobName, amount)
            elseif Config.SocietySystem == 4 then
                exports['qb-banking']:RemoveMoney(jobName, amount)
            elseif Config.SocietySystem == 5 then
                exports['okokBanking']:RemoveMoney(jobName, amount)
            end
        end

        AddSocietyMoney = function(jobName, amount)
            if Config.SocietySystem == 2 then
                TriggerEvent('qb-bossmenu:server:addAccountMoney', jobName, amount)
            elseif Config.SocietySystem == 3 then
                return exports['qb-management']:AddMoney(jobName, amount)
            elseif Config.SocietySystem == 4 then
                exports['qb-banking']:AddMoney(jobName, amount)
            elseif Config.SocietySystem == 5 then
                exports['okokBanking']:AddMoney(jobName, amount)
            end
        end

        GetPoliceCount = function()
            local policeCount = 0

            for _, serverId in pairs(QBCore.Functions.GetPlayers()) do
                Wait(0)

                local player = QBCore.Functions.GetPlayer(serverId)

                if player and player.PlayerData.job.name == 'police' then
                    policeCount += 1
                end
            end

            return policeCount
        end

        QBCore.Functions.CreateCallback("rcore_tuning:hasSocietyGotEnough", function(source, cb, price, jobName)
            cb(GetSocietyMoney(jobName) >= price)
        end)

        QBCore.Functions.CreateCallback("rcore_tuning:hasPlayerGotEnough", function(source, cb, otherPlayerSrc, price)
            cb(PlayerHasMoney(otherPlayerSrc, price))
        end)
    end
end)
