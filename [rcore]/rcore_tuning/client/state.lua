TuningInstalled = {}
TuningOrdered = {}

CurrentShop = nil
IsControllingCurrentShop = false
IsInsideShop = false

local playerJobName = nil
local isBoss = nil
local lastJobCheck = 0

Citizen.CreateThread(function()
    while true do
        if CurrentShop and IsControllingCurrentShop then
            Wait(100)
        else
            Wait(2000)
        end

        local nowTime = GetGameTimer()

        if nowTime - lastJobCheck > 1000 then
            lastJobCheck = nowTime
            playerJobName, isBoss = GetPlayersJobName()
            playerJobGrade = GetPlayersJobGrade()
        end

        RecomputeShopZone()
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(0)
        
        local anyDrawn = false

        for n, shop in pairs(TuningShops) do
            if shop.interiorless and shop.interiorless.debug then
                anyDrawn = true
                DrawMarker(
                    28, 
                    shop.coords, 
                    0.0, 0.0, 0.0, 
                    0.0, 0.0, 0.0, 
                    shop.interiorless.radius, shop.interiorless.radius, shop.interiorless.radius, 
                    255, 255, 255, 100, 
                    false, false, false, false, nil, nil, false
                )
            end
        end

        if not anyDrawn then
            break
        end
    end
end)

RegisterCommand('tuningdebug', function()
    print("TUNING DEBUG")
    print("Current job: " .. tostring(playerJobName))
    print("Is Boss: " .. tostring(isBoss))
    if CurrentShop then
        print("CurrentShop: " .. tostring(CurrentShop))
        print("Interior ID: " .. tostring(GetInteriorWithEntity(TuningShops[CurrentShop].coords)))
        if TuningShops[CurrentShop] then
            print("Shop job: " .. tostring(TuningShops[CurrentShop].job))
        else
            print("Shop job: none")
        end
    else
        print("CurrentShop: none")
        print("Shop job: none")
    end

    print("--------")
end)

function RecomputeShopZone()
    local ped = PlayerPedId()
    local interior = GetInteriorFromEntity(ped)
    local nowIsInShop = nil
    local closeZone = nil
    local isControlling = false

    local pedPos = GetEntityCoords(PlayerPedId())
    for n, shop in pairs(TuningShops) do
        if #(shop.coords - pedPos) < 100.0 then
            closeZone = n
            
            if not Config.UseJobs or (shop.job and playerJobName and shop.job == playerJobName) then
                if (shop.minGrade and playerJobGrade and playerJobGrade >= shop.minGrade) or (not shop.minGrade) then
                    isControlling = true
                end

                if not Config.UseJobs then
                    isControlling = true
                end
            end
            
            if shop.interiorless then
                local distToShop = #(pedPos - shop.coords)

                if distToShop <= shop.interiorless.radius then
                    nowIsInShop = true
                end
            else
                if not shop.interiorByCoordsSet then
                    local currentShopCoords = shop.coords
                    local currentShopInterior = GetInteriorWithEntity(currentShopCoords)

                    if currentShopInterior > 0 then
                        TuningShops[n].interiors[currentShopInterior] = true
                        shop.interiorByCoordsSet = true
                    end
                end

                if TuningShops[n].interiors[interior] then
                    nowIsInShop = true
                end
            end

            break
        end
    end
    
    IsControllingCurrentShop = isControlling
    CurrentShop = closeZone
    IsInsideShop = nowIsInShop

    if nowIsInShop and #(TuningShops[CurrentShop].coords - pedPos) < 40.0 then
        AdjustCoordsToGroundLevel(CurrentShop)
    end
end

function AdjustCoordsToGroundLevel(shopName)
    if TuningShops[shopName] and not TuningShops[shopName].coordsAdjusted then
        local shop = TuningShops[shopName]
        TuningShops[shopName].coordsAdjusted = true

        TuningShops[shopName].officeCoords = GetGroundCoordForCp(TuningShops[shopName].officeCoords)
        TuningShops[shopName].stockpiles.bonnet = GetGroundCoordForCp(TuningShops[shopName].stockpiles.bonnet)
        TuningShops[shopName].stockpiles.exhaust = GetGroundCoordForCp(TuningShops[shopName].stockpiles.exhaust)
        TuningShops[shopName].stockpiles.paintBooth = GetGroundCoordForCp(TuningShops[shopName].stockpiles.paintBooth)
        TuningShops[shopName].stockpiles.brakes = GetGroundCoordForCp(TuningShops[shopName].stockpiles.brakes)
        TuningShops[shopName].stockpiles.paint = GetGroundCoordForCp(TuningShops[shopName].stockpiles.paint)
        TuningShops[shopName].stockpiles.wheels = GetGroundCoordForCp(TuningShops[shopName].stockpiles.wheels)

        if TuningShops[shopName].bossMenuCoords then
            TuningShops[shopName].bossMenuCoords = GetGroundCoordForCp(TuningShops[shopName].bossMenuCoords)
        end
    end
end

function GetGroundCoordForCp(pos)

    if type(pos) == 'vector3' then
        local f, z = GetGroundZFor_3dCoord(pos.x, pos.y, pos.z + 0.5)

        if f then
            return vector3(pos.x, pos.y, z)
        else
            return pos
        end
    else
        newCoords = {}
        for coordsIndex, coords in pairs(pos) do
            local f, z = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z + 0.5)
            newCoords[coordsIndex] = vector3(coords.x, coords.y, (f and z) or coords.z)
        end
        return newCoords
    end
end

function GetInteriorWithEntity(currentShopCoords)
    RequestModel(`prop_amb_phone`)
    while not HasModelLoaded(`prop_amb_phone`) do
        Wait(0)
    end

    local positionHelperObject = CreateObject(`prop_amb_phone`, currentShopCoords.x, currentShopCoords.y, currentShopCoords.z, false, false, false)
    
    Wait(0)

    local interiorId = GetInteriorFromEntity(positionHelperObject)

    DeleteEntity(positionHelperObject)

    return interiorId
end

RegisterCommand('tuningoffice', function()
    if IsControllingCurrentShop then
        local endTime = GetGameTimer() + 5000

        Citizen.CreateThread(function()
            local ped = PlayerPedId()

            while (endTime - GetGameTimer()) > 0 do
                local coords = GetEntityCoords(ped)

                DrawLine(
                    coords, 
                    TuningShops[CurrentShop].officeCoords + vector3(0.0, 0.0, 1.0), 
                    255, 255, 255, 200
                )
                Wait(0)
            end
        end)
    end
end, false)