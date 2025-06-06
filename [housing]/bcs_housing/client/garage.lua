local types = {
    mo = {
        label = "Motorcycle",
        class = { 8 }
    },
    car = {
        label = "Car",
        class = { 0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11, 12, 13, 17, 18, 19, 20, 22 },
    },
    he = {
        label = "Helicopter",
        class = { 15 }
    },
    bi = {
        label = "Bike",
        class = { 13 }
    },
    pl = {
        label = "Plane",
        class = { 16 }
    },
    bo = {
        label = "Boat",
        class = { 14 }
    }
}

local options = {}

for k, v in pairs(types) do
    table.insert(options, { label = v.label, value = k })
end

function GetGarageData()
    local input = lib.inputDialog('Garage', {
        { type = 'input',        label = Locale['name'], required = true },
        { type = 'multi-select', label = Locale['type'], options = options, required = true },
    })

    if not input then
        return
    end

    return input
end

RegisterNUICallback('getGarageTypes', function(_, cb)
    cb(options)
end)

RegisterNUICallback('getHomeGarages', function(homeId, cb)
    local home = Homes[homeId]

    if home then
        local garages = lib.table.deepclone(home.garages)
        local allowed = false

        for i = 1, #garages do
            for j = 1, #garages[i].type do
                garages[i].type[j] = types[garages[i].type[j]].label
            end
        end

        if home.properties.realestate and isAgent(home.properties.realestate, 'garage') then
            allowed = true
        elseif isAdmin() or home:isKeyOwner('Garage') then
            allowed = true
        end
        cb({
            garages = garages,
            max = home.configuration.garages,
            allowed = allowed
        })
    end
end)

RegisterNUICallback('addGarage', function(data, cb)
    cb(1)
    local home = Homes[data.homeId]
    if home then
        local garage = GetGarageData()
        local data = {
            name = garage[1],
            type = garage[2]
        }
        if home.permission.moveGarage or isAdmin() then
            if home.garages then
                for i = 1, #home.garages do
                    if home.garages[i].name == data.name then
                        Notify(Locale['housing'], Locale['garage_exists'], 'error', 3000)
                        return
                    end
                end
            end

            ToggleNuiFrame(false)

            local entry = home:GetEntryCoords()
            local coords = GetVehiclePoint(data.type ~= nil)
            local dist = Config.MaxDistance.Garage

            if coords then
                repeat
                    Wait(100)
                    dist = #(ToVector3(coords) - ToVector3(entry))
                    if dist < Config.MaxDistance.Garage then
                        TriggerServerEvent('Housing:server:AddGarage', home.identifier, {
                            coords = coords,
                            name = data.name,
                            type = data.type,
                        })
                    else
                        Notify(Locale['housing'], Locale['point_too_far'], 'error', 3000)
                        coords = GetVehiclePoint(data.type ~= nil)
                    end
                until dist < Config.MaxDistance.Garage
            end
        end
    end
end)

RegisterNUICallback('deleteGarage', function(data, cb)
    cb(1)
    local home = Homes[data.homeId]
    if home then
        if home.permission.moveGarage or isAdmin() then
            ToggleNuiFrame(false)
            TriggerServerEvent('Housing:server:DeleteGarage', data.homeId, data.garage)
        end
    end
end)

RegisterNUICallback('moveGarage', function(data, cb)
    local home = Homes[data.homeId]
    if home then
        local entry = home:GetEntryCoords()
        if home.permission.moveGarage or isAdmin() then
            ToggleNuiFrame(false)
            local coords = GetVehiclePoint(true)
            local dist = Config.MaxDistance.Garage
            if coords then
                repeat
                    Wait(100)
                    dist = #(ToVector3(coords) - ToVector3(entry))
                    if dist < Config.MaxDistance.Garage then
                        data.garage.coords = coords
                        TriggerServerEvent('Housing:server:MoveGarage', data.homeId, data.garage)
                    else
                        Notify(Locale['housing'], Locale['point_too_far'], 'error', 3000)
                        coords = GetVehiclePoint(true)
                    end
                until dist < Config.MaxDistance.Garage
            end
        else
            Notify(Locale['housing'], Locale['not_allowed_to_movegarage'], 'error', 3000)
        end
    end
    cb(1)
end)

RegisterNetEvent('Housing:client:MoveGarage', function(homeId, data)
    local home = Homes[homeId]
    if home then
        home:MoveGarage(data)
    end
end)

