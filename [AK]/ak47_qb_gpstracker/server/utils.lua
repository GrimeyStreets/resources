QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('gpstracker', function(source)
    TriggerClientEvent('ak47_qb_gpstracker:trygps', source)
end)

QBCore.Functions.CreateUseableItem('wirecutter', function(source)
    TriggerClientEvent('ak47_qb_gpstracker:trycutter', source)
end)

QBCore.Functions.CreateUseableItem('bugdetector', function(source)
    TriggerClientEvent('ak47_qb_gpstracker:trysearch', source)
end)