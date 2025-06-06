QBCore = nil
PlayerData = nil

Citizen.CreateThread(function()
    while QBCore == nil do
        QBCore = exports['qb-core']:GetCoreObject()
        Citizen.Wait(1000)
    end
    while QBCore.Functions == nil do
        Citizen.Wait(1000)
    end
    while QBCore.Functions.GetPlayerData() == nil do
        Citizen.Wait(1000)
    end
    while QBCore.Functions.GetPlayerData().job == nil do
        Citizen.Wait(1000)
    end
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('ak47_qb_gpstracker:notify')
AddEventHandler('ak47_qb_gpstracker:notify', function(msg)
    QBCore.Functions.Notify(msg)
end)

RegisterNetEvent('ak47_qb_gpstracker:progress')
AddEventHandler('ak47_qb_gpstracker:progress', function(msg, time)
    QBCore.Functions.Progressbar(msg, msg, time, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done

    end, function()

    end)
end)

RegisterNetEvent('ak47_qb_gpstracker:progress:cancel')
AddEventHandler('ak47_qb_gpstracker:progress:cancel', function()
    
end)

function ShowHelpNotification(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

RegisterNetEvent('ak47_qb_gpstracker:trygps', function()
    ExecuteCommand(Config.Commands.add)
end)

RegisterNetEvent('ak47_qb_gpstracker:trycutter', function()
    ExecuteCommand(Config.Commands.remove)
end)

RegisterNetEvent('ak47_qb_gpstracker:trysearch', function()
    ExecuteCommand(Config.Commands.search)
end)