if Config.Framework == nil or Config.Framework == 0 then
    if GetResourceState('qb-core') == 'starting' or GetResourceState('qb-core') == 'started' then
        Config.Framework = 2
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
    if Config.Framework == 2 then
        local QBCore = Citizen.Await(GetSharedObjectSafe())

        local jobName, jobIsBoss, jobGrade = nil, nil, nil

        Citizen.CreateThread(function()
            while true do

                local playerData = QBCore.Functions.GetPlayerData()

                if playerData and playerData.job then
                    jobName = playerData.job.name
                    if playerData.job.grade.isboss then
                        jobIsBoss = true
                    else
                        jobIsBoss = playerData.job.isboss
                    end

                    jobGrade = playerData.job.grade.level
                else
                    jobName = nil
                    jobIsBoss = nil
                    jobGrade = nil
                end

                Wait(2000)
            end
        end)

        if Config.UseQbProgressbar then
            Citizen.CreateThread(function()
                CancellableProgress = function(time, text, animDict, animName, flag, finish, cancel, opts)
                    QBCore.Functions.Progressbar("rcore_tuning_pbar", text, time, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {
                        animDict = animDict,
                        anim = animName,
                        flags = flag,
                    }, {}, {}, function()
                        ClearPedTasksImmediately(PlayerPedId())
                        finish()
                    end, function()
                        ClearPedTasksImmediately(PlayerPedId())
                        cancel()
                    end)
                end
            end)
        end

        ShowNotification = function(msg, isSuccess)
            local notificationType = "error"

            if isSuccess then
                notificationType = 'success'
            end

            QBCore.Functions.Notify(msg, notificationType)
        end

        PlayerHasMoney = function(price)
            if Config.Components then
                if Config.EnableQSInventorySupport then
                    local result = exports['qs-inventory']:Search(Config.ComponentItemName)

                    return result and result >= price
                elseif Config.EnableOxInventorySupport then
                    local result = exports.ox_inventory:GetItemCount(Config.ComponentItemName)
                    return result and result >= price
                elseif Config.EnableCoreInventorySupport then
                    local result = nil

                    ESX.TriggerServerCallback('core_inventory:server:getInventory', function(inventory)
                        for _, itemInfo in pairs(inventory) do
                            if itemInfo.name == Config.ComponentItemName then
                                result = itemInfo.count >= price
                                return
                            end
                        end

                        result = false
                    end)

                    local callbackEndTime = GetGameTimer() + 2000

                    while result == nil and callbackEndTime > GetGameTimer() do
                        Wait(50)
                    end

                    if result == nil then
                        print("ERROR: Inventory fetch timeout")
                        return false
                    end

                    return result
                else
                    return QBCore.Functions.HasItem(Config.ComponentItemName, price)
                end
            else
                if Config.UseSocietyMoney then
                    local p = promise.new()
                    QBCore.Functions.TriggerCallback('rcore_tuning:hasSocietyGotEnough', function(result)
                        p:resolve(result)
                    end, price, GetPlayersJobName())

                    return Citizen.Await(p)
                else
                    return QBCore.Functions.GetPlayerData().money.cash >= price
                end
            end
        end

        OtherPlayerHasMoney = function(price, otherPlayerSrc)

            local p = promise.new()
            QBCore.Functions.TriggerCallback('rcore_tuning:hasPlayerGotEnough', function(result)
                p:resolve(result)
            end, otherPlayerSrc, price)

            local callbackEndTime = GetGameTimer() + 2000
            while p and p.state and p.state == 0 do
                if callbackEndTime < GetGameTimer() then
                    print("Couldn't complete hasPlayerGotEnough callback.")
                    p:resolve(false)
                end
                Wait(100)
            end

            return Citizen.Await(p)
        end

        VehicleRepair = function(veh)
            SetVehicleEngineHealth(veh, 1000.0)
            SetVehicleBodyHealth(veh, 1000.0)
            SetVehiclePetrolTankHealth(veh, 750.0)
            SetVehicleFixed(veh)
        end

        GetPlayersJobName = function()
            return jobName, jobIsBoss
        end

        GetPlayersJobGrade = function()
            return jobGrade
        end

        OpenBossMenu = function(jobName)
            -- qb-management
            TriggerEvent("qb-bossmenu:client:OpenMenu")

            -- qb-boss
            TriggerEvent("qb-bossmenu:client:openMenu")
        end

    end
end)
