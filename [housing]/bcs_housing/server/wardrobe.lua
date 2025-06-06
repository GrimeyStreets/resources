RegisterNetEvent('Housing:server:AddWardrobe', function(id, wardrobe)
    local src = source
    local homeId, aptId = GetHomeAptId(id)
    local home = Homes[homeId]
    if home then
        home:AddWardrobe(wardrobe, aptId)
        TriggerClientEvent('Housing:notify', src, Locale['housing'], Locale['saved_wardrobe'], 'success', 3000)
        TriggerClientEvent('Housing:client:AddWardrobe', -1, id, wardrobe)
    end
end)

RegisterNetEvent('Housing:server:DeleteWardrobe', function(id, name)
    local homeId, aptId = GetHomeAptId(id)
    local home = Homes[homeId]
    if home then
        home:DeleteWardrobe(name, aptId)
        TriggerClientEvent('Housing:client:DeleteWardrobe', -1, id, name)
    end
end)

CreateThread(function()
    lib.callback.register('Housing:server:GetWardrobe', function(source, identifier)
        if Config.useDataStore then
            local p = promise.new()

            local xPlayer = GetPlayerFromId(source)

            TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
                local count  = store.count('dressing')
                local labels = {}

                for i = 1, count, 1 do
                    local entry = store.get('dressing', i)
                    table.insert(labels, entry.label)
                end

                p:resolve(labels)
            end)

            return Citizen.Await(p)
        elseif IsResourceStarted('illenium-appearance') then
            local xPlayer = GetPlayerFromId(source)
            local result = MySQL.query.await(Config.SQLQueries[Config.framework].GetPlayerOutfits, {
                xPlayer.identifier
            })
            local labels = {}
            for i = 1, #result do
                table.insert(labels, result[i].label)
            end
            return (labels)
        else
            local data = GetOwnedHomeData(identifier)
            local list = {}
            if data.wardrobe then
                for i = 1, #data.wardrobe, 1 do
                    table.insert(list, data.wardrobe[i].label)
                end
            end
            return (list)
        end
    end)

    lib.callback.register('Housing:server:GetOutfit', function(source, identifier, label)
        if Config.useDataStore then
            local p = promise.new()
            local xPlayer = GetPlayerFromId(source)

            TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
                local count = store.count('dressing')
                for i = 1, count, 1 do
                    local entry = store.get('dressing', i)
                    if entry.label == label then
                        p:resolve(entry.skin)
                        break
                    end
                end
            end)

            return Citizen.Await(p)
        elseif IsResourceStarted('illenium-appearance') then
            local xPlayer = GetPlayerFromId(source)
            local result = MySQL.query.await(
                Config.SQLQueries[Config.framework].SelectPlayerOutfit, {
                    xPlayer.identifier,
                    label
                })
            if result then
                for k, v in pairs(result) do
                    return ({
                        model = v.model,
                        components = json.decode(v.components),
                        props = json.decode(v.props),
                    })
                end
            end
        else
            local data = GetOwnedHomeData(identifier)
            if data.wardrobe then
                for i = 1, #data.wardrobe, 1 do
                    if label == data.wardrobe[i].label then
                        return data.wardrobe[i].skin
                    end
                end
            end
        end
    end)
end)

RegisterNetEvent('Housing:server:SaveOutfit', function(identifier, label, skin)
    local source = source
    if Config.useDataStore then
        local xPlayer = GetPlayerFromId(source)
        TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
            local dressing = store.get('dressing')

            if dressing == nil then
                dressing = {}
            end

            table.insert(dressing, {
                label = label,
                skin  = skin
            })

            store.set('dressing', dressing)
        end)
    elseif IsResourceStarted('illenium-appearance') then
        local xPlayer = GetPlayerFromId(source)

        MySQL.insert(
            'INSERT INTO player_outfits (citizenid, outfitname, model, components, props) VALUES (?, ?, ?, ?, ?)',
            { xPlayer.identifier, label, skin.model, json.encode(skin.components), json.encode(skin.props), })
    else
        local data = GetOwnedHomeData(identifier)
        if data.wardrobe then
            table.insert(data.wardrobe, {
                label = label,
                skin = skin
            })
        else
            data.wardrobe = {
                { label = label, skin = skin }
            }
        end
        SaveOwnedHomeData(identifier, data)
    end
end)

RegisterNetEvent('Housing:server:DeleteOutfit', function(identifier, label)
    local source = source
    if Config.useDataStore then
        local xPlayer = GetPlayerFromId(source)

        TriggerEvent('esx_datastore:getDataStore', 'property', xPlayer.identifier, function(store)
            local dressing = store.get('dressing')

            if dressing == nil then
                dressing = {}
            end

            for i = 1, #dressing do
                if dressing[i].label == label then
                    TriggerClientEvent('Housing:notify', source, Locale['wardrobe'], Locale['deleted_outfit'], 'error',
                        2500)
                    table.remove(dressing, i)
                    break
                end
            end

            store.set('dressing', dressing)
        end)
    elseif IsResourceStarted('illenium-appearance') then
        local xPlayer = GetPlayerFromId(source)

        MySQL.rawExecute(Config.SQLQueries[Config.framework].DeletePlayerOutfit, {
            label,
            xPlayer.identifier
        })
    else
        local data = GetOwnedHomeData(identifier)
        if data.wardrobe then
            for i = 1, #data.wardrobe, 1 do
                if label == data.wardrobe[i].label then
                    TriggerClientEvent('Housing:notify', source, Locale['wardrobe'], Locale['deleted_outfit'], 'error',
                        2500)
                    table.remove(data.wardrobe, i)
                    break
                end
            end
        end
        SaveOwnedHomeData(identifier, data)
    end
end)