RegisterNetEvent('Housing:client:DeleteGarage', function(homeId, data)
    local home = Homes[homeId]
    if home then
        home:DeleteGarage(data)
    end
end)

RegisterNetEvent('Housing:client:AddGarage', function(homeId, data)
    local home = Homes[homeId]
    if home then
        home:AddGarage(data)
    end
end)

local function IsVehicleAllowedToPark(vehicle, garageType)
    local class = GetVehicleClass(vehicle)
    if type(garageType) == 'table' then
        for j = 1, #garageType do
            for i = 1, #types[garageType[j]].class, 1 do
                if class == types[garageType[j]].class[i] then
                    return true
                end
            end
        end
    else
        for i = 1, #types[garageType].class, 1 do
            if class == types[garageType].class[i] then
                return true
            end
        end
    end
    return false
end

function GaragePrompt(data, identifier, garageType, garageId)
    CreateThread(function()
        local home = Homes[identifier]
        local coords = home.garages[garageId].coords
        coords = vec4(coords.x, coords.y, coords.z, coords.w)

        if home.properties.complex ~= 'Apartment' then
            debugPrint("[GaragePrompt]", "Garage of owned house " .. home.properties.owner)
        end
        if home.keys:HasKey(GetIdentifier(), 'Garage') or home:isTenant('garage') or (Apartments[home.identifier] and Apartments[home.identifier]:OwnApartment()) then
            if IsPedInAnyVehicle(PlayerPedId(), false) then
                HelpText(true, Locale["prompt_store_vehicle"])
            else
                HelpText(true, Locale["prompt_open_garage"])
            end
            while inZone do
                ::continue::
                Wait(2)
                if IsControlJustReleased(0, 38) then
                    if cache.vehicle and not IsVehicleAllowedToPark(cache.vehicle, garageType) then
                        Notify(Locale['housing'], Locale['vehicle_not_allowed'], 'error', 3000)
                        goto continue
                    end

                    HelpText(false)
                    if IsResourceStarted("garage_insurance") then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            exports["garage_insurance"]:storeHouseGarage(data.properties.name)
                        else
                            exports["garage_insurance"]:openHouseGarage(data.properties.name, data.properties.data
                                .garage)
                        end
                    elseif IsResourceStarted("jg-advancedgarages") then
                        local category = {
                            car = {
                                "mo", "car", "bi"
                            },
                            air = {
                                "he", "pl"
                            },
                            sea = {
                                "bo"
                            }
                        }

                        local vehicleType

                        for i = 1, #garageType do
                            for k, v in pairs(category) do
                                for j = 1, #v do
                                    if garageType[i] == v[j] then
                                        vehicleType = k
                                        break
                                    end
                                end
                            end
                        end

                        if not vehicleType then
                            print(('[^3HOUSING^0] ^3 VehicleType not found! Home %s garageId %s'):format(home.identifier,
                                garageId))
                            goto continue
                        end

                        local id = ('%s:%s'):format(home.identifier, garageId)

                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            TriggerEvent("jg-advancedgarages:client:store-vehicle", id, vehicleType)
                        else
                            TriggerEvent("jg-advancedgarages:client:open-garage", id, vehicleType, coords)
                        end
                    elseif IsResourceStarted("MojiaGarages") then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            TriggerEvent("MojiaGarages:client:storeVehicle")
                        else
                            TriggerEvent("MojiaGarages:client:openGarage")
                        end
                    elseif IsResourceStarted("okokGarage") then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            TriggerEvent("okokGarage:StoreVehiclePrivate")
                        else
                            TriggerEvent("okokGarage:OpenPrivateGarageMenu", GetEntityCoords(PlayerPedId()),
                                GetEntityHeading(PlayerPedId()))
                        end
                    elseif IsResourceStarted("rhd_garage") then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            exports.rhd_garage:storeVehicle({ garage = data.properties.name, type = { 'car', 'motorcycle', 'others' }, })
                        else
                            exports.rhd_garage:openMenu({
                                garage = data.properties.name,
                                type = { 'car', 'motorcycle', 'others' },
                                spawnpoint = { coords }
                            })
                        end
                    elseif IsResourceStarted("loaf_garage") then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            exports.loaf_garage:StoreVehicle("property", GetVehiclePedIsUsing(PlayerPedId()))
                        else
                            exports.loaf_garage:BrowseVehicles("property", coords)
                        end
                    elseif IsResourceStarted('fmid_garasi') then
                        data.label = data.properties.name
                        local grs = lib.callback.await('fmid_garasi:getgrs', false, 'lokasi')
                        if grs?[data.properties.name] then
                            TriggerEvent('fmid_garasi:aksesGarasi', data.properties.name)
                        else
                            local saveCustomGarage = lib.callback.await('fmid_garasi:addCustomGarasi', false,
                                data.properties.name, data)
                            TriggerEvent('fmid_garasi:aksesGarasi', data.properties.name)
                        end
                    elseif IsResourceStarted("cd_garage") then
                        if IsPedInAnyVehicle(PlayerPedId()) then
                            TriggerEvent("cd_garage:StoreVehicle_Main", 1, false)
                        else
                            SetEntityCoords(PlayerPedId(), ToVector3(coords) - vector3(0.0, 0.0, 1.0))
                            SetEntityHeading(PlayerPedId(), coords.w)
                            Wait(50)
                            TriggerEvent("cd_garage:PropertyGarage", "quick")
                        end
                    elseif IsResourceStarted('codem-garage') then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            TriggerEvent("codem-garage:storeVehicle", 'House Garage')
                        else
                            TriggerEvent("codem-garage:openHouseGarage")
                        end
                    elseif IsResourceStarted('ak47_qb_garage') then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            TriggerEvent("ak47_qb_garage:housing:storevehicle", data.properties.name, 'car')
                        else
                            TriggerEvent("ak47_qb_garage:housing:takevehicle", data.properties.name, 'car')
                        end
                    elseif IsResourceStarted("luke_garages") then
                        local garage = {
                            label = "Property - " .. data.properties.name,
                            type = "car",
                            zone = {
                                name = data.properties.name,
                                x = coords.x,
                                y = coords.y,
                                z = coords.z,
                                w = coords.w
                            },
                            spawns = { vec4(coords.x, coords.y, coords.z, coords.w) }
                        }
                        exports.luke_garages:setZone(garage)
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            TriggerEvent("luke_garages:StoreVehicle", { entity = GetVehiclePedIsUsing(PlayerPedId()) })
                        else
                            TriggerEvent("luke_garages:GetOwnedVehicles")
                        end
                    elseif IsResourceStarted('mGarage') then
                        local GarageId = data.properties.name
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            exports['mGarage']:SaveCar({
                                name = GarageId,
                                cartype = { 'automobile', 'bike' },
                                entity = GetVehiclePedIsIn(cache.ped),
                            })
                        else
                            exports['mGarage']:OpenGarage({
                                garagetype = 'garage',
                                intocar    = true,
                                carType    = { 'automobile', 'bike' },
                                name       = GarageId,
                                spawnpos   = {
                                    coords
                                },
                            })
                        end
                    elseif IsResourceStarted("esx_advancedgarage") then
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            local vehicle = GetVehiclePedIsUsing(PlayerPedId())
                            local vehProps = ESX.Game.GetVehicleProperties(vehicle)
                            exports.esx_advancedgarage:setGarage({
                                Spawner = ToVector3(coords),
                                Heading = coords.w
                            })
                            TriggerServerCallback("esx_advancedgarage:storeVehicle", function(valid)
                                if valid then
                                    TriggerServerEvent("esx_advancedgarage:setVehicleState", vehProps.plate, true)
                                    ESX.Game.DeleteVehicle(vehicle)
                                end
                            end, vehProps, data.properties.name)
                        else
                            exports.esx_advancedgarage:setGarage({
                                Spawner = ToVector3(coords),
                                Heading = coords.w
                            })
                            exports.esx_advancedgarage:OpenGarageMenu("civ", "cars")
                        end
                    elseif IsResourceStarted("esx_jb_eden_garage2") then
                        local garage = {
                            SpawnPoint = {
                                Pos = { x = coords.x, y = coords.y, z = coords.z },
                                Heading = coords.w
                            },
                            DeletePoint = ToVector3(coords)
                        }
                        if IsPedInAnyVehicle(PlayerPedId(), false) then
                            TriggerEvent("esx_eden_garage:StockVehicleMenu", "personal", data.properties.name)
                        else
                            TriggerEvent("esx_eden_garage:ListVehiclesMenu", garage, "personal", data.properties.name)
                        end
                    elseif IsResourceStarted('vms_garagesv2') then
                        exports['vms_garagesv2']:enterHouseGarage()
                    end
                    break
                end
            end

            while IsNuiFocused() do Wait(100) end
            Wait(1000)

            if inZone then
                local updatedData = GetHomeObject(identifier)
                GaragePrompt(updatedData, identifier, garageType, garageId)
            end
        end
    end)
end
