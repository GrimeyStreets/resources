
if Config.EnableScrapyard == nil or Config.EnableScrapyard then
    local lockDisassemblyUntil = 0

    Citizen.CreateThread(function()
        while true do
            local wait = 2000
            local scrapyardPlace, scrapIdx = GetClosestScrapyardPlace()

            if scrapyardPlace and IsPedInAnyVehicle(Ped, false) and lockDisassemblyUntil < GetGameTimer() then
                local dis = #(CoordsPed - scrapyardPlace.vehicleDelivery)
                if dis <= 50.0 then
                    wait = 0

                    local veh = GetVehiclePedIsIn(Ped, false)

                    local search = GlobalState.rcore_tuning_veh_dis_disassebling[scrapIdx]
                    if not search or tablelength(search) == 0 and VehSearchingFit(scrapIdx, veh) then
                        DrawMarker(
                            1, 
                            scrapyardPlace.vehicleDelivery.x, scrapyardPlace.vehicleDelivery.y, scrapyardPlace.vehicleDelivery.z,
                            0.0, 0.0, 0.0, 
                            0.0, 0.0, 0.0, 
                            5.0, 5.0, 1.0, 
                            183, 65, 14, 200, 
                            false, false, 0, false, false, nil, nil
                        )
                        
                        if dis <= 3.5 then
                            lockDisassemblyUntil = GetGameTimer() + 1000
                            StartVehDisassembling(scrapIdx, veh)
                        end
                    else
                        wait = 1000
                    end
                end
            end

            Wait(wait)
        end
    end)

    local allowedClasses = {
    [0] = true,
    [1] = true,
    [2] = true,
    [3] = true,
    [4] = true,
    [5] = true,
    [6] = true,
    [7] = true,
    [9] = true,
    [12] = true,
    }

    function VehSearchingFit(scrapyardIdx, veh)
        if ScrapyardConfig.AnyVehicleAllowed then return true end
        local givenVehClass = GetVehicleClass(veh)

        if not allowedClasses[givenVehClass] then
            return false
        end

        if not GetIsVehicleEngineRunning(veh) then
            return false
        end
        
        local colorPrimary, colorSecondary = GetVehicleColours(veh)
        local colorTypePtr = ScrapyardConfig.types[WHAT_TO_FIND_COLOR]

        local search = GlobalState.rcore_tuning_veh_dis_searching[scrapyardIdx]

        if colorTypePtr[search.colorToFind] and colorTypePtr[search.colorToFind][colorPrimary] then
            return true
        end

        local vehClass = ScrapyardConfig.types[WHAT_TO_FIND_BODY][tonumber(givenVehClass)+1]

        if vehClass == ScrapyardConfig.types[WHAT_TO_FIND_BODY][search.bodyTypeToFind] then
            return true
        end

        return false
    end

    function StartVehDisassembling(scrapIdx, veh)
        local newVehData = {
            vehNetId = VehToNet(veh),
            bones = {
                bonnet = {
                    boneName = 'bonnet',
                    boneIndex = GetEntityBoneIndexByName(veh, 'bonnet'),
                    gotBone = not IsVehicleDoorDamaged(veh, 4),
                },
                door_dside_f = {
                    boneName = 'door_dside_f',
                    boneIndex = GetEntityBoneIndexByName(veh, 'door_dside_f'),
                    gotBone = not IsVehicleDoorDamaged(veh, 0),
                },
                door_pside_f = {
                    boneName = 'door_pside_f',
                    boneIndex = GetEntityBoneIndexByName(veh, 'door_pside_f'),
                    gotBone = not IsVehicleDoorDamaged(veh, 1),
                },
                door_dside_r = {
                    boneName = 'door_dside_r',
                    boneIndex = GetEntityBoneIndexByName(veh, 'door_dside_r'),
                    gotBone = not IsVehicleDoorDamaged(veh, 2),
                },
                door_pside_r = {
                    boneName = 'door_pside_r',
                    boneIndex = GetEntityBoneIndexByName(veh, 'door_pside_r'),
                    gotBone = not IsVehicleDoorDamaged(veh, 3),
                },
                boot = {
                    boneName = 'boot',
                    boneIndex = GetEntityBoneIndexByName(veh, 'boot'),
                    gotBone = not IsVehicleDoorDamaged(veh, 5),
                },
                window_lf = {
                    boneName = 'window_lf',
                    boneIndex = GetEntityBoneIndexByName(veh, 'window_lf'),
                    gotBone = IsVehicleWindowIntact(veh, 0),
                },
                window_rf = {
                    boneName = 'window_rf',
                    boneIndex = GetEntityBoneIndexByName(veh, 'window_rf'),
                    gotBone = IsVehicleWindowIntact(veh, 1),
                },
                window_lr = {
                    boneName = 'window_lr',
                    boneIndex = GetEntityBoneIndexByName(veh, 'window_lr'),
                    gotBone = IsVehicleWindowIntact(veh, 2),
                },
                window_rr = {
                    boneName = 'window_rr',
                    boneIndex = GetEntityBoneIndexByName(veh, 'window_rr'),
                    gotBone = IsVehicleWindowIntact(veh, 3),
                },
                wheel_lf = {
                    boneName = 'wheel_lf',
                    boneIndex = GetEntityBoneIndexByName(veh, 'wheel_lf'),
                    gotBone = not IsVehicleTyreBurst(veh, 0, false),
                },
                wheel_rf = {
                    boneName = 'wheel_rf',
                    boneIndex = GetEntityBoneIndexByName(veh, 'wheel_rf'),
                    gotBone = not IsVehicleTyreBurst(veh, 1, false),
                },
                wheel_lr = {
                    boneName = 'wheel_lr',
                    boneIndex = GetEntityBoneIndexByName(veh, 'wheel_lr'),
                    gotBone = not IsVehicleTyreBurst(veh, 4, false),
                },
                wheel_rr = {
                    boneName = 'wheel_rr',
                    boneIndex = GetEntityBoneIndexByName(veh, 'wheel_rr'),
                    gotBone = not IsVehicleTyreBurst(veh, 5, false),
                },
            },
        }

        TriggerServerEvent('rcore_vehDisassembly:server:syncDisassebling', scrapIdx, newVehData)
    end
end