QBCore = exports['qb-core']:GetCoreObject()

function Notify(src, text, type)
    TriggerClientEvent('QBCore:Notify', src, text, type)
end