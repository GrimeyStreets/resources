
if Config.EnableScrapyard == nil or Config.EnableScrapyard then
    AddTextEntry('RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WHEEL', _U("disassembly_wheel"))
    AddTextEntry('RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WINDOW', _U("disassembly_window"))
    AddTextEntry('RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_DOOR', _U("disassembly_door"))
    AddTextEntry('RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_BONNET', _U("disassembly_hood"))
    AddTextEntry('RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_BOOT', _U("disassembly_trunk"))

    AddTextEntry('RCORE_VEHDISASSEMBLY_PUT', _U("disassembly_put"))

    local lastHelpTextDisplayedAt = 0

    Citizen.CreateThread(function()
        while true do
            local allowedToSeemarker = true

            local closestScrapyardPlace, scrapIdx = GetClosestScrapyardPlace()

            if closestScrapyardPlace then
                Wait(0)

                if IsCarrying(UserServerId) then
                    allowedToSeemarker = false
                end

                if IsPedInAnyVehicle(Ped) then
                    allowedToSeemarker = false
                end
                local vehicleBeingDisassembled = GlobalState.rcore_tuning_veh_dis_disassebling[scrapIdx]

                if allowedToSeemarker and vehicleBeingDisassembled and vehicleBeingDisassembled.vehNetId and
                    NetworkDoesEntityExistWithNetworkId(vehicleBeingDisassembled.vehNetId) then
                    if #(CoordsPed - GetEntityCoords(NetToVeh(vehicleBeingDisassembled.vehNetId))) <= 5.0 then
                        if DisplayHelpTextAndRemoveOne(scrapIdx, 'wheel_lf', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WHEEL', 'wheel', 0, vehicleBeingDisassembled) then
                        elseif DisplayHelpTextAndRemoveOne(scrapIdx, 'wheel_rf', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WHEEL', 'wheel', 1, vehicleBeingDisassembled) then
                        elseif DisplayHelpTextAndRemoveOne(scrapIdx, 'wheel_lr', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WHEEL', 'wheel', 4, vehicleBeingDisassembled) then
                        elseif DisplayHelpTextAndRemoveOne(scrapIdx, 'wheel_rr', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WHEEL', 'wheel', 5, vehicleBeingDisassembled) then
                        elseif DisplayHelpTextAndRemoveOne(scrapIdx, 'bonnet', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_BONNET', 'door', 4, vehicleBeingDisassembled) then
                        elseif DisplayHelpTextAndRemoveOne(scrapIdx, 'boot', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_BOOT', 'door', 5, vehicleBeingDisassembled) then

                        elseif DisplayHelpTextAndRemoveTwo(scrapIdx, 'window_lf', 'door_dside_f', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WINDOW', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_DOOR', 'window', 'door', 0, 0, vehicleBeingDisassembled) then
                        elseif DisplayHelpTextAndRemoveTwo(scrapIdx, 'window_rf', 'door_pside_f', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WINDOW', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_DOOR', 'window', 'door', 1, 1, vehicleBeingDisassembled) then
                        elseif DisplayHelpTextAndRemoveTwo(scrapIdx, 'window_lr', 'door_dside_r', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WINDOW', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_DOOR', 'window', 'door', 2, 2, vehicleBeingDisassembled) then
                        elseif DisplayHelpTextAndRemoveTwo(scrapIdx, 'window_rr', 'door_pside_r', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_WINDOW', 'RCORE_DISASSEMBLY_REMOVE_BY_BONENAME_DOOR', 'window', 'door', 3, 3, vehicleBeingDisassembled) then
                        end
                    end
                else
                    if IsCarrying(UserServerId) ~= nil then
                        local deliveryPos = closestScrapyardPlace.deliveryPos

                        DrawMarker(
                            1, 
                            deliveryPos.x, deliveryPos.y, deliveryPos.z, 
                            0.0, 0.0, 0.0, 
                            0.0, 0.0, 0.0, 
                            1.5, 1.5, 1.0, 
                            183, 65, 14, 200, 
                            false, false,
                            0, 
                            false, false, 
                            nil, nil, 
                            false
                        )

                        if #(CoordsPed - closestScrapyardPlace.deliveryPos) <= 1.5 then
                            local gamerTime = GetGameTimer()

                            if gamerTime > lastHelpTextDisplayedAt then
                                lastHelpTextDisplayedAt = gamerTime
                                ExclusiveDisplayHelpTextThisFrame("RCORE_VEHDISASSEMBLY_PUT", false)
                            end

                            if IsControlJustPressed(0, 38) then
                                TriggerServerEvent('rcore_vehDisassembly:removeItemFromUser', scrapIdx)
                            end
                        end
                    end
                end 
            else
                Wait(2000)
            end
        end
    end)

    RegisterNetEvent('rcore_vehDisassembly:deliverySuccessful', function()
        RequestAnimDict('amb@prop_human_bum_bin@enter')
        while not HasAnimDictLoaded('amb@prop_human_bum_bin@enter') do Wait(0) end
        TaskPlayAnim(Ped, 'amb@prop_human_bum_bin@enter', 'enter', 8.0, 1.0, 4000, 16, 0, 0, 0, 0 )
        Wait(4000)
        ClearPedTasks(Ped)
    end)

    function DisplayHelpTextAndRemoveOne(scrapyardPlaceIdx, boneName, text, whatTypeRemove, whatRemove, vehicleBeingDisassembled)
        if vehicleBeingDisassembled.bones[boneName].gotBone then
            local veh = NetToVeh(vehicleBeingDisassembled.vehNetId)
            local bonePos = GetWorldPositionOfEntityBone(veh, vehicleBeingDisassembled.bones[boneName].boneIndex)

            if boneName == 'bonnet' then
                bonePos = GetVehicleEngineCoords(veh)
            elseif boneName == 'boot' then
                bonePos = GetVehicleTrunkCoords(veh)
            end

            return RemoveAndGetItemsByBoneName(scrapyardPlaceIdx, boneName, bonePos, text, vehicleBeingDisassembled.vehNetId, whatTypeRemove, whatRemove)
        end
    end

    function DisplayHelpTextAndRemoveTwo(scrapyardPlaceIdx, boneNameOne, boneNameTwo, textOne, textTwo, whatTypeRemoveOne, whatTypeRemoveTwo, whatRemoveOne, whatRemoveTwo, vehicleBeingDisassembled)
        if vehicleBeingDisassembled.bones[boneNameOne].gotBone then
            local bonePos = GetWorldPositionOfEntityBone(NetToVeh(vehicleBeingDisassembled.vehNetId), vehicleBeingDisassembled.bones[boneNameOne].boneIndex)
            RemoveAndGetItemsByBoneName(scrapyardPlaceIdx, boneNameOne, bonePos, textOne, vehicleBeingDisassembled.vehNetId, whatTypeRemoveOne, whatRemoveOne)
        else
            local bonePos = GetWorldPositionOfEntityBone(NetToVeh(vehicleBeingDisassembled.vehNetId), vehicleBeingDisassembled.bones[boneNameTwo].boneIndex)
            RemoveAndGetItemsByBoneName(scrapyardPlaceIdx, boneNameTwo, bonePos, textTwo, vehicleBeingDisassembled.vehNetId, whatTypeRemoveTwo, whatRemoveTwo)
        end
    end

    local textAll = nil

    function RemoveAndGetItemsByBoneName(scrapyardPlaceIdx, boneName, bonePos, text, vehNetId, typeRemove, whatToRemove)
        local scrapyardPlace = ScrapyardConfig.places[scrapyardPlaceIdx]

        if #(CoordsPed.xy - bonePos.xy) <= 0.8 then
            ExclusiveDisplayHelpTextThisFrame(text, false)
            if IsControlJustPressed(0, 38) then
                local vehEntity = NetToVeh(vehNetId)
                local vehCoords = GetEntityCoords(vehEntity)
                if #(vehCoords - scrapyardPlace.vehicleDelivery) <= 4.0 then
                    if #(CoordsPed - vehCoords) <= 4.0 then
                        TaskStartScenarioInPlace(Ped, 'PROP_HUMAN_BUM_BIN', 0, true)
                        Wait(UserComponentPositions[boneName].wait)
                        ClearPedTasks(Ped)
                        TriggerServerEvent('rcore_vehDisassembly:removeItemFromVeh', scrapyardPlaceIdx, vehNetId, boneName, typeRemove, whatToRemove)
                    end
                end
            end
            return true
        else
            return false
        end
    end

    RegisterNetEvent('rcore_vehDisassembly:removeFromVeh')
    AddEventHandler('rcore_vehDisassembly:removeFromVeh', function(vehNetId, typeRemove, whatToRemove)
        if typeRemove == 'door' then
            SetVehicleDoorBroken(NetToVeh(vehNetId), whatToRemove, true)
        elseif typeRemove == 'window' then
            RemoveVehicleWindow(NetToVeh(vehNetId), whatToRemove)
        elseif typeRemove == 'wheel' then
            whatToRemove = tyreBurstIndex[whatToRemove] or whatToRemove
            BreakOffVehicleWheel(NetToVeh(vehNetId), whatToRemove, false, true)
        end
    end)

    tyreBurstIndex = {
        [0] = 0,
        [1] = 1,
        [2] = nil,
        [3] = nil,
        [4] = 2,
        [5] = 3,
    }
end