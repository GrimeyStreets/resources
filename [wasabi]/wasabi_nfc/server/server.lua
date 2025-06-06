-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('wasabi_nfc:checkPhone', function(source, cb)
    if not Config.PhoneItem then
        cb(true)
    else
        local Player = QBCore.Functions.GetPlayer(source)
        local item = Player.Functions.GetItemByName(Config.PhoneItem)
        if item and item.amount > 0 then
            cb(true)
        else
            cb(false)
        end
    end
end)

QBCore.Functions.CreateCallback('wasabi_nfc:confirmPayment', function(source, cb, id, amount)
    local Player = QBCore.Functions.GetPlayer(source)
    local Target = QBCore.Functions.GetPlayer(id)
    if not Player or not Target then
        cb(false)
        return
    end

    local playerName = Player.PlayerData.charinfo.firstname .. ' ' .. Player.PlayerData.charinfo.lastname
    local targetName = Target.PlayerData.charinfo.firstname .. ' ' .. Target.PlayerData.charinfo.lastname
    local playerBank = Player.Functions.GetMoney('bank')

    if playerBank < amount then
        cb(false)
    else
        Player.Functions.RemoveMoney('bank', amount)
        Target.Functions.AddMoney('bank', amount)
        TriggerClientEvent('wasabi_nfc:notifyReceiver', id, playerName, amount)
        cb(targetName)
    end
end)

addCommas = function(n)
	return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1,")
						  :gsub(",(%-?)$","%1"):reverse()
end