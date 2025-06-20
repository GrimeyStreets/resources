if Config.HousingScript ~= "loaf_housing" then
    return
end

local resourceName = "loaf_housing"

while GetResourceState(resourceName) ~= "started" do
    debugprint("Waiting for housing script to start...")
    Wait(1000)
end

local selectPropertyQuery = ""
local searchPropertiesQuery = ""

local loaf = exports[resourceName]

if Config.Framework == "esx" then
    selectPropertyQuery = [[
        SELECT
            p.owner,
            p.propertyid,
            CONCAT(u.firstname, ' ', u.lastname) AS `name`

        FROM loaf_properties p

        LEFT JOIN users u
            ON u.identifier = p.owner
    ]]

    searchPropertiesQuery = selectPropertyQuery .. [[
        WHERE
            CONCAT(u.firstname, ' ', u.lastname) LIKE ?
            OR p.propertyid LIKE ?

        LIMIT ?, ?
    ]]
elseif Config.Framework == "qb" then
    selectPropertyQuery = [[
        SELECT
            p.owner,
            p.propertyid,
            CONCAT(JSON_VALUE(u.charinfo, '$.firstname'), ' ', JSON_VALUE(u.charinfo, '$.lastname')) AS `name`

        FROM loaf_properties p

        LEFT JOIN players u
            ON u.citizenid = p.owner
    ]]

    searchPropertiesQuery = selectPropertyQuery .. [[
        WHERE
            CONCAT(JSON_VALUE(u.charinfo, '$.firstname'), ' ', JSON_VALUE(u.charinfo, '$.lastname')) LIKE ?
            OR p.propertyid LIKE ?

        LIMIT ?, ?
    ]]
end

local function EncodePropertyId(owner, id)
    return "owner:" .. owner .. ",id:" .. id
end

local function DecodePropertyId(id)
    local owner, propertyId = string.match(id, "owner:(.+),id:([^,]+)$")

    return owner, propertyId and tonumber(propertyId)
end

local function FormatPropery(property)
    local propertyData = loaf:GetHouse(property.propertyid)

    property.label = propertyData?.label or property.propertyid
    property.id = EncodePropertyId(property.owner, property.propertyid)

    property.owner = {
        name = property.name,
        identifier = property.owner
    }

    property.name = nil
    property.propertyid = nil

    if propertyData?.entrance then
        property.location = {
            x = propertyData.entrance.x,
            y = propertyData.entrance.y,
        }
    end

    return property
end

---@param query string
---@param page? number
---@return table[]
function SearchProperties(query, page)
    query = "%" .. query .. "%"

    local properties = MySQL.query.await(
        searchPropertiesQuery,
        { query, query, (page or 0) * 10, 10 }
    )

    for i = 1, #properties do
        properties[i] = FormatPropery(properties[i])
    end

    return properties
end

function GetProperty(id)
    local owner, propertyId = DecodePropertyId(id)

    if not owner or not propertyId then
        debugprint("Failed to decode property id", id)
        return
    end

    local property = MySQL.single.await(
        selectPropertyQuery .. " WHERE p.owner = ? AND p.propertyid = ?",
        { owner, propertyId }
    )

    if not property then
        return
    end

    return FormatPropery(property)
end

---@param identifier string
---@return { id: string, label: string }[]
function GetPlayerProperties(identifier)
    local properties = MySQL.query.await("SELECT owner, propertyid FROM loaf_properties WHERE owner = ?", { identifier })

    for i = 1, #properties do
        local property = properties[i]
        local propertyData = loaf:GetHouse(property.propertyid)

        properties[i] = {
            id = EncodePropertyId(property.owner, property.propertyid),
            label = propertyData?.label or property.propertyid
        }
    end

    return properties
end
