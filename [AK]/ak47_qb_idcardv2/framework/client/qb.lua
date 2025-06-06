QBCore = exports['qb-core']:GetCoreObject()
PlayerData = {}
PlayerLoaded = false

AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        local data = QBCore.Functions.GetPlayerData()
        if data and data.job then
            PlayerData = data
            PlayerLoaded = true
        end
    end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerData.job = JobInfo
end)

RegisterNetEvent('QBCore:Client:OnGangUpdate', function(GangInfo)
    PlayerData.gang = GangInfo
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    while not QBCore.Functions.GetPlayerData().job do Wait(1000) end
    PlayerData = QBCore.Functions.GetPlayerData()
    PlayerLoaded = true
end)

GetJobName = function()
    return PlayerData.job and PlayerData.job.name
end

GetJobGrade = function()
    return PlayerData.job and PlayerData.job.grade.level
end

GetGangName = function()
    if GetResourceState('ak47_qb_gangs') == 'started' or GetResourceState('ak47_qb_gangs') == 'uninitialized' then
        local gang = exports['ak47_qb_gangs']:GetPlayerGang()
        return gang and gang.tag
    else
        return PlayerData.gang and PlayerData.gang.name
    end
    return nil
end

GetGangRank = function()
    if GetResourceState('ak47_qb_gangs') == 'started' or GetResourceState('ak47_qb_gangs') == 'uninitialized' then
        local gang = exports['ak47_qb_gangs']:GetPlayerGang()
        return gang and gang.rankid
    else
        return PlayerData.gang and PlayerData.gang.grade.level
    end
    return nil
end

HasLicense = function(item, class)
    return lib.callback.await('ak47_qb_idcardv2:haslicense', nil, item, class)
end
exports('HasLicense', HasLicense)

GetLicenseLabel = function(item)
    return Config.Cards[item] and Config.Cards[item].label
end
exports('GetLicenseLabel', GetLicenseLabel)