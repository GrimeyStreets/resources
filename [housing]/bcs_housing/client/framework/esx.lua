CreateThread(function()
    if Config.framework ~= 'ESX' then return end
    ESX = exports[Config.exportname.es_extended]:getSharedObject()

    function GetIdentifier()
        return PlayerData and PlayerData.identifier
    end

    function TriggerServerCallback(func, ...)
        ESX.TriggerServerCallback(func, ...)
    end

    function GetClosestPlayer()
        return ESX.Game.GetClosestPlayer()
    end

    while ESX.GetPlayerData().job == nil do
        Wait(100)
    end

    RegisterNetEvent('esx:playerLoaded', function(xPlayer)
        PlayerData = xPlayer
        RemoveAllBlip()
        TriggerEvent("Housing:initialize")
    end)

    PlayerData = ESX.GetPlayerData()

    RegisterNetEvent('esx:setJob')
    AddEventHandler('esx:setJob', function(job)
        PlayerData.job = job
    end)

    function GetPlayerGrade()
        return PlayerData and PlayerData.job and PlayerData.job.grade
    end
end)
