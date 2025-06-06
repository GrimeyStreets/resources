QBCore = exports['qb-core']:GetCoreObject()

CreateThread(function()
    while true do 
        Wait(120000)
        local PlayerData = QBCore.Functions.GetPlayerData()
        if PlayerData.metadata["hunger"] <= 30 and PlayerData.metadata["hunger"] ~= 0 then
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "hunger", 0.8) -- Volume set to 1.0 (max)
        end
    end
end)

CreateThread(function()
    while true do 
        Wait(120000)
        local PlayerData = QBCore.Functions.GetPlayerData()
        if PlayerData.metadata["thirst"] <= 30 and PlayerData.metadata["thirst"] ~= 0 then
            TriggerServerEvent("InteractSound_SV:PlayWithinDistance", 7.0, "hunger", 0.8) -- Volume set to 1.0 (max)
        end
    end
end)

