RegisterNetEvent('Housing:logout', function()
    if inside then
        if CurrentHome.type == 'shell' then
            ExitHome()
        end
        TriggerServerEvent('Housing:LogoutLocation')
    else
        Notify(Locale['housing'], Locale['not_inside_home'], 'error', 3000)
    end
end)

RegisterNetEvent('apartments:client:setupSpawnUI', function(data, new)
    TriggerEvent('Housing:client:SetupSpawnUI', data, new)
end)

local function StarterApartmentMenu(apartments)
    local options = {}
    for i = 1, #apartments, 1 do
        local apartment = apartments[i]
        table.insert(options, {
            title = apartment.name,
            onSelect = function()
                TriggerServerEvent('Housing:server:CreateApartment', apartment.identifier)
            end
        })
    end
    lib.registerContext({
        id = 'starter_apartment',
        title = 'Starter Apartment',
        canClose = false,
        options = options
    })
    lib.showContext('starter_apartment')
end

RegisterNetEvent('Housing:client:SetupSpawnUI', function(cData, new)
    if cData and Config.UseStarterApartment then
        local result = lib.callback.await('apartments:GetOwnedApartment', false, cData.citizenid)
        if result and next(result) or #result > 0 then
            if IsResourceStarted('qb-spawn') then
                for i = 1, #result, 1 do
                    local apartment = result[i]
                    local home = Homes[apartment.identifier]
                    apartment.entry = home.properties.entry
                    apartment.name = home.properties.name
                    apartment.label = home.properties.name
                end
                TriggerEvent('qb-spawn:client:setupSpawns', cData, new, apartment, Config.UseStarterApartment)
                TriggerEvent('qb-spawn:client:openUI', true)
            end
        else
            local appartments = lib.callback.await('apartments:GetStarterApartment', false)
            if IsResourceStarted('qb-spawn') then
                local data = {}
                for i = 1, #appartments, 1 do
                    local apartment = appartments[i]
                    data[apartment.identifier] = {
                        name = apartment.name,
                        label = apartment.name
                    }
                end
                TriggerEvent('qb-spawn:client:setupSpawns', cData, new, data, Config.UseStarterApartment)
                TriggerEvent('qb-spawn:client:openUI', true)
            else
                StarterApartmentMenu(appartments)
            end
        end
    elseif cData then
        if IsResourceStarted('qb-spawn') then
            TriggerEvent('qb-spawn:client:setupSpawns', cData, new, nil, Config.UseStarterApartment)
            TriggerEvent('qb-spawn:client:openUI', true)
        end
    end
    TriggerEvent('um-spawn:client:startSpawnUI', true)
end)

RegisterNetEvent('Housing:client:BlipAlert', function(homeId)
    local home = Homes[homeId]
    local coords = home.properties.complex == 'Individual' and home.properties.entry or home.properties.data.flat.coords
    local alpha = 250
    local houseRobberyBlip = AddBlipForRadius(coords.x, coords.y, coords.z, 30.0)

    SetBlipHighDetail(houseRobberyBlip, true)
    SetBlipColour(houseRobberyBlip, 1)
    SetBlipAlpha(houseRobberyBlip, alpha)
    SetBlipAsShortRange(houseRobberyBlip, true)

    Notify(Locale['housing'], string.format(Locale['robbery_in_progress'], CurrentHome.name), 'warning', 5000)

    while alpha ~= 0 do
        Citizen.Wait(30 * 4)
        alpha = alpha - 1
        SetBlipAlpha(houseRobberyBlip, alpha)

        if alpha == 0 then
            RemoveBlip(houseRobberyBlip)
            return
        end
    end
end)

RegisterCommand(commands.renameflat.name, function(src, args)
    local home = GetNearestHome('Flat')

    if not home then return end
    if PlayerData and PlayerData.job and PlayerData.job.name ~= home.properties.realestate and not isAdmin() then
        return Notify(Locale['housing'], Locale['not_allowed'], 'error', 3000)
    end

    local input = lib.inputDialog('Rename the flat', {
        { type = 'input', default = home.properties.data.flat.name }
    })

    if input[1] then
        TriggerServerEvent('Housing:server:RenameFlat', home.identifier, input[1])
    end
end)

if Config.debug then
    local debug = {}

    RegisterCommand('testshell', function(src, args)
        local x, y, z = table.unpack(GetEntityCoords(PlayerPedId()))
        debug.model = args[1]
        debug.shell = CreateObjectNoOffset(debug.model, x, y, z - 100, false, false, false)
        FreezeEntityPosition(debug.shell, true)
        SetEntityCoords(PlayerPedId(), x, y, z - 100)
    end)

    RegisterCommand('deleteshell', function()
        DeleteEntity(debug.shell)
        debug = {}
    end)

    RegisterCommand('getoffset', function()
        local coords = GetEntityCoords(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        local houseCoords = GetEntityCoords(debug.shell)
        local xdist = coords.x - houseCoords.x
        local ydist = coords.y - houseCoords.y
        local zdist = coords.z - houseCoords.z
        print('X: ' .. xdist)
        print('Y: ' .. ydist)
        print('Z: ' .. zdist)
        TriggerServerEvent('Housing:server:Writeoffset', debug.model, xdist, ydist, zdist, heading)
    end)

    RegisterCommand('addIPL', function(src, args, raw)
        local name = args[1]
        table.remove(args, 1)
        local label = table.concat(args, ' ')
        local coords = GetEntityCoords(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        TriggerServerEvent('Housing:server:WriteIPL', label, name, coords.x, coords.y, coords.z, heading)
    end)
end
