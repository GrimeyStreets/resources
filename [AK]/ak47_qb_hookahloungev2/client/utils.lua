QBCore = exports['qb-core']:GetCoreObject()
PlayerData = {}

Citizen.CreateThread(function()
    while QBCore == nil do
        Citizen.Wait(1000)
    end
    while QBCore.Functions == nil do
        Citizen.Wait(100)
    end
    while QBCore.Functions.GetPlayerData() == nil do
        Citizen.Wait(100)
    end
    PlayerData = QBCore.Functions.GetPlayerData()
    createBlip()
end)

function createBlip()
    local coords = Config.Blip.pos
    local radius = Config.Blip.radius + 0.00
    local blipRd = AddBlipForRadius(coords, radius)
    SetBlipHighDetail(blipRd, true)
    SetBlipColour(blipRd, Config.Blip.color)
    SetBlipAlpha (blipRd, 128)
    SetBlipAsShortRange(blipRd, true)
    local blip = AddBlipForCoord(coords)
    SetBlipHighDetail(blip, true)
    SetBlipSprite (blip, Config.Blip.id)
    SetBlipScale  (blip, Config.Blip.size)
    SetBlipColour (blip, Config.Blip.color)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Config.Blip.name)
    EndTextCommandSetBlipName(blip)
end

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('ak47_qb_hookahloungev2:notify')
AddEventHandler('ak47_qb_hookahloungev2:notify', function(msg, type)
    QBCore.Functions.Notify(msg, type)
end)

RegisterNetEvent('ak47_qb_hookahloungev2:progress')
AddEventHandler('ak47_qb_hookahloungev2:progress', function(msg, time)
    QBCore.Functions.Progressbar(msg, msg, time, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done

    end, function()

    end)
end)

local effectRunning = false
AddEventHandler('ak47_qb_hookahloungev2:smoke', function()
    TriggerServerEvent('hud:server:RelieveStress', math.random(3, 8))
    if not effectRunning then
        effectRunning = true
        SetTimecycleModifierStrength(0.0)
        SetTimecycleModifier('spectator5')
        SetPedMotionBlur(PlayerPedId(), true)
        Citizen.Wait(1000)
        SetTimecycleModifierStrength(0.1)
        Citizen.Wait(1000)
        SetTimecycleModifierStrength(0.2)
        Citizen.Wait(1000)
        SetTimecycleModifierStrength(0.3)
        Citizen.Wait(1000)
        SetTimecycleModifierStrength(0.4)
        Citizen.Wait(1000)
        SetTimecycleModifierStrength(0.5)
        Citizen.Wait(1000)
        ShakeGameplayCam('DRUNK_SHAKE', 1.5)
        Citizen.Wait(3000)
        RequestClipSet('MOVE_M@DRUNK@SLIGHTLYDRUNK')
        while not HasClipSetLoaded('MOVE_M@DRUNK@SLIGHTLYDRUNK') do
            Citizen.Wait(0)
        end
        while inSession do
            SetPedMovementClipset(PlayerPedId(), 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
            Citizen.Wait(1000)
        end
        effectRunning = false
        SetTimecycleModifierStrength(0.4)
        Citizen.Wait(3000)
        SetTimecycleModifierStrength(0.3)
        Citizen.Wait(4000)
        SetTimecycleModifierStrength(0.2)
        Citizen.Wait(5000)
        SetTimecycleModifierStrength(0.1)
        Citizen.Wait(6000)
        ClearTimecycleModifier()
        ShakeGameplayCam('DRUNK_SHAKE', 0.0)
        SetPedMotionBlur(PlayerPedId(), false)
        ResetPedMovementClipset(PlayerPedId(), 0)
    end
end)

function playAnim(dir, anim, blendIn, blendOut, duration, flag, playbackRate)
    local playerPed = PlayerPedId()
    RequestAnimDict(dir)
    while not HasAnimDictLoaded(dir) do
        Citizen.Wait(0)
    end
    TaskPlayAnim(playerPed, dir, anim, blendIn + 0.0, blendOut + 0.0, duration, flag, playbackRate, 0, 0, 0)
end

DrawTxt3D = function(coords, text)
    local str = text
    AddTextEntry(GetCurrentResourceName(), str)
    BeginTextCommandDisplayHelp(GetCurrentResourceName())
    EndTextCommandDisplayHelp(2, false, false, -1)
    SetFloatingHelpTextWorldPosition(1, coords)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
end