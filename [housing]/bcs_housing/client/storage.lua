RegisterNUICallback('getHomeStorages', function(homeId, cb)
    local home = Homes[homeId]
    if home then
        local storages = home:GetStorages() or {}
        local allowed = false
        if home.properties.realestate and isAgent(home.properties.realestate, 'storage') then
            allowed = true
        elseif isAdmin() then
            allowed = true
        end
        cb({
            storages = storages,
            max = home.configuration.storage,
            allowed = allowed
        })
    end
end)

RegisterNUICallback('moveStorage', function(data, cb)
    cb(1)
    local home = Homes[data.homeId]
    if home then
        ToggleNuiFrame(false)
        local done = false
        repeat
            local hit, _, endCoords = lib.raycast.cam()
            if hit then
                DrawMarker(1, endCoords.x, endCoords.y, endCoords.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 100,
                    100,
                    255, false, true, 2, false,
                    false, false, false)
            end
            if IsControlJustReleased(0, 38) then
                local homecoords = GetCenterPoint(home)
                local coords = {
                    x = round(endCoords.x - homecoords.x, 4),
                    y = round(endCoords.y - homecoords.y, 4),
                    z = round(endCoords.z - homecoords.z, 4),
                }
                local area = LocalPlayer.state.isInsideArea and not LocalPlayer.state.isInsideHome
                home:MoveStorage(data.storageId, coords, area)
                done = true
                break
            end
        until done
    end
end)

RegisterNUICallback('deleteStorage', function(data, cb)
    local home = Homes[tostring(data.homeId)]
    if home then
        local result = lib.callback.await('Housing:server:DeleteStorage', false, data.homeId, data.storageId)
        cb(result)
    end
end)

RegisterNUICallback('addStorage', function(data, cb)
    cb(1)
    local home = Homes[data.identifier]
    if home then
        if not isAdmin() then return end
        local storages = LocalPlayer.state.CurrentApartment and #Apartments[data.identifier]:GetStorages() or
            #home.properties.storages
        if home and storages < home.configuration.storage then
            ToggleNuiFrame(false)
            home:AddStorage(nil, data.weight, data.slots, area)
        else
            Notify(Locale['housing'], Locale['storage_max_exceeded'], 'error', 3000)
        end
    end
end)

RegisterNUICallback('addSetStorage', function(data, cb)
    cb(1)
    local home = Homes[data.identifier]
    if LocalPlayer.state.isInsideHome or LocalPlayer.state.isInsideArea then
        local storages = LocalPlayer.state.CurrentApartment and #Apartments[data.identifier]:GetStorages() or
            #home.properties.storages
        if not isAdmin() then return end
        if home and storages < home.configuration.storage then
            ToggleNuiFrame(false)
            HelpText(true, Locale['prompt_add_storage'])
            local done = false
            repeat
                local hit, _, endCoords = lib.raycast.cam()
                if hit then
                    DrawMarker(1, endCoords.x, endCoords.y, endCoords.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255,
                        100,
                        100,
                        255, false, true, 2, false,
                        false, false, false)
                end
                if IsControlJustReleased(0, 38) and hit then
                    local homecoords = GetCenterPoint(home)
                    local coords = {
                        x = round(endCoords.x - homecoords.x, 4),
                        y = round(endCoords.y - homecoords.y, 4),
                        z = round(endCoords.z - homecoords.z, 4),
                    }
                    local area = LocalPlayer.state.isInsideArea and not LocalPlayer.state.isInsideHome
                    home:CreateStorage(nil, coords, data.weight, data.slots, area)
                    HelpText(false)
                    done = true
                    break
                end

                if IsControlJustReleased(0, 73) then
                    HelpText(false)
                    done = true
                    break
                end
            until done
        else
            Notify(Locale['housing'], Locale['storage_max_exceeded'], 'error', 3000)
        end
    else
        Notify(Locale['housing'], Locale['not_inside_home'], 'error', 3000)
    end
end)

RegisterNUICallback('saveStorages', function(data, cb)
    local home = Homes[data.identifier]
    if home then
        ToggleNuiFrame(false)
        TriggerServerEvent('Housing:server:SaveStorages', data)
    end
    cb(1)
end)

