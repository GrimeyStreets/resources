function GetShopUpgrades()
    return MySQL.Sync.fetchAll([[
        SELECT zone, name
        FROM tuning_upgrades
    ]])
end

function AddTuningUpgrade(shopName, name, cost)
    MySQL.Sync.execute([[
        INSERT INTO tuning_upgrades
        (`zone`, `name`, `cost`)
        VALUES (@shopName, @name, @cost)
    ]], {
        ['@shopName'] = shopName,
        ['@name'] = name,
        ['@cost'] = cost,
    })
end

function RemoveTuningUpgrade(shopName, upgradeName)
    MySQL.Sync.execute([[
        DELETE FROM tuning_upgrades
        WHERE zone=@shopName AND name=@name
    ]], {
        ['@shopName'] = shopName,
        ['@name'] = upgradeName,
    })
end

function CreateVehicleInDb(lp, props, nitrous, hasNitrous, ent)
    local netId = NetworkGetNetworkIdFromEntity(ent)
    ensureValidNetId(netId)

    lp = trimWhitespace(lp)
    MySQL.Sync.execute([[
        INSERT INTO vehicle_tuning
        (`plate`, `mods`, `nitrous`, `hasNitrous`, `created_at`)
        VALUES (@plate, @mods, @nitrous, @hasnitrous, NOW())
    ]], {
        ['@plate'] = lp,
        ['@mods'] = json.encode(props),
        ['@nitrous'] = nitrous,
        ['@hasnitrous'] = hasNitrous
    })
end

function setNitrousInDb(lp, nitrous, hasNitrous, ent)
    local netId = NetworkGetNetworkIdFromEntity(ent)
    
    ensureValidNetId(netId)

    lp = trimWhitespace(lp)
    MySQL.Sync.execute('UPDATE vehicle_tuning SET nitrous=@nitrous, hasNitrous=@hasNitrous WHERE plate=@lp', {
        ['@nitrous'] = nitrous,
        ['@hasNitrous'] = (hasNitrous and 1) or 0,
        ['@lp'] = lp,
    })
end

function SaveVehicle(lp, properties, ent)
    local netId = NetworkGetNetworkIdFromEntity(ent)
    
    ensureValidNetId(netId)

    local veh = LoadVehicle(lp, netId)
    lp = trimWhitespace(lp)
    if veh and veh.licensePlate ~= '' then
        local props = veh.properties
        for _, m in pairs(properties) do
            -- print("M1", m[1], "M2", m[2])
            props[m[1]] = m[2]
        end
        if DoesVehicleExistInDatabase(lp, netId) then
            MySQL.Sync.execute('UPDATE vehicle_tuning SET mods=@p WHERE plate=@lp', {
                ['@p'] = json.encode(props),
                ['@lp'] = lp,
            })
        else
            nitrousState = (1 and Entity(ent).state.rcoreHasNitrous) or 0
            CreateVehicleInDb(lp, props, Entity(ent).state.rcoreNitrous or 0, (1 and Entity(ent).state.rcoreHasNitrous) or 0, ent)
        end
    end
end

function LoadVehicle(lp, netId)
    ensureValidNetId(netId)

    lp = trimWhitespace(lp)
    local vehicles = MySQL.Sync.fetchAll([[
        SELECT mods, nitrous, hasNitrous
        FROM vehicle_tuning
        WHERE plate=@lp
    ]], {['@lp'] = lp})
    local props = {}
    if vehicles[1] ~= nil and vehicles[1].mods ~= nil and vehicles[1].mods ~= '' then
        props = json.decode(vehicles[1].mods)
        nitrous = vehicles[1].nitrous
        hasNitrous = vehicles[1].hasNitrous
    end

    return {
        licensePlate = lp,
        properties = props,
        nitrous = nitrous,
        hasNitrous = hasNitrous
    }
end

function DoesVehicleExistInDatabase(lp, netId)
    if netId >= 0 then
        ensureValidNetId(netId)
    end

    lp = trimWhitespace(lp)
    local vehicles = MySQL.Sync.fetchAll([[
        SELECT mods
        FROM vehicle_tuning
        WHERE plate=@lp
    ]], {['@lp'] = lp})
    return vehicles[1] ~= nil
end

function ensureValidNetId(netId)
    if not netId then
        print("Error: NetID missing")
        return netId
    end

    local ent = NetworkGetEntityFromNetworkId(netId)
    if not ent or ent <= 0 then
        print("Error: NetID provided, but not a valid networked entity", netId)
    end

    return netId
end