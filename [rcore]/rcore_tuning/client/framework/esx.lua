if Config.Framework == nil or Config.Framework == 0 then
    if GetResourceState('es_extended') == 'starting' or GetResourceState('es_extended') == 'started' then
        Config.Framework = 1
    end
end

if Config.Framework == 1 then
    if Config.FrameworkTriggers['notify'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['notify'])) == 'esx' then
        Config.FrameworkTriggers['notify'] = 'esx:showNotification'
    end

    if Config.FrameworkTriggers['load'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['load'])) == 'esx' then
        Config.FrameworkTriggers['load'] = 'esx:getSharedObject'
    end

    if Config.FrameworkTriggers['resourceName'] == '' or string.strtrim(string.lower(Config.FrameworkTriggers['resourceName'])) == 'esx' then
        Config.FrameworkTriggers['resourceName'] = 'es_extended'
    end
end


CreateThread(function()
    if Config.Framework == 1 then
        local ESX = Citizen.Await(GetSharedObjectSafe())

        local jobName, jobIsBoss, jobGrade = nil, nil, nil

        Citizen.CreateThread(function()
            while true do
                local playerData = ESX.GetPlayerData()

                if playerData and playerData.job then
                    jobName = playerData.job.name
                    jobIsBoss = playerData.job.grade_name:lower() == "boss"
                    jobGrade = playerData.job.grade
                else
                    jobName = nil
                    jobIsBoss = nil
                    jobGrade = nil
                end
                
                Wait(2000)
            end
        end)

        ShowNotification = function(text)
            TriggerEvent(Config.FrameworkTriggers['notify'], text)
        end

        PlayerGetMoney = function(accounts)
            for _, accountInfo in pairs(accounts) do
                if accountInfo.name == "money" then
                    return accountInfo.money
                end
            end
        end

        PlayerHasMoney = function(price)
            local playerData = ESX.GetPlayerData()
            if Config.Components then
                if Config.EnableQSInventorySupport then
                    local result = exports['qs-inventory']:Search(Config.ComponentItemName)

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
                elseif Config.EnableOxInventorySupport then
                    local result = exports.ox_inventory:GetItemCount(Config.ComponentItemName)
                    return result and result >= price
                else
                    for _, itemInfo in pairs(playerData.inventory) do
                        if itemInfo.name == Config.ComponentItemName and itemInfo.count and itemInfo.count >= price then
                            return true
                        end
                    end

                    return false
                end
            else
                if Config.UseSocietyMoney then

                    local p = promise.new()
                    ESX.TriggerServerCallback("rcore_tuning:hasSocietyGotEnough", function(result) 
                        p:resolve(result)
                    end, price, GetPlayersJobName())

                    return Citizen.Await(p)
                else

                    return PlayerGetMoney(playerData.accounts) >= price
                end
            end
            return false
        end

        OtherPlayerHasMoney = function(price, otherPlayerSrc)
            
            local p = promise.new()
            ESX.TriggerServerCallback("rcore_tuning:hasPlayerGotEnough", function(result) 
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
            TriggerEvent('esx_society:openBossMenu', jobName, function(data, menu)
                if menu then
                    menu.close()
                end
            end)
        end

        
        if Config.UseESXProgressbar then
            Citizen.CreateThread(function()
                CancellableProgress = function(time, text, animDict, animName, flag, finish, cancel, opts)
                    ESX.Progressbar(text, time, {
                        FreezePlayer = true, 
                        animation ={
                            type = "anim",
                            dict = animDict, 
                            lib = animName
                        },
                    onFinish = function()
                        ClearPedTasksImmediately(PlayerPedId())
                        finish()
                    end, 
                    onCancel = function()
                        ClearPedTasksImmediately(PlayerPedId())
                        cancel()
                    end
                    })
                end
            end)
        end
    end
end)
