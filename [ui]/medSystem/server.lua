-- ESX = nil
-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- RegisterServerEvent('medSystem:print')
-- AddEventHandler('medSystem:print', function(req, pulse, area, blood, x, y, z, bleeding)

-- 	local _source = source
	
-- 	local xPlayer =  ESX.GetPlayerFromId(_source)
-- 	Wait(100)
-- 	local name = getIdentity(_source)
	
	
-- 	local xPlayers = ESX.GetPlayers()
-- 		for i=1, #xPlayers, 1 do
-- 			TriggerClientEvent('medSystem:near', xPlayers[i] ,x ,y ,z , pulse, blood, name.firstname, name.lastname, area, bleeding)	
-- 		end
-- end)

-- RegisterCommand('med', function(source, args)
	
-- 	local _source = source
	
-- 	local xPlayer = ESX.GetPlayerFromId(_source)
	
	
-- for k,v in pairs(Config.job) do
-- 	if v.ambulance and xPlayer.job.name == 'ambulance' then
-- 		if args[1] ~= nil then
-- 			TriggerClientEvent('medSystem:send', args[1], source)
-- 		else
-- 			TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Incorrect player ID!")
-- 		end				
-- 	elseif v.police and xPlayer.job.name == 'police' then
-- 		if args[1] ~= nil then
-- 			TriggerClientEvent('medSystem:send', args[1], source)
-- 		else
-- 			TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Incorrect player ID!")
-- 		end		
-- 	elseif v.mechanic and xPlayer.job.name == 'mechanic' then
-- 		if args[1] ~= nil then
-- 			TriggerClientEvent('medSystem:send', args[1], source)
-- 		else
-- 			TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Incorrect player ID!")
-- 		end			
-- 	else
-- 		xPlayer.showNotification('Your job is not Whitelisted!', true , true, 30)
-- 	end

-- end
	
-- end, false)

-- function getIdentity(source)
-- 	local xPlayer = ESX.GetPlayerFromId(source)
	
-- 	local result = MySQL.Sync.fetchAll("SELECT * FROM users WHERE identifier = @identifier", {['@identifier'] = xPlayer.identifier})
-- 	if result[1] ~= nil then
-- 		local identity = result[1]

-- 		return {
-- 			identifier = identity['identifier'],
-- 			firstname = identity['firstname'],
-- 			lastname = identity['lastname'],
-- 		}
-- 	else
-- 		return nil
-- 	end
-- end

QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('medSystem:print')
AddEventHandler('medSystem:print', function(req, pulse, area, blood, x, y, z, bleeding)
    local _source = source
    local Player = QBCore.Functions.GetPlayer(_source)
    Wait(100)
    local name = getIdentity(_source)
    
    local Players = QBCore.Functions.GetPlayers()
    for _, playerId in ipairs(Players) do
        TriggerClientEvent('medSystem:near', playerId, x, y, z, pulse, blood, name.firstname, name.lastname, area, bleeding)
    end
end)

RegisterCommand('med', function(source, args)
    local _source = source
    local Player = QBCore.Functions.GetPlayer(_source)
    
    for _, v in pairs(Config.job) do
        if v.ambulance and Player.PlayerData.job.name == 'ambulance' or 
           v.police and Player.PlayerData.job.name == 'police' or 
           v.mechanic and Player.PlayerData.job.name == 'mechanic' then
            if args[1] ~= nil then
                TriggerClientEvent('medSystem:send', tonumber(args[1]), source)
            else
                TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Incorrect player ID!")
            end
            return
        end
    end
    Player.Functions.Notify('Your job is not Whitelisted!', 'error', 3000)
end, false)

function getIdentity(source)
    local Player = QBCore.Functions.GetPlayer(source)
    local result = MySQL.Sync.fetchAll("SELECT * FROM players WHERE citizenid = @citizenid", {['@citizenid'] = Player.PlayerData.citizenid})
    if result[1] ~= nil then
        local identity = result[1]
        return {
            identifier = identity['citizenid'],
            firstname = identity['firstname'],
            lastname = identity['lastname'],
        }
    else
        return nil
    end
end