local previewEntrance, previewObject, initialCoords

RegisterNetEvent("Housing:client:ExitCatalogue", function()
    inside = false
    DoScreenFadeOut(500)
    while not IsScreenFadedOut() do Wait(10) end
    SetEntityCoords(cache.ped, initialCoords)
    if previewObject then
        DeleteEntity(previewObject)
    end
    Wait(500)
    DoScreenFadeIn(500)
    initialCoords = nil
    previewObject = nil
    if Config.target then
        RemoveTargetZone("HouseCatalogueEntrance")
    else
        previewEntrance:remove()
    end
end)

function CreateInsideEntrance(entry)
    if Config.target then
        AddTargetBoxZone("HouseCatalogueEntrance", {
            coords = entry,
            length = 2.0,
            width = 2.0,
            heading = GetEntityHeading(previewObject),
            debugPoly = Config.debug,
            minZ = entry.z - 1.0,
            maxZ = entry.z + 2.0
        }, {
            options = {
                {
                    icon = "fas fa-door-open",
                    label = Locale['exit_preview_catalogue'],
                    action = function()
                        TriggerEvent("Housing:client:ExitCatalogue")
                    end
                },
            },
            distance = 3.5
        })
    else
        previewEntrance = lib.zones.box({
            coords = entry,
            size = vec3(2.0, 2.0, 3.0),
            rotation = GetEntityHeading(object),
            debug = Config.debug,
            onEnter = function()
                HelpText(true, Locale["prompt_exit_home"])
                inZone = true
                CreateThread(function()
                    while inZone do
                        if IsControlJustPressed(0, 38) then
                            HelpText(false)
                            TriggerEvent("Housing:client:ExitCatalogue")
                            break
                        end
                        Wait(0)
                    end
                end)
            end,
            onExit = function()
                HelpText(false)
                inZone = false
            end
        })
    end
end

RegisterNUICallback('previewCatalogue', function(data, cb)
    initialCoords = GetEntityCoords(cache.ped)
    ToggleNuiFrame(false)

    if data.type == 'shell' then
        for shell in pairs(Shells) do
            if shell == data.interior then
                DoScreenFadeOut(500)
                while not IsScreenFadedOut() do Wait(10) end
                local entry = {}
                local coords = GetEntityCoords(cache.ped)
                if not DoesModelExists(shell) then
                    print('[HOUSING] ^1Shell does not exists! Make sure it is loaded', shell)
                    DoScreenFadeIn(500)
                    break
                end
                RequestModel(shell)
                while not HasModelLoaded(shell) do Wait(1000) end
                previewObject = CreateObjectNoOffset(shell, coords.x, coords.y, coords.z + 200.0, false, false, false)
                FreezeEntityPosition(previewObject, true)
                entry = GetOffsetFromEntityInWorldCoords(previewObject, Shells[shell])
                SetEntityCoordsNoOffset(PlayerPedId(), entry)
                Wait(500)
                DoScreenFadeIn(500)
                inside = true
                ToggleSyncTime()
                CreateInsideEntrance(entry)
                break
            end
        end
    elseif data.type == 'ipl' then
        for i = 1, #CustomizeIPL do
            if CustomizeIPL[i].name == data.interior then
                entry = CustomizeIPL[i].entry
                SetEntityCoordsNoOffset(PlayerPedId(), entry)
                SetEntityHeading(PlayerPedId(), CustomizeIPL[i].entry.w)
                inside = true
                CreateInsideEntrance(entry)
                break
            end
        end
    end

    cb({})
end)

RegisterNUICallback('getHouseCatalogues', function(data, cb)
    local result = lib.callback.await("Housing:server:GetCatalogues", false)
    cb(result)
end)

RegisterNUICallback('getCatalogue', function(interior, cb)
    local result = lib.callback.await("Housing:server:GetCatalogue", false, interior)
    cb(result)
end)

RegisterNUICallback('editCatalogue', function(data, cb)
    local result = lib.callback.await('Housing:server:UpdateCatalogue', false, data)
    cb(result)
end)

RegisterNUICallback('createCatalogue', function(data, cb)
    local result = lib.callback.await('Housing:server:AddCatalogue', false, data)
    cb(result)
end)

RegisterNUICallback('deleteCatalogue', function(data, cb)
    local result = lib.callback.await("Housing:server:DeleteCatalogue", false, data.interior, data.type)
    if result then
        ToggleNuiFrame(false)
    end
    cb(result)
end)

RegisterNUICallback('getCatalogueOptions', function(data, cb)
    local list = {}
    if data == 'shell' then
        for shell in pairs(Shells) do
            list[#list + 1] = shell
        end
    elseif data == 'ipl' then
        for i = 1, #CustomizeIPL do
            list[#list + 1] = CustomizeIPL[i].name
        end
    end

    cb(list)
end)

CreateThread(function()
    if Config.EnableCatalogue then
        if Config.target then
            AddTargetBoxZone('house-catalogue', {
                coords = Config.Catalogue.coords,
                length = Config.Catalogue.size.x,
                width = Config.Catalogue.size.y,
                heading = Config.Catalogue.rotation,
                debugPoly = Config.debug,
                minZ = Config.Catalogue.coords - 1.0,
                maxZ = Config.Catalogue.coords + 2.0
            }, {
                options = {
                    {
                        label = Locale['open_catalogue'],
                        icon = 'fa-solid fa-home',
                        action = function()
                            HelpText(false)
                            ToggleNuiFrame(true)
                            SendReactMessage('setPage', 'catalogue')
                        end,
                    },
                },
                distance = 3.5
            })
        else
            local CatalogueZone = lib.zones.box({
                coords = Config.Catalogue.coords,
                size = Config.Catalogue.size,
                rotation = Config.Catalogue.rotation,
                debug = Config.debug,
                onEnter = function()
                    inZone = true
                    HelpText(true, Locale['prompt_open_catalogue'])
                    CreateThread(function()
                        local function FurniturePrompt()
                            while inZone do
                                Wait(2)
                                if IsControlJustReleased(0, 38) then
                                    HelpText(false)
                                    ToggleNuiFrame(true)
                                    SendReactMessage('setPage', 'catalogue')
                                    break
                                end
                            end
                        end
                        FurniturePrompt()
                    end)
                end,
                onExit = function()
                    HelpText(false)
                    inZone = false
                end
            })
        end
        if Config.EnableMarkers.enable then
            lib.points.new({
                coords = Config.Catalogue.coords,
                distance = 3,
                nearby = function()
                    DrawMarker(Config.EnableMarkers.type, Config.Catalogue.coords, 0.0, 0.0, 0.0, 0, 0.0, 0.0,
                        Config.EnableMarkers.size.x, Config.EnableMarkers.size.y, Config.EnableMarkers.size.z,
                        Config.EnableMarkers.color.r, Config.EnableMarkers.color.g, Config.EnableMarkers.color.b, 100,
                        false, true, 2, false, false, false, false)
                end
            })
        end

        createBlip('house-catalogue', Config.Catalogue)
    end
end)
