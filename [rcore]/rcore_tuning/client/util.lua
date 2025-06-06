local visualingShop = false

function ExclusiveDisplayHelpTextThisFrame(a, b)
    if Config.BeeplessHelpText then
        BeginTextCommandDisplayHelp(a)
        EndTextCommandDisplayHelp(0, false, false, 1)
    else
        DisplayHelpTextThisFrame(a, b)
    end
end

function DrawStageMarker(currentStep)
    if CurrentMinigameStageCoord then
        local scale = currentStep.scale or 2.0
        local zScale = 0.5

        local gameTimer = GetGameTimer()

        if MarkerHighAt < gameTimer and MarkerLowAt > gameTimer then
            zScale = 0.5 + ((MarkerLowAt-gameTimer)/2000) * 0.7
        end

        DrawMarker(
            1, 
            CurrentMinigameStageCoord.x, CurrentMinigameStageCoord.y, CurrentMinigameStageCoord.z, 
            0.0, 0.0, 0.0, 
            0.0, 0.0, 0.0, 
            scale, scale, zScale,
            240, 200, 80, 150, 
            false, false, false, false, nil, nil, false
        )
    end
end

function DrawStageFallbackMarker(coords)
    local f,groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, 0)
    DrawMarker(
        1, 
        coords.x, coords.y, groundZ, 
        0.0, 0.0, 0.0, 
        0.0, 0.0, 0.0, 
        MinigameStageFallbackMarkerHuge.range*2, MinigameStageFallbackMarkerHuge.range*2, 0.5,
        240, 200, 80, 150, 
        false, false, false, false, nil, nil, false
    )
end

RegisterCommand("tuningvisualise", function()
    if not CurrentShop then return end

    if visualingShop then 
        visualingShop = false 
        return 
    end

    visualingShop = true
    while visualingShop do
        if not CurrentShop then 
            visualingShop = false
        end
        Wait(0)
        DrawStockpileMarkers()
        DrawVisualisationCheckpoint(TuningShops[CurrentShop].officeCoords, "Office menu")
        DrawVisualisationCheckpoint(TuningShops[CurrentShop].coords, "Coords")
        if TuningShops[CurrentShop].bossMenuCoords then
            DrawVisualisationCheckpoint(TuningShops[CurrentShop].bossMenuCoords, "Boss menu")
        end
    end
end, false)

function DrawStockpileMarkers()
    for stockpileName, stockpileData in pairs(TuningShops[CurrentShop].stockpiles) do
        if type(stockpileData) == "table" then
            for _, stockpilePos in pairs(stockpileData) do
                DrawVisualisationCheckpoint(stockpilePos, "Stockpile: " .. tostring(stockpileName))
            end
        else
            DrawVisualisationCheckpoint(stockpileData, "Stockpile: " .. tostring(stockpileName))
        end
    end
end

function DrawVisualisationCheckpoint(coords, textToDraw)
    DrawMarker(
        27, 
        coords.x, coords.y, coords.z + 0.087, 
        0.0, 0.0, 0.0, 
        0.0, 0.0, 0.0, 
        1.0, 1.0, 1.0, 
        255, 0, 0, 255, 
        false, false, false, true, nil, nil, false
    )

    DrawMarker(
        0,
        coords.x, coords.y, coords.z + 0.75,
        0.0, 0.0, 0.0,
        0.0, 0.0, 0.0,
        0.5, 0.5, 0.5, 
        255, 0, 0, 100,
        true, true
    )

    DrawTextOnScreen(coords.x, coords.y, coords.z, textToDraw)
end