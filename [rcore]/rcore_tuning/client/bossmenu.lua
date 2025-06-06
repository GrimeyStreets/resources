if Config.BossMenuEnabled then
    Citizen.CreateThread(function()
        AddTextEntry('TUN_BOSSMENU', '~INPUT_PICKUP~ Open')

        while true do
            local playerJobName, isBoss = GetPlayersJobName()
            if CurrentShop and TuningShops[CurrentShop] and (playerJobName == TuningShops[CurrentShop].job and isBoss) then
                if TuningShops[CurrentShop].bossMenuCoords then
                    local dist = #(CoordsPed - TuningShops[CurrentShop].bossMenuCoords)
                    if dist <= 1.5 then
                        DrawOfficeCheckpoint(TuningShops[CurrentShop].bossMenuCoords)
                        HandleInBossMenuCheckpoint(playerJobName)
                    elseif dist <= 20.0 then
                        DrawOfficeCheckpoint(TuningShops[CurrentShop].bossMenuCoords)
                    else
                        Wait(5000)
                    end
                end
                Wait(0)
            else
                Wait(5000)
            end
        end
    end)
end

function HandleInBossMenuCheckpoint(jobName)
    ExclusiveDisplayHelpTextThisFrame('TUN_BOSSMENU')
    if IsControlJustPressed(0, 38) or IsDisabledControlJustPressed(0, 38) then
        OpenBossMenu(jobName)
    end
end
