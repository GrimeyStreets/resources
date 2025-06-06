QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	if Config.Inventory == 'auto' then
		if GetResourceState('ak47_qb_inventory') ~= 'missing' then
			Config.Inventory = 'ak47_qb_inventory'
		elseif GetResourceState('ox_inventory') ~= 'missing' then
			Config.Inventory = 'ox_inventory'
		elseif GetResourceState('qs-inventory') ~= 'missing' then
			Config.Inventory = 'qs-inventory'
		elseif GetResourceState('codem-inventory') ~= 'missing' then
			Config.Inventory = 'codem-inventory'
		elseif GetResourceState('origen_inventory') ~= 'missing' then
			Config.Inventory = 'origen_inventory'
		elseif GetResourceState('tgiann-inventory') ~= 'missing' then
			Config.Inventory = 'tgiann-inventory'
		elseif GetResourceState('qb-inventory') ~= 'missing' then
			Config.Inventory = 'qb-inventory'
		elseif GetResourceState('ps-inventory') ~= 'missing' then
			Config.Inventory = 'ps-inventory'
		elseif GetResourceState('lj-inventory') ~= 'missing' then
			Config.Inventory = 'lj-inventory'
		else
			print('^1Incompatible inventory! Please set your inventory in config.^0')
			return
		end
		print(string.format("^2%s initialized for this script.^0", Config.Inventory))
	end
end)

pError = function(err)
    print(string.format("^1SCRIPT ERROR: %s^0", err))
end

GetPlayers = function()
	return QBCore.Functions.GetPlayers()
end

GetPlayer = function(source)
	return QBCore.Functions.GetPlayer(source)
end

GetSource = function(xPlayer)
	return xPlayer.PlayerData.source
end

GetIdentifier = function(source)
	local xPlayer = GetPlayer(source)
	return xPlayer.PlayerData.citizenid
end

GetInventory = function(source)
	local xPlayer = GetPlayer(source)
	return xPlayer.PlayerData.items
end

GetDob = function(source)
	local xPlayer = GetPlayer(source)
    return xPlayer and xPlayer.PlayerData.charinfo and xPlayer.PlayerData.charinfo.birthdate or ""
end

GetFirstName = function(source)
	local xPlayer = GetPlayer(source)
    return xPlayer and xPlayer.PlayerData.charinfo and xPlayer.PlayerData.charinfo.firstname or ""
end

GetLastName = function(source)
	local xPlayer = GetPlayer(source)
    return xPlayer and xPlayer.PlayerData.charinfo and xPlayer.PlayerData.charinfo.lastname or ""
end

GetSexName = function(source)
	local xPlayer = GetPlayer(source)
	return xPlayer and (xPlayer.PlayerData.charinfo and xPlayer.PlayerData.charinfo.gender == 0 and _U('male') or _U('female')) or ""
end

GetName = function(source)
	local xPlayer = GetPlayer(source)
    return xPlayer.PlayerData.charinfo.firstname..' '..xPlayer.PlayerData.charinfo.lastname
end

GetMoney = function(source, account)
    if account == 'coin' then
        return GetCoin(GetIdentifier(source))
    else
    	local xPlayer = GetPlayer(source)
    	return xPlayer.PlayerData.money[account]
    end
end

AddMoney = function(source, account, amount)
	local xPlayer = GetPlayer(source)
	xPlayer.Functions.AddMoney(account, amount)
end

RemoveMoney = function(source, account, amount)
    if account == 'coin' then
        RemoveCoin(GetIdentifier(source), amount)
    else
    	local xPlayer = GetPlayer(source)
    	xPlayer.Functions.RemoveMoney(account, amount)
    end
end

GetAccountLabel = function(source, account)
    if account == 'coin' then
        return 'Coin'
    else
        return account == 'cash' and 'Cash' or 'Bank'
    end
end

GetIdentifierByType = function(playerId, idtype)
    local src = source
    for _, identifier in pairs(GetPlayerIdentifiers(playerId)) do
        if string.find(identifier, idtype) then
            return identifier
        end
    end
    return nil
end

IsAdmin = function(source)
	local xPlayer = GetPlayer(source)
	if (Config.AdminWithAce and IsPlayerAceAllowed(source, 'command')) then
		return true
	elseif  Config.AdminWithLicense[GetIdentifierByType(source, 'license')] then
		return true
	elseif Config.AdminWithIdentifier[GetIdentifier(source)] then 
		return true
	end
	return false
end

GetCoin = function(identifier)
	local result = MySQL.Sync.fetchAll('SELECT * FROM '..Config.SpecialCoin.tablename..' WHERE `'..Config.SpecialCoin.identifiercolumname..'` = ?', {identifier})
	return result[1] and result[1][Config.SpecialCoin.coincolumname] or 0
end

RemoveCoin = function(identifier, amount)
	MySQL.Async.execute('UPDATE '..Config.SpecialCoin.tablename..' SET '..Config.SpecialCoin.coincolumname..' = '..Config.SpecialCoin.coincolumname..' - ? WHERE `'..Config.SpecialCoin.identifiercolumname..'` = ?', {amount, identifier})
end

GetJobName = function(source)
    local xPlayer = GetPlayer(source)
    return xPlayer and xPlayer.PlayerData.job and xPlayer.PlayerData.job.name
end

GetJobGrade = function(source)
    local xPlayer = GetPlayer(source)
    return xPlayer and xPlayer.PlayerData.job and xPlayer.PlayerData.job.grade.level
