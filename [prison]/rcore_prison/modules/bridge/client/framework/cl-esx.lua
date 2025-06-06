CreateThread(function()
    if Config.Framework == Framework.ESX then
        local ESX = nil
    
        local success, result = pcall(function()
            ESX = exports[Framework.ESX]:getSharedObject()
        end)
    
        if not success then
            TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        end
    
        Framework.object = ESX
    
        function Framework.showHelpNotification(text)
            ESX.ShowHelpNotification(text, true, false)
        end
    
        function Framework.sendNotification(message, type)
            ESX.ShowNotification(message, type)
        end

        function HandleInventoryOpenState(state)
            local ply = LocalPlayer
        
            if not ply then
                return
            end
        end

        if not isResourcePresentProvideless('esx_multicharacter') and isResourcePresentProvideless('vms_identity') then
            RegisterNetEvent('vms_identity:setPlayerData', function(data)
                Wait(1000)
                TriggerServerEvent('rcore_prison:bridge:standalonePlayerNoMulticharActivated')
            end)
        elseif not isResourcePresentProvideless('esx_multicharacter') then
            CreateThread(function()
                while true do
                    if NetworkIsPlayerActive(PlayerId()) then
                        Wait(500)
                        TriggerServerEvent('rcore_prison:bridge:standalonePlayerActivated')
                        break
                    end
                    Wait(0)
                end
            end, "cl-standalone code name: Alfa")    
        end


        RegisterNetEvent(Config.FrameworkEvents['esx:playerLoaded'])
        AddEventHandler(Config.FrameworkEvents['esx:playerLoaded'], function(data)
            Framework.setJob({
                name = data.job.name,
                gradeName = data.job.grade_name,
                grade = data.job.grade,
                isOnDuty = false,
                isBoss = data.job.grade_name == "boss"
            })
        end)

        RegisterNetEvent(Config.FrameworkEvents['esx:setJob'])
        AddEventHandler(Config.FrameworkEvents['esx:setJob'], function(job)
            dbg.debug('Framework - job: Updating player job data!')
            Framework.setJob({
                name = job.name,
                gradeName = job.grade_name,
                grade = job.grade,
                isOnDuty = false,
                isBoss = job.grade_name == "boss"
            })
        end)

        SetTimeout(1000, function()
            if not Framework.object then
                return
            end

            local success, result = pcall(function()
                return Framework.object.GetPlayerData and Framework.object.GetPlayerData().job
            end)

            if result and success then
                dbg.debug('Framework - job: Setting player job data on init!')
                Framework.setJob({
                    name = result.name,
                    gradeName = result.grade_name,
                    grade = result.grade,
                    isOnDuty = false,
                    isBoss = result.grade_name == "boss"
                })
            end
        end)

        function Framework.setJob(job)
            Framework.job = job
        end
    end
end, "cl-esx code name: Phoenix")