RegisterNetEvent('Housing:client:RefreshStorage', function(homeId, data, aptId, update)
    local home = Homes[homeId]
    if home then
        local found = false
        if aptId then
            local apt = Apartments[homeId]
            if update then
                apt:MoveStorage(data.id, data.coords, data.area)
            else
                apt:CreateStorage(data, aptId)
            end
        else
            if home.properties.storages then
                for i = 1, #home.properties.storages do
                    if home.properties.storages[i].id == data.id then
                        found = true
                        home.properties.storages[i] = data
                        break
                    end
                end
                if not found then
                    home.properties.storages[#home.properties.storages + 1] = data
                end
            end
        end
        if home.properties.complex == 'mlo' or (CurrentHome and CurrentHome.identifier == homeId and (not aptId or aptId == LocalPlayer.state.CurrentApartment)) then
            home:SetStoragesZone(aptId)
        end
    end
end)

RegisterNetEvent('Housing:client:DeleteStorage', function(homeId, storageId, aptId)
    local home = Homes[homeId]
    home:DeleteStorage(storageId, aptId)
end)

RegisterNetEvent('Housing:client:SaveStorages', function(homeId, storages)
    local home = Homes[homeId]
    if home then
        home:SaveStorages(storages)
    end
end)

AddEventHandler('Housing:Storage', function(data)
    if data then
        local home = Homes[data.home]
        local hasKey = home.keys:HasKey(GetIdentifier(), 'Storage') or home:isTenant('storage')

        if not Config.robbery.storageRobbery and not hasKey and (not isRaiding and not isPolice()) then
            Notify(Locale['housing'], Locale['no_owned_house'], 'error', 3000)
            return
        end

        local function openStorage(data)
            if Config.Inventory == "ox_inventory" then
                if home.properties.complex == 'Apartment' then
                    local owner = Apartments[home.identifier]:GetApartmentById(LocalPlayer.state.CurrentApartment).owner
                    exports.ox_inventory:openInventory('stash', { id = data.identifier, owner = owner })
                else
                    exports.ox_inventory:openInventory('stash', data.identifier)
                end
            elseif Config.Inventory == 'qs-inventory' then
                TriggerServerEvent("inventory:server:OpenInventory", "stash", "Stash_" .. data.identifier,
                    {
                        maxweight = data.weight or Config.FurnitureStorage.weight,
                        slots = data.slots or
                            Config.FurnitureStorage.slots
                    })
                TriggerEvent("inventory:client:SetCurrentStash", "Stash_" .. data.identifier)
            elseif Config.Inventory == 'qb-inventory' or Config.Inventory == 'lj-inventory' then
                TriggerServerEvent("inventory:server:OpenInventory", "stash", data.identifier,
                    {
                        maxweight = data.weight or Config.FurnitureStorage.weight,
                        slots = data.slots or
                            Config.FurnitureStorage.slots
                    })
                TriggerServerEvent("InteractSound_SV:PlayOnSource", "StashOpen", 0.4)
                TriggerEvent("inventory:client:SetCurrentStash", data.identifier)
            elseif Config.Inventory == 'ak47_inventory' then
                -- Add support for ak47_inventory
                exports['ak47_inventory']:OpenInventory({
                    identifier = "stash:" .. data.identifier,
                    label = "House Stash",
                    type = "stash",
                    maxWeight = data.weight or Config.FurnitureStorage.weight,
                    slots = data.slots or Config.FurnitureStorage.slots,
                })
            elseif Config.Inventory == 'chezza' then
                TriggerEvent("inventory:openHouse", data.owner, data.identifier, "House Stash", data.weight)
            elseif Config.Inventory == 'core_inventory' then
                TriggerServerEvent('core_inventory:server:openInventory', string.sub(data.identifier, 9), "stash")
            elseif Config.Inventory == 'mInventory' or Config.Inventory == 'tgiann' then
                local name = data.identifier
                local maxweight = data.weight or Config.FurnitureStorage.slots
                local slot = data.slots or Config.FurnitureStorage.slots
                TriggerServerEvent('inventory:server:OpenInventory', 'stash', name,
                    { maxweight = maxweight, slots = slot })
            else
                TriggerServerEvent('Housing:server:OpenStash', data.identifier, data.weight, data.slots)
            end
        end
        if hasKey or (isRaiding and isPolice()) or not Config.robbery.storageLockpick then
            openStorage(data)
        elseif Config.robbery.storageLockpick then
            if IsResourceStarted('qb-lockpick') then
                TriggerEvent('qb-lockpick:client:openLockpick', function(result)
                    if result then
                        TriggerServerEvent('Housing:removeItem', Config.robbery.lockpickItem)
                        openStorage(data)
                    else
                        Notify(Locale['housing'], Locale['failed_lockpick'], 'error', 3000)
                        TriggerServerEvent('Housing:removeItem', Config.robbery.lockpickItem)
                    end
                end)
            elseif IsResourceStarted('ps-ui') then
                exports['ps-ui']:Circle(function(success)
                    if success then
                        TriggerServerEvent('Housing:removeItem', Config.robbery.lockpickItem)
                        openStorage(data)
                    else
                        Notify(Locale['housing'], Locale['failed_lockpick'], 'error', 3000)
                        TriggerServerEvent('Housing:removeItem', Config.robbery.lockpickItem)
                    end
                end, 2, 20)
            else
                local result = exports['lockpick']:startLockpick()
                if result then
                    TriggerServerEvent('Housing:removeItem', Config.robbery.lockpickItem)
                    openStorage(data)
                else
                    Notify(Locale['housing'], Locale['failed_lockpick'], 'error', 3000)
                    TriggerServerEvent('Housing:removeItem', Config.robbery.lockpickItem)
                end
            end
        end
    end
end)

function StoragePrompt(data)
    CreateThread(function()
        HelpText(true, Locale['prompt_open_storage'])
        while inZone do
            Wait(2)
            if IsControlJustReleased(0, 38) then
                HelpText(false)
                data.owner = Homes[data.home].properties.owner
                TriggerEvent('Housing:Storage', data)
                break
            end
        end
    end)
end
