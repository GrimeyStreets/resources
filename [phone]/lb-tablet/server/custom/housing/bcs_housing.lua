if Config.HousingScript ~= "bcs_housing" then
    return
end

local resourceName = "bcs_housing"

local bcs = exports[resourceName]

local function EncodePropertyId(owner, id)
    if not owner or not id then
        return nil
    end
    return "owner:" .. tostring(owner) .. ",id:" .. tostring(id)
end

local function DecodePropertyId(id)
    if not id then
        return nil, nil
    end
    local owner, propertyId = string.match(id, "owner:(.+),id:([^,]+)$")
    if not owner or not propertyId then
        return nil, nil
    end
    return owner, propertyId
end

local function FormatProperty(property)
    if not property or not property.identifier or not property.owner then
        return nil
    end
    
    local propertyData = bcs:GetHome(property.identifier)
    if not propertyData then
        return nil
    end

    property.label = propertyData.name or property.identifier
    property.id = EncodePropertyId(property.owner, property.identifier)

    if not property.id then
        return nil
    end

    property.owner = {
        name = property.owner,
        identifier = property.owner
    }

    property.identifier = nil

    if propertyData.entry then
        property.location = {
            x = propertyData.entry.x,
            y = propertyData.entry.y,
        }
    end

    return property
end

function GetPlayerProperties(identifier)
    if not identifier then
        return {}
    end

    local ownedHomes = bcs:GetOwnedHomes(identifier)

    if not ownedHomes or #ownedHomes == 0 then
        return {}
    end

    local properties = {}

    for _, home in pairs(ownedHomes) do
        local encodedId = EncodePropertyId(identifier, home.identifier)
        if encodedId then
            table.insert(properties, {
                id = encodedId,
                label = home.name or home.identifier
            })
            --print("Added property:", encodedId)
        else
            print("Skipping property due to encoding failure", home)
        end
    end

    return properties
end