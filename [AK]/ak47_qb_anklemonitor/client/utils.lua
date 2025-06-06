QBCore = exports['qb-core']:GetCoreObject()
PlayerData = nil

Citizen.CreateThread(function()
    while QBCore.Functions == nil do
        Citizen.Wait(0)
    end
    while QBCore.Functions.GetPlayerData() == nil do
        Citizen.Wait(0)
    end
    while QBCore.Functions.GetPlayerData().job == nil do
        Citizen.Wait(0)
    end
    PlayerData = QBCore.Functions.GetPlayerData()
    Citizen.Wait(30000)
    TriggerServerEvent('ak47_qb_anklemonitor:check', NetworkGetNetworkIdFromEntity(PlayerPedId()))
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('ak47_qb_anklemonitor:notify')
AddEventHandler('ak47_qb_anklemonitor:notify', function(msg)
    QBCore.Functions.Notify(msg)
end)

RegisterNetEvent('ak47_qb_anklemonitor:notify:police')
AddEventHandler('ak47_qb_anklemonitor:notify:police', function(targetCoords, name)
    if not Config.CustomAlert then
        if Config.Jobs[PlayerData.job.name] then
            TriggerEvent('ak47_qb_anklemonitor:notify', _U('alert', name))
            local alpha = 250
            local blip = AddBlipForCoord(targetCoords.x, targetCoords.y, targetCoords.z)
            SetBlipSprite(blip, Config.Blip.alert.sprite)
            SetBlipHighDetail(blip, true)
            SetBlipColour(blip, Config.Blip.alert.color)
            SetBlipAlpha(blip, alpha)
            SetBlipAsShortRange(blip, false)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(_U('alertblip', name))
            EndTextCommandSetBlipName(blip)
            while alpha ~= 0 do
                Citizen.Wait(Config.CopAlertBlipTime * 4)
                alpha = alpha - 1
                SetBlipAlpha(blip, alpha)
                if alpha == 0 then
                    RemoveBlip(blip)
                    return
                end
            end
        end
    else
        -- your custom alert trigger or export here

    end
end)

RegisterNetEvent('ak47_qb_anklemonitor:progress')
AddEventHandler('ak47_qb_anklemonitor:progress', function(msg, time)
    QBCore.Functions.Progressbar(msg, msg, time, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done

    end, function()

    end)
end)

RegisterNetEvent('ak47_qb_anklemonitor:progress:cancel')
AddEventHandler('ak47_qb_anklemonitor:progress:cancel', function()
    
end)

function ShowHelpNotification(msg)
    BeginTextCommandDisplayHelp('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, -1)
end

RegisterNetEvent('ak47_qb_anklemonitor:trygps', function()
    ExecuteCommand(Config.Commands.add)
end)

RegisterNetEvent('ak47_qb_anklemonitor:trycutter', function()
    ExecuteCommand(Config.Commands.remove)
end)

RegisterCommand(Config.Command, function()
    showBlip = not showBlip
    if showBlip then
        removed = false
    end
end)

RegisterNetEvent('ak47_qb_anklemonitor:add', function()
    if PlayerData.charinfo.gender == 0 then
        local cData = {}
        cData.outfitData = Config.AnkleClothing.uni.male
        TriggerEvent('qb-clothing:client:loadOutfit', cData)
    else
        local cData = {}
        cData.outfitData = Config.AnkleClothing.uni.female
        TriggerEvent('qb-clothing:client:loadOutfit', cData)
    end
end)

RegisterNetEvent('ak47_qb_anklemonitor:remove', function(nid)
    if PlayerData.charinfo.gender == 0 then
        local cData = {}
        cData.outfitData = Config.AnkleClothing.non_uni.male
        TriggerEvent('qb-clothing:client:loadOutfit', cData)
    else
        local cData = {}
        cData.outfitData = Config.AnkleClothing.non_uni.female
        TriggerEvent('qb-clothing:client:loadOutfit', cData)
    end
end)

function LocalInput(text, number, windows)
    AddTextEntry("FMMC_MPM_NA", text)
    DisplayOnscreenKeyboard(1, "FMMC_MPM_NA", "", windows or "", "", "", "", number or 30)
    while (UpdateOnscreenKeyboard() == 0) do
        DisableAllControlActions(0)
        Wait(0)
    end
    if (GetOnscreenKeyboardResult()) then
    local result = GetOnscreenKeyboardResult()
        return result
    end
end