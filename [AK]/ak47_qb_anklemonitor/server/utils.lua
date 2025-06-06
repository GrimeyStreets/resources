QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('anklemonitor', function(source)
    TriggerClientEvent('ak47_qb_anklemonitor:trygps', source)
end)

QBCore.Functions.CreateUseableItem('boltcutter', function(source)
    TriggerClientEvent('ak47_qb_anklemonitor:trycutter', source)
end)