QBCore = exports['qb-core']:GetCoreObject()

function getSocietyMoney()
    if GetResourceState('okokBanking') == 'started' then
        return exports['okokBanking']:GetAccount('khusbites')
    end
    if Config.SocietyInManagement then
        return exports['qb-management']:GetAccount('khusbites')
    else
        return exports['qb-banking']:GetAccountBalance('khusbites')
    end
end

function addSocietyMoney(money)
    if GetResourceState('okokBanking') == 'started' then
        exports['okokBanking']:AddMoney('khusbites', money)
        return
    end
    if Config.SocietyInManagement then
        exports['qb-management']:AddMoney('khusbites', money)
    else
        exports['qb-banking']:AddMoney('khusbites', money)
    end
end

function removeSocietyMoney(money)
    if GetResourceState('okokBanking') == 'started' then
        exports['okokBanking']:RemoveMoney('khusbites', money)
        return
    end
    if Config.SocietyInManagement then
        exports['qb-management']:RemoveMoney('khusbites', money)
    else
        exports['qb-banking']:RemoveMoney('khusbites', money)
    end
end

function CanCarryItem(id, item, amount)
	return true -- There is no way to check can caryy item in latest qb.
end

function hasEnoughItem(source, item, quantity)
    local quantity = quantity or 1
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local inv = xPlayer.Functions.GetItemByName(item)
    if inv and ((inv.amount and inv.amount >= quantity) or (inv.count and inv.count >= quantity)) then
        return true
    end
    return false
end

function GetItemLabel(item)
    if QBCore.Shared and QBCore.Shared.Items and QBCore.Shared.Items[item] then
	   return QBCore.Shared.Items[item].label
    else
        print('^1Item: ^3['..item..']^1 missing in qb-core/shared/items.lua^0')
        return item
    end
end

function GetPlayerFromId(id)
	return QBCore.Functions.GetPlayer(id).Functions
end

function getMoney(id)
	local xPlayer = QBCore.Functions.GetPlayer(id)
	return xPlayer.PlayerData.money['cash']
end

function PlayerCanPay(xPlayer, price, payment)
    if payment == 'cash' then
        return xPlayer.PlayerData.money['cash'] >= price
    else
        return xPlayer.PlayerData.money['bank'] >= price
    end
end

function PayTheBill(xPlayer, payment, price)
    if payment == 'cash' then
        xPlayer.Functions.RemoveMoney('cash', price)
    else
        xPlayer.Functions.RemoveMoney('bank', price)
    end
end