local tries = 0
isRaiding = false

RegisterNetEvent('Housing:client:LockCurrentHome', function()
    if not CurrentHome then return end
    TriggerServerEvent('Housing:server:LockHome', CurrentHome.identifier)
end)

function Dispatch()
    if IsResourceStarted('cd_dispatch') then
        local data = exports['cd_dispatch']:GetPlayerInfo()
        TriggerServerEvent('cd_dispatch:AddNotification', {
            job_table = { 'police' },
            coords = data.coords,
            title = Locale['house_robbery'],
            message = 'A ' .. data.sex .. ' robbing a house at ' .. data.street,
            flash = 0,
            unique_id = data.unique_id,
            sound = 1,
            blip = {
                sprite = 431,
                scale = 1.2,
                colour = 3,
                flashes = false,
                text = '911 - House Robbery',
                time = 5,
                radius = 0,
            }
        })
    elseif IsResourceStarted('ps-dispatch') then
        exports['ps-dispatch']:HouseRobbery()
    elseif IsResourceStarted('qs-dispatch') then
        local data = exports['qs-dispatch']:GetPlayerInfo()
        TriggerServerEvent('qs-dispatch:server:CreateDispatchCall', {
            job = { 'police', 'sheriff', 'traffic', 'patrol' },
            callLocation = data.coords,
            callCode = { code = '<House Robbery>', snippet = '<10-73>' },
            message = 'A ' .. data.sex .. ' robbing a house at ' .. data.street_1,
            flashes = false, -- you can set to true if you need call flashing sirens...
            blip = {
                sprite = 431,
                scale = 1.2,
                colour = 3,
                flashes = false,
                text = '911 - House Robbery',
                time = (20 * 1000), --blip fadeout time (1 * 60000) = 1 minute
            },
        })
    end
end

---Add tries if lockpicks fails. After certain amount of tries, alert and reset tries
---@param identifier string
function AddTries(identifier)
    if tries < Config.robbery.alertAfterFailed then
        tries += 1
    else
        tries = 0
        Dispatch()
        TriggerServerEvent("Housing:server:AlertLockpick", identifier)
    end
end

---Trigger checks after lockpick minigames
---@param success boolean
---@param identifier string
function LockpickResult(success, identifier, aptId)
    if success then
        if IsNearMLODoor() then
            OpenDoor()
        else
            TriggerServerEvent('Housing:server:LockHome', identifier, true, aptId)
        end
        Dispatch()
        TriggerServerEvent("Housing:server:AlertLockpick", identifier)
    else
        AddTries(identifier)
        Notify(Locale['housing'], Locale['failed_lockpick'], 'error', 3000)
        TriggerServerEvent('Housing:server:RemoveItem', Config.robbery.lockpickItem)
    end
end

RegisterNetEvent('Housing:client:StartLockpick', function(identifier, aptId)
    if not identifier then
        identifier = CurrentHome.identifier
    end
    lib.callback('Housing:server:CheckRobbery', false, function(allowed)
        if allowed then
            lib.callback('Housing:server:CheckItem', false, function(have)
                if have then
                    if identifier or IsNearMLODoor() then
                        if GetResourceState('qb-lockpick') == 'started' then
                            TriggerEvent('qb-lockpick:client:openLockpick', function(result)
                                LockpickResult(result, identifier, aptId)
                            end)
                        else
                            local result = exports['lockpick']:startLockpick()
                            LockpickResult(result, identifier, aptId)
                        end
                    else
                        Notify(Locale['housing'], Locale['not_near_any_door'], 'error', 3000)
                    end
                else
                    Notify(Locale['housing'], string.format(Locale['not_enough_item'], 'Lockpick'), 'error', 3000)
                end
            end, Config.robbery.lockpickItem)
        else
            Notify(Locale['housing'], Locale['not_enough_police'], 'error', 3000)
        end
    end, identifier, aptId)
end)

AddEventHandler('Housing:client:RaidDoor', function(identifier, aptId)
    if IsResourceStarted('ox_lib') then
        if lib.progressBar({
                duration = 10000,
                label = 'Raiding door',
                anim = {
                    dict = 'veh@break_in@0h@p_m_one@',
                    clip = 'low_force_entry_ds'
                },
            }) then
            isRaiding = true
            if IsNearMLODoor() then
                OpenDoor(true)
                Notify(Locale['housing'], Locale['house_raided'], 'success', 3000)
            else
                TriggerServerEvent('Housing:server:LockHome', identifier, true, aptId)
                TriggerEvent('Housing:client:EnterHome', identifier, false, aptId)
                Notify(Locale['housing'], Locale['house_raided'], 'success', 3000)
            end
        end
    elseif IsResourceStarted('progressbar') then
        exports.progressbar:Progress({
            name = 'raiding_police',
            duration = 10000,
            label = 'Raiding door',
            canCancel = false,
            useWhileDead = false,
            controlDisables = {
                disableMovement = false,
                disableCarMovement = false,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = 'veh@break_in@0h@p_m_one@',
                anim = 'low_force_entry_ds'
            },
        }, function(notCancelled)
            if not notCancelled then
                if IsNearMLODoor() then
                    OpenDoor(true)
                    Notify(Locale['housing'], Locale['house_raided'], 'success', 3000)
                else
                    TriggerServerEvent('Housing:server:LockHome', identifier, true, aptId)
                    TriggerEvent('Housing:client:EnterHome', identifier, false, aptId)
                    Notify(Locale['housing'], Locale['house_raided'], 'success', 3000)
                end
            end
        end)
    end
end)

RegisterCommand(commands.raid.name, function()
    if Config.robbery.enableRaid and isPolice() then
        local house = GetNearestHome()
        if IsNearMLODoor() then
            TriggerEvent('Housing:client:RaidDoor')
        elseif house then
            TriggerEvent('Housing:client:RaidDoor', house.identifier)
        else
            Notify(Locale['housing'], Locale['not_near_any_door'], 'error', 3000)
        end
    end
end)
