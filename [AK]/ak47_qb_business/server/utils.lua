QBCore = exports['qb-core']:GetCoreObject()
ox_inventory = exports.ox_inventory

function getSocietyMoney(job)
    if Config.SocietyInManagement then
        return exports['okokBanking']:GetAccount(job)
    else
        -- return exports['qb-banking']:GetAccountBalance(job)
        return exports['okokBanking']:GetAccount(job)
    end
end

function addSocietyMoney(job, money)
    if Config.SocietyInManagement then
        exports['okokBanking']:AddMoney(job, money)
    else
        -- exports['qb-banking']:AddMoney(job, money)
        exports['okokBanking']:AddMoney(job, value)
    end
end

function removeSocietyMoney(job, money)
    if Config.SocietyInManagement then
        exports['okokBanking']:RemoveMoney(job, money)
    else
        -- exports['qb-banking']:RemoveMoney(job, money)
        exports['okokBanking']:RemoveMoney(job, value)
    end
end

function CanCarryItem(id, item, amount)
    return true -- There is no way to check can caryy item in latest qb.
end

function GetItemLabel(item)
    --return QBCore.Shared.Items[item].label
    local itemLabel = exports.ox_inventory:Items()[item].label
    return itemLabel
end

function GetPlayerFromId(id)
    return QBCore.Functions.GetPlayer(id).Functions
end

function PlayerCanPay(xPlayer, price, payment)
    if payment == 'cash' then
        return xPlayer.PlayerData.money['cash'] >= price
    else
        return xPlayer.PlayerData.money['bank'] >= price
    end
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

function AddInventoryItem(xPlayer, item, amount)
    --xPlayer.Functions.AddItem(item, amount)
    exports.ox_inventory:AddItem(source, item, amount)
end

function PayTheBill(xPlayer, payment, price)
    if payment == 'cash' then
        xPlayer.Functions.RemoveMoney('cash', price)
    else
        xPlayer.Functions.RemoveMoney('bank', price)
    end
end

function isWeapon(item)
    return string.find(item:lower(), 'weapon_') or false
end

RegisterNetEvent('ak47_qb_business:removeItem', function(item)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.RemoveItem(item, 1)
end)