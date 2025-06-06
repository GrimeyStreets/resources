CurrentHome, Homes, Flats, Individuals, Apartments, StarterApartment = {}, {}, {}, {}, {}, {}
inZone = false
local isLoading = true

RegisterNetEvent('Housing:initialize', function()
    if Config.EnableFurnitureShop and Config.EnableFurnish then
        local store = Config.FurnitureShop
        local IkeaZone = lib.zones.box({
            coords = store.coords,
            size = store.size,
            rotation = store.rotation,
            debug = Config.debug,
            onEnter = function()
                inZone = true
                HelpText(true, Locale['prompt_furniture'])
                CreateThread(function()
                    local function FurniturePrompt()
                        while inZone do
                            Wait(2)
                            if IsControlJustReleased(0, 38) then
                                HelpText(false)
                                OpenFurnitureMenu('furniture_shop')
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
            end,
        })
        if Config.EnableMarkers.enable then
            lib.points.new({
                coords = store.coords,
                distance = 3,
                nearby = function()
                    DrawMarker(Config.EnableMarkers.type, store.coords, 0.0, 0.0, 0.0, 0, 0.0, 0.0,
                        Config.EnableMarkers.size.x, Config.EnableMarkers.size.y, Config.EnableMarkers.size.z,
                        Config.EnableMarkers.color.r, Config.EnableMarkers.color.g, Config.EnableMarkers.color.b, 100,
                        false, true, 2, false, false, false, false)
                end
            })
        end
        createBlip('furniture-store', store)
    end
    for _, v in pairs(commands) do
        if ((v.debug and Config.debug) or not v.debug) and not v.disabled then
            TriggerEvent('chat:addSuggestion', '/' .. v.name, v.help, v.params)
        end
    end

    while not PlayerData or (PlayerData and (GetIdentifier()) == nil) or isLoading do
        Wait(100)
    end
    RefreshFlatBlip()
    local admin = isAdmin()
    for homeId, _ in pairs(Homes) do
        RefreshHomeBlip(homeId, admin)
    end
end)

CreateThread(function()
    StarterApartment = lib.callback.await("apartments:GetStarterApartment")
    local list = lib.callback.await('Housing:server:GetHomes', false)
    LoadHomeList(list)
end)

function LoadHome(home)
    if not Homes[home.identifier] then
        Homes[home.identifier] = Home:new(table.clone(home))
        if Homes[home.identifier].properties.complex == 'Flat' then
            local room = Homes[home.identifier]
            local flatId = room.properties.data.flat.identifier
            if not Flats[flatId] then
                Flats[flatId] = Flat:new(room)
            else
                Flats[flatId]:AddRoom(room)
            end
            Homes[home.identifier].flat = flatId
        elseif Homes[home.identifier].properties.complex == 'Apartment' then
            Apartments[home.identifier] = Apartment:new(home)
        else
            Individuals[home.identifier] = Individual:new(Homes[home.identifier])
        end
        debugPrint('[init:loadHomes]', Homes[home.identifier].properties.name, Homes[home.identifier].identifier)
    end
end

function LoadHomeList(homes)
    while loadingFurnitures do
        Wait(500)
    end
    debugPrint('[init:loadHomes]', 'Loading home')
    for i = 1, #homes do
        LoadHome(Unminify(homes[i]))
    end
    isLoading = false
end

RegisterNetEvent('Housing:client:LoadHome', function(home)
    LoadHome(home)
    RefreshHomeBlip(home.identifier, isAdmin())
    RefreshFlatBlip()
end)

RegisterNetEvent('Housing:client:OnLogout', function()
    CurrentHome = {}
    LocalPlayer.state:set('interiorEntrance', nil)
    LocalPlayer.state:set('CurrentHome', {})
    LocalPlayer.state:set('isInsideHome', false)
    inside = false
    for homeId, home in pairs(Homes) do
        home:DestroyZones()
        home:DeleteFurnitures()
        home:DeleteStoragesZone()
        home:DeleteWardrobesZone()
        if home.properties.data and home.properties.data.signboard then
            DeleteSpawnedSign(homeId)
        end
    end
end)
