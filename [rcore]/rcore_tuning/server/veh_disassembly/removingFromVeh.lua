
if Config.EnableScrapyard == nil or Config.EnableScrapyard then
    RegisterServerEvent('rcore_vehDisassembly:removeItemFromVeh')
    AddEventHandler('rcore_vehDisassembly:removeItemFromVeh', function(scrapIdx, vehNetId, boneName, typeRemove, whatToRemove)
        local Source = source

        if VehDisassebling[scrapIdx] and VehDisassebling[scrapIdx].bones[boneName].gotBone then
            local vehEntity = NetworkGetEntityFromNetworkId(vehNetId)

            if #(GetEntityCoords(GetPlayerPed(Source)) - GetEntityCoords(vehEntity)) <= 5.0 then
                VehDisassebling[scrapIdx].bones[boneName].gotBone = false
                GlobalState.rcore_tuning_veh_dis_disassebling = VehDisassebling

                TriggerClientEvent('rcore_vehDisassembly:removeFromVeh', NetworkGetEntityOwner(vehEntity), vehNetId, typeRemove, whatToRemove)
                Wait(1000)
                
                TriggerEvent(
                    'rcore_tuning:setPlayerCarrying',
                    Source,
                    UserComponentPositions[boneName].object,
                    28422,
                    UserComponentPositions[boneName].bonePos,
                    UserComponentPositions[boneName].rotation,
                    'anim@heists@box_carry@',
                    'idle',
                    49
                )
            end
        end
    end)

    RegisterServerEvent('rcore_vehDisassembly:removeItemFromUser')
    AddEventHandler('rcore_vehDisassembly:removeItemFromUser', function(scrapIdx)
        local Source = source

        if IsCarrying(Source) then
            if #(GetEntityCoords(GetPlayerPed(Source)) - ScrapyardConfig.places[scrapIdx].deliveryPos) <= 4.0 then
                local multipler = Config.ComponentMoneyMultiplier
                if Config.Components then 
                    multipler = Config.ComponentPerScrapMultiplier or 1
                end
                TriggerEvent('rcore_tuning:stopPlayerCarrying', Source)
                if PlayerGiveMoney(Source, math.random(1, 5) * multipler, true) then
                    Wait(100)
                    TriggerClientEvent('rcore_vehDisassembly:deliverySuccessful', Source)
                else
                    ShowNotification(Source, _U("disassembly_inventory_space"))
                end
                IsVehDone(scrapIdx)
            end
        end
    end)

    function IsVehDone(scrapIdx)
        local dis = VehDisassebling[scrapIdx]

        local veh = NetworkGetEntityFromNetworkId(dis.vehNetId)
        if tablelength(dis) ~= 0 and DoesEntityExist(veh) then
            if 
                not dis.bones['door_dside_f'].gotBone and
                not dis.bones['door_dside_r'].gotBone and 
                not dis.bones['door_pside_f'].gotBone and
                not dis.bones['door_pside_r'].gotBone and
                not dis.bones['wheel_lf'].gotBone and
                not dis.bones['wheel_rf'].gotBone and
                not dis.bones['wheel_lr'].gotBone and
                not dis.bones['wheel_rr'].gotBone and
                not dis.bones['window_lf'].gotBone and
                not dis.bones['window_rf'].gotBone and
                not dis.bones['window_lr'].gotBone and
                not dis.bones['window_rr'].gotBone and
                not dis.bones['bonnet'].gotBone and
                not dis.bones['boot'].gotBone
            then
                VehDisassebling[scrapIdx] = {}
                GlobalState.rcore_tuning_veh_dis_disassebling = VehDisassebling
                DeleteEntity(veh)
                Wait(100)
                GenerateNewWantedVehicle(scrapIdx)
            end
        end
    end

end