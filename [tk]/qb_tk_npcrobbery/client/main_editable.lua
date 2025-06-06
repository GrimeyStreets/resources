QBCore = exports['qb-core']:GetCoreObject()

function Notify(text, type)
    QBCore.Functions.Notify((text), type)
end

function LoadDict(dict)
    RequestAnimDict(dict)
    repeat Wait(10) until HasAnimDictLoaded(dict)
end

function DrawText3D(coords, text)
    local str = text

    local start, stop = string.find(text, '~([^~]+)~')
    if start then
        start = start - 2
        stop = stop + 2
        str = ''
        str = str .. string.sub(text, 0, start) .. '   ' .. string.sub(text, start+2, stop-2) .. string.sub(text, stop, #text)
    end

    AddTextEntry(GetCurrentResourceName(), str)
    BeginTextCommandDisplayHelp(GetCurrentResourceName())
    EndTextCommandDisplayHelp(2, false, false, -1)

	SetFloatingHelpTextWorldPosition(1, coords)
	SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
end

function RobProgBar()
    local p = promise.new()
    QBCore.Functions.Progressbar('qb_tk_npcrobbery:robNPC', Lang:t('intimidate'), Config.IntimidateTime, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = false,
     }, {}, {}, {}, function()
        if Config.DebugMode then print('stop progress bar, return true') end
        p:resolve(true)
    end, function()
        if Config.DebugMode then print('stop progress bar, return false') end
        p:resolve(false)
    end)
    return Citizen.Await(p)
end

function PoliceAlert()
    local gender = GetGender(PlayerPedId())
    TriggerServerEvent('police:server:policeAlert', Lang:t('robbery_alert', {gender = gender}))
end

function GiveAnimation(ped)
	LoadDict('mp_common')
	TaskPlayAnim(ped, 'mp_common', 'givetake2_a', 8.0, 4.0, -1, 48, 0, 0, 0, 0)
end

function HandsUpAnimation(ped)
	LoadDict('missminuteman_1ig_2')
    TaskPlayAnim(ped, 'missminuteman_1ig_2', 'handsup_enter', 8.0, 8.0, -1, 50, 0, false, false, false)
end

function CallPoliceAnim(ped)
    LoadDict('cellphone@')
    TaskPlayAnim(ped, 'cellphone@', 'cellphone_text_read_base', 2.0, 2.0, -1, 51, 0, false, false, false)
    AddPropToPed(ped, 'prop_npc_phone_02', 28422, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0)
    SetTimeout(Config.AnimationTime, function()
        ClearPedTasks(ped)
        if PhoneEntity and DoesEntityExist(PhoneEntity) then
            DeleteObject(PhoneEntity)
        end
        TriggerServerEvent('qb_tk_npcrobbery:removePedFromTable', PedToNet(ped))
        SetEntityAsNoLongerNeeded(ped)
    end)
end

function GetPlayerData()
    local p = promise.new()
    QBCore.Functions.GetPlayerData(function(data)
        p:resolve(data)
    end)
    return Citizen.Await(p)
end

PlayerData = GetPlayerData()

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = GetPlayerData()
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerData.job = job
end)

exports['qb-target']:AddGlobalPed({
    options = {
        {
        icon = Config.TargetIcon,
        label = Lang:t('rob_npc'),
        canInteract = CanInteractWithPed,
        action = StartRobbing,
        }
    },
    distance = Config.InteractDistance,
})