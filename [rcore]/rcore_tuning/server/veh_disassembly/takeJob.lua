if Config.EnableScrapyard == nil or Config.EnableScrapyard then

    Citizen.CreateThread(function()
        ServerSearchingVehicle = {}
        VehDisassebling = {}

        for idx, _ in pairs(ScrapyardConfig.places) do
            ServerSearchingVehicle[idx] = {}
            VehDisassebling[idx] = {}
        end

        GlobalState.rcore_tuning_veh_dis_searching = ServerSearchingVehicle

        GlobalState.rcore_tuning_veh_dis_disassebling = VehDisassebling

        Wait(100)
        GenerateNewWantedVehicle()
    end)

    function GenerateNewWantedVehicle(idx)
        if idx then
            ServerSearchingVehicle[idx] = {
                colorToFind = math.random(1, #ScrapyardConfig.types[WHAT_TO_FIND_COLOR]),
                bodyTypeToFind = math.random(1, #ScrapyardConfig.types[WHAT_TO_FIND_BODY]),
            }
        else
            ServerSearchingVehicle = {}

            for idx, _ in pairs(ScrapyardConfig.places) do
                ServerSearchingVehicle[idx] = {
                    colorToFind = math.random(1, #ScrapyardConfig.types[WHAT_TO_FIND_COLOR]),
                    bodyTypeToFind = math.random(1, #ScrapyardConfig.types[WHAT_TO_FIND_BODY]),
                }
            end
        end

        GlobalState.rcore_tuning_veh_dis_searching = ServerSearchingVehicle
    end
end