end

GetGangName = function(source)
    if GetResourceState('ak47_qb_gangs') == 'started' or GetResourceState('ak47_qb_gangs') == 'uninitialized' then
        local gang = exports['ak47_qb_gangs']:GetPlayerGang(source)
        return gang and gang.tag
    else
        local xPlayer = GetPlayer(source)
        return xPlayer and xPlayer.PlayerData.gang and xPlayer.PlayerData.gang.name
    end
    return nil
end

GetGangRank = function(source)
    if GetResourceState('ak47_qb_gangs') == 'started' or GetResourceState('ak47_qb_gangs') == 'uninitialized' then
        local gang = exports['ak47_qb_gangs']:GetPlayerGang(source)
        return gang and gang.rankid
    else
        local xPlayer = GetPlayer(source)
        return xPlayer and xPlayer.PlayerData.gang and xPlayer.PlayerData.gang.grade.level
    end
    return nil
end

HasLicense = function(source, item, class)
	local items = GetInventory(source)
	local identifier = GetIdentifier(source)

	if GetResourceState('ak47_qb_inventory') == 'started' then
		items = exports['ak47_qb_inventory']:GetInventoryItems(source)
	elseif Config.Inventory == 'qs-inventory' then
		items = exports['qs-inventory']:GetInventory(source)
	elseif Config.Inventory == 'codem-inventory' then
		items = exports['codem-inventory']:GetInventory(GetIdentifier(source), source)
	elseif Config.Inventory == 'tgiann-inventory' then
		items = exports['tgiann-inventory']:GetPlayerItems(source)
	end

	for i, v in pairs(items) do
		if v and v.name and v.name == item then
			local meta = v.metadata or v.info
			if meta and meta.identifier == identifier then
				if class then
					if meta.licenseclass == class then
						return true
					end
					goto nextsearch
				end
				return true
			end
			::nextsearch::
		end
	end
	return false
end
exports('HasLicense', HasLicense)

GetLicenseLabel = function(item)
    return Config.Cards[item] and Config.Cards[item].label
end
exports('GetLicenseLabel', GetLicenseLabel)

lib.callback.register('ak47_qb_idcardv2:haslicense', function(source, item, class)
	return HasLicense(source, item, class)
end)

AddItem = function(source, item, amount, slot, info)
	if Config.Inventory == 'ak47_qb_inventory' then
		exports['ak47_qb_inventory']:AddItem(source, item, 1, slot, info)
	elseif Config.Inventory == 'ox_inventory' then
		exports['ox_inventory']:AddItem(source, item, 1, info)
	elseif Config.Inventory == 'qs-inventory' then
		exports['qs-inventory']:AddItem(source, item, 1, slot, info)
	elseif Config.Inventory == 'codem-inventory' then
		exports['codem-inventory']:AddItem(source, item, 1, slot, info)
	elseif Config.Inventory == 'origen_inventory' then
		exports['origen_inventory']:AddItem(source, item, 1, slot, info)
	elseif Config.Inventory == 'tgiann-inventory' then
		exports['tgiann-inventory']:AddItem(source, item, 1, slot, info)
	elseif Config.Inventory == 'qb-inventory' then
		exports['qb-inventory']:AddItem(source, item, 1, slot, info)
	elseif Config.Inventory == 'ps-inventory' then
		exports['ps-inventory']:AddItem(source, item, 1, slot, info)
	elseif Config.Inventory == 'lj-inventory' then
		exports['lj-inventory']:AddItem(source, item, 1, slot, info)
	end
end

GetPlayerMeta = function(source, key)
	local xPlayer = GetPlayer(source)
	return xPlayer.Functions.GetMetaData(key)
end

SetPlayerMeta = function(source, key, value)
	local xPlayer = GetPlayer(source)
	xPlayer.Functions.SetMetaData(key, value)
end

CreateUsable = QBCore.Functions.CreateUseableItem

QBCore.Commands.Add("giveid", _U('giveid'), {{name = "id", help = _U('playerid')}}, false, function(source, args)
    if IsAdmin(source) or Config.GiveIdCommandAccessByJob[GetJobName(source)] then
		if args[1] and GetPlayer(tonumber(args[1])) then
			if IsAdmin(source) then
				TriggerClientEvent('ak47_qb_idcardv2:opengivemenu', source, tonumber(args[1]), true)
			elseif GetJobName(source) and Config.GiveIdCommandAccessByJob[GetJobName(source)] and GetJobGrade(source) >= Config.GiveIdCommandAccessByJob[GetJobName(source)].minimumrank then
				TriggerClientEvent('ak47_qb_idcardv2:opengivemenu', source, tonumber(args[1]))
			elseif GetGangName(source) and Config.GiveIdCommandAccessByGang[GetGangName(source)] and GetGangRank(source) >= Config.GiveIdCommandAccessByGang[GetGangName(source)].minimumrank then
				TriggerClientEvent('ak47_qb_idcardv2:opengivemenu', source, tonumber(args[1]))
			else
				TriggerClientEvent('ak47_qb_idcardv2:notify', source, _U('notaccess'), 'error')
			end
		else
			TriggerClientEvent('ak47_qb_idcardv2:notify', source, _U('notonline'), 'error')
		end
	else
		TriggerClientEvent('ak47_qb_idcardv2:notify', source, _U('notaccess'), 'error')
	end
end, "user")