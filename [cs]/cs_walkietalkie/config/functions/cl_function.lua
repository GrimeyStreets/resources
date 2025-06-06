if CodeStudio.ServerType == "QB" then 
    QBCore = exports['qb-core']:GetCoreObject()
elseif CodeStudio.ServerType == "ESX" then 
    ESX = exports['es_extended']:getSharedObject()
end


function RadioAnimation(equip)
    ClearPedTasks(cache.ped)
    for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(cache.ped, v) then
            DeleteObject(v)
            DetachEntity(v, 0, 0)
            SetEntityAsMissionEntity(v, true, true)
            Wait(100)
            DeleteEntity(v)
        end
    end
    lib.requestAnimDict("cellphone@")
    if equip then
        TaskPlayAnim(cache.ped, "cellphone@", "cellphone_text_read_base", 3.0, -3.0, -1, 49, 0, 0, 0, 0)
        local model = `prop_cs_hand_radio`
        lib.requestModel(model)
        radioProp = CreateObject(model, 1.0, 1.0, 1.0, 1, 1, 0)
        AttachEntityToEntity(radioProp, cache.ped, GetPedBoneIndex(cache.ped, 57005), 0.14, 0.01, -0.02, 110.0, 120.0, -15.0, 1, 0, 0, 0, 2, 1)
    else
        StopAnimTask(cache.ped, "cellphone@", "cellphone_text_read_base", 3.0)
        ClearPedTasks(cache.ped)
        if radioProp and DoesEntityExist(radioProp) then
            DeleteObject(radioProp)
            radioProp = nil
        end
    end
end

function ScannerAnimation(equip)
    ClearPedTasks(cache.ped)
    for _, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(cache.ped, v) then
            DeleteObject(v)
            DetachEntity(v, 0, 0)
            SetEntityAsMissionEntity(v, true, true)
            Wait(100)
            DeleteEntity(v)
        end
    end
    lib.requestAnimDict("amb@world_human_tourist_map@male@base")
    if equip then
        TaskPlayAnim(cache.ped, "amb@world_human_tourist_map@male@base", "base", 3.0, -3.0, -1, 49, 0, 0, 0, 0)
        local model = `prop_cs_tablet`
        lib.requestModel(model)
        tabProp = CreateObject(model, 1.0, 1.0, 1.0, 1, 1, 0)
        AttachEntityToEntity(tabProp, cache.ped, GetPedBoneIndex(cache.ped, 28422), 0.0, -0.03, 0.0, 20.0, -90.0, 0.0, true, true, false, true, 1, true)
    else
        StopAnimTask(cache.ped, "amb@world_human_tourist_map@male@base", "base", 3.0)
        ClearPedTasks(cache.ped)
        if tabProp and DoesEntityExist(tabProp) then
            DeleteObject(tabProp)
            tabProp = nil
        end
    end
end

function DisableControls()  --Works if you enable CodeStudio.UseWalking

    DisableControlAction(0, 24, true) -- Attack
    DisableControlAction(0, 257, true) -- Attack 2
    DisableControlAction(0, 25, true) -- Aim
    DisableControlAction(0, 263, true) -- Melee Attack 1

    DisableControlAction(0, 45, true) -- Reload
    DisableControlAction(0, 22, true) -- Jump
    DisableControlAction(0, 44, true) -- Cover
    DisableControlAction(0, 37, true) -- Select Weapon
    DisableControlAction(0, 23, true) -- Also 'enter'?

    DisableControlAction(0, 288, true) -- Disable phone
    DisableControlAction(0, 289, true) -- Inventory
    DisableControlAction(0, 170, true) -- Animations
    DisableControlAction(0, 167, true) -- Job

    DisableControlAction(0, 26, true) -- Disable looking behind
    DisableControlAction(0, 73, true) -- Disable clearing animation
    DisableControlAction(2, 199, true) -- Disable pause screen

    DisableControlAction(0, 59, true) -- Disable steering in vehicle
    DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
    DisableControlAction(0, 72, true) -- Disable reversing in vehicle

    DisableControlAction(2, 36, true) -- Disable going stealth

    DisableControlAction(0, 264, true) -- Disable melee
    DisableControlAction(0, 257, true) -- Disable melee
    DisableControlAction(0, 140, true) -- Disable melee
    DisableControlAction(0, 141, true) -- Disable melee
    DisableControlAction(0, 142, true) -- Disable melee
    DisableControlAction(0, 143, true) -- Disable melee
    DisableControlAction(0, 75, true)  -- Disable exit vehicle
    DisableControlAction(27, 75, true) -- Disable exit vehicle
end

function showTextUI(text)
    lib.showTextUI(text)
end

function hideTextUI()
    lib.hideTextUI()
end

function Notification(msg)
    -- Add Your Notification Event Here
    lib.notify({
        title = 'Radio',
        description = msg
    })
end

RegisterNetEvent('cs:advradio:notify', function (msg)
    Notification(msg)
end)

RegisterNetEvent('cs:advradio:connect', function (channel, connect)
    if connect then
        -- PMA Voice --
        exports["pma-voice"]:setRadioChannel(channel)
        exports["pma-voice"]:setVoiceProperty("radioEnabled", true)

        -- Toko Voip --
        -- exports.tokovoip_script:addPlayerToRadio(channel)
        -- exports.tokovoip_script:setPlayerData(GetPlayerName(PlayerId()), "radio:channel", channel, true)

        -- Salty Chat --
        -- exports.saltychat:SetRadioChannel(tostring(channel), true)
    else
        -- PMA Voice --
        exports["pma-voice"]:setRadioChannel(0)
        exports["pma-voice"]:setVoiceProperty("radioEnabled", false)

        -- Toko Voip --
        -- exports.tokovoip_script:removePlayerFromRadio(exports.tokovoip_script:getPlayerData(GetPlayerName(PlayerId()), "radio:channel"))
        -- exports.tokovoip_script:setPlayerData(GetPlayerName(PlayerId()), "radio:channel", "nil", true)

        -- Salty Chat --
        -- exports.saltychat:SetRadioChannel("", true)
    end
end)

RegisterNUICallback('setVolume', function(curVol, cb)
    -- PMA Voice --
    exports['pma-voice']:setRadioVolume(tonumber(curVol))

    -- Toko Voip --
    -- exports.tokovoip_script:setRadioVolume(tonumber(curVol))

    -- Salty Chat --
    -- exports.saltychat:SetRadioVolume(tonumber(curVol))
end)


if CodeStudio.Radio.Interaction.UseCommand then
    RegisterCommand('radio', function()
        if CodeStudio.Radio.Interaction.UseItem then
            local hasItem = itemCheck('radio')
            if hasItem then
                TriggerEvent('cs:advradio:openRadio', 1)            --1 = Radio Model 1 and 2 for Radio Model 2
            else
                Notification('You Need Radio')
            end
        else
            TriggerEvent('cs:advradio:openRadio', 1)
        end
    end, false)

    RegisterCommand('radio2', function()     -- This Will Open Radio Model 2
        if CodeStudio.Radio.Interaction.UseItem then
            local hasItem = itemCheck('radio')
            if hasItem then
                TriggerEvent('cs:advradio:openRadio', 2)            --1 = Radio Model 1 and 2 for Radio Model 2
            else
                Notification('You Need Radio')
            end
        else
            TriggerEvent('cs:advradio:openRadio', 2)
        end
    end, false)
end

if CodeStudio.Radio.Interaction.UseWithKey then
    local keybind = lib.addKeybind({
        name = 'radio',
        description = 'press '..CodeStudio.Radio.Interaction.UseWithKey..' to open radio',
        defaultKey = CodeStudio.Radio.Interaction.UseWithKey,
        onPressed = function(self)
            TriggerEvent('cs:advradio:openRadio', 1)
        end,
    })
end

if CodeStudio.Radio_Scanner.Interaction.UseCommand then
    RegisterCommand('radioScan', function()
        if CodeStudio.Radio_Scanner.Interaction.UseItem then
            local hasItem = itemCheck('radio_scanner')
            if hasItem then
                TriggerEvent('cs:advradio:openScanner')
            else
                Notification('You Need Radio Scanner')
            end
        else
            TriggerEvent('cs:advradio:openScanner')
        end
    end, false)
end

if CodeStudio.Jammer.Interaction.UseCommand then
    RegisterCommand('usejammer', function()
        if CodeStudio.Jammer.Interaction.UseItem then
            local hasItem = itemCheck('radio_jammer')
            if hasItem then
                TriggerEvent('cs:advradio:useJammer')
            else
                Notification('You Need Radio Jammer')
            end
        else
            TriggerEvent('cs:advradio:useJammer')
        end
    end, false)
end

if CodeStudio.JammerCar.Interaction.UseCommand then
    RegisterCommand('carjammer', function()
        if CodeStudio.JammerCar.Interaction.UseItem then
            local hasItem = itemCheck('vehicle_jammer')
            if hasItem then
                TriggerEvent('cs:advradio:useCarJammer')
            else
                Notification('You Need Vehicle Radio Jammer')
            end
        else
            TriggerEvent('cs:advradio:useCarJammer')
        end
    end, false)
end

function StartProgressBar(callback)
    if lib.progressBar({
        duration = CodeStudio.JammerCar.PrgressBar.Wait_Time,
        label = 'Activating Radio Jammer',
        useWhileDead = false,
        canCancel = true,
        disable = {
            move = true,
            combat = true
        },
    }) then
        callback(true)
    else
        callback(false)
    end
end

function itemCheck(item)
    local retval = lib.callback.await('cs:advradio:hasRadio', false, item)
    return retval
end

if CodeStudio.QuickConnect.Enable then
    lib.addKeybind({
        name = 'radio_next',
        description = 'press '..CodeStudio.QuickConnect.Next_Key..' to switch next channel',
        defaultKey = CodeStudio.QuickConnect.Next_Key,
        onPressed = function(self)
            TriggerServerEvent('cs:advradio:quickConnect', true)
        end,
    })
    lib.addKeybind({
        name = 'radio_previous',
        description = 'press '..CodeStudio.QuickConnect.Previous_Key..' to switch previous channel',
        defaultKey = CodeStudio.QuickConnect.Previous_Key,
        onPressed = function(self)
            TriggerServerEvent('cs:advradio:quickConnect', false)
        end,
    })
end

RegisterCommand('resetradio_ui', function()
    resetUI()
end, false)


if CodeStudio.Radio.DisconnectOnNoRadio and CodeStudio.Radio.Interaction.UseItem then
    local inventoryType = nil
    if GetResourceState('ox_inventory') == 'started' then
        return
    elseif GetResourceState('qs-inventory') == 'started' then
        inventoryType = 'qs'
    elseif GetResourceState('tgiann-inventory') == 'started' then
        inventoryType = 'tgiann'
    elseif GetResourceState('origen_inventory') == 'started' then
        inventoryType = 'origen'
    end
    CreateThread(function()
        while true do
            Wait(2000)
            local hasItem = false
            if inventoryType == 'qs' then
                hasItem = exports['qs-inventory']:Search('radio')
            elseif inventoryType == 'tgiann' then
                hasItem = exports["tgiann-inventory"]:HasItem('radio', 1)
            elseif inventoryType == 'origen' then
                hasItem = exports.origen_inventory:HasItem('radio')
            elseif CodeStudio.ServerType == 'QB' and LocalPlayer.state.isLoggedIn then
                hasItem = QBCore.Functions.HasItem('radio', 1)
            elseif CodeStudio.ServerType == 'ESX' then
                hasItem = ESX.SearchInventory('radio', 1)
            end
            if not hasItem or hasItem == 0 then
                TriggerServerEvent('cs:advradio:forceLeave')
            end
        end
    end)
end