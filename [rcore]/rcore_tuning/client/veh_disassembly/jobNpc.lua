if Config.EnableScrapyard == nil or Config.EnableScrapyard then

    local npc = {}

    Citizen.CreateThread(function()
        while true do
            local wait = 2000

            for scrapIdx, scrapyardPlace in pairs(ScrapyardConfig.places) do
                local dist = #(CoordsPed - scrapyardPlace.npcCoords.xyz)
                if dist < 100.0 then
                    wait = 0

                    if not npc[scrapIdx] and not DoesEntityExist(npc[scrapIdx]) then
                        npc[scrapIdx] = VehDisassemblySpawnPed(
                            scrapyardPlace.npcModel, 
                            scrapyardPlace.npcCoords.xyz, 
                            scrapyardPlace.npcCoords.w
                        )
                        TaskStartScenarioInPlace(npc[scrapIdx], 'WORLD_HUMAN_LEANING', 0, true)
                    end

                    if dist <= 3.0 and DoesEntityExist(npc[scrapIdx]) then
                        if EnoughPoliceForScrapyard() then
                            local vehDisSearching = GlobalState.rcore_tuning_veh_dis_searching[scrapIdx]

                            if vehDisSearching.colorToFind ~= nil and vehDisSearching.bodyTypeToFind ~= nil then
                                if not ScrapyardConfig.AnyVehicleAllowed then
                                    local colorLabel = ScrapyardConfig.types[WHAT_TO_FIND_COLOR][vehDisSearching.colorToFind].label
                                    local bodyLabel = ScrapyardConfig.types[WHAT_TO_FIND_BODY][vehDisSearching.bodyTypeToFind]
                                    
                                    DrawSubtitleLabel(_U("bring_car", colorLabel, bodyLabel))
                                else
                                    DrawSubtitleLabel(_UWithFallback("bring_any_car", "Bring any car to be disassembled."))

                                end
                            else
                                DrawSubtitleLabel(_U("disassembly_running"))
                            end
                        else
                            DrawSubtitleLabel(_U("not_enough_police"))
                        end
                    end
                elseif npc[scrapIdx] ~= nil then
                    DeleteEntity(npc[scrapIdx])
                    npc[scrapIdx] = nil
                end
            end

            Wait(wait)
        end
    end)

    AddEventHandler('onResourceStop', function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then
            return
        end

        for _, n in pairs(npc) do
            DeleteEntity(n)
        end
    end)
end