function RegisterStorage(identifier, furniture, home, aptId)
    local stash = {
        id = 'storage:' .. identifier .. ':' .. furniture.identifier,
        label = home.name .. ' Storage',
        slots = tonumber(ModelList[furniture.model] and
            ModelList[furniture.model].slots or Config.FurnitureStorage.slots),
        weight = tonumber(ModelList[furniture.model] and
            ModelList[furniture.model].weight or Config.FurnitureStorage.weight),
        owner = home.complex == 'Apartment' and true or home:GetOwner()
    }
    if Config.Inventory == 'ox_inventory' then
        CreateThread(function()
            exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner)
        end)
    elseif Config.Inventory == 'origen_inventory' then
        exports.origen_inventory:RegisterStash(stash.id .. (aptId and ':' .. aptId or ''), {
            label = stash.label,
            slots = stash.slots,
            weight = stash.weight
        })
    end
end

if Config.Inventory == 'ox_inventory' then
    local hookId = exports.ox_inventory:registerHook('openInventory', function(payload)
        local xPlayer = GetPlayerFromId(payload.source)
        local result = SplitString(payload.inventoryId, ':')
        local home = Homes[result[2]]
        if home and xPlayer then
            if not Config.robbery.storageRobbery and not home:isKeyOwner(xPlayer.identifier) then
                return false
            end
            return true
        end
        return false
    end, {
        print = false,
        inventoryFilter = {
            '^storage:[%w]+',
        }
    })
end

function TransferStorageOwner(playerIdentifier, homeId)
    if Config.Inventory == 'ox_inventory' then
        ---@TODO figure out some shit with ox_inventory stashes T_T
        -- local home = Homes[homeId]
        -- if home and home.complex ~= 'Apartment' then
        --     for id, storage in pairs(home.storages) do
        --         print(id, storage, playerIdentifier)
        --         exports.ox_inventory:RegisterStash(id, storage.label, storage.slots, storage.weight, playerIdentifier)
        --     end
        -- end
        -- MySQL.update("UPDATE ox_inventory SET `owner` = ? WHERE `name` LIKE 'storage:" .. homeId .. ":%'",
        --     { playerIdentifier })
    end
end

function RegisterNonFurnitureStorage(id, label, slots, weight, aptId, owner)
    if Config.Inventory == 'ox_inventory' then
        exports.ox_inventory:RegisterStash(id, label, tonumber(slots), tonumber(weight), aptId and true or owner)
    elseif Config.Inventory == 'origen_inventory' then
        exports.origen_inventory:RegisterStash(id .. (aptId and ':' .. aptId or ''), {
            label = label,
            slots = slots,
            weight = weight
        })
    end
end

function RegisterGarage(homeId, name, data)
    local coords = data.coords

    if IsResourceStarted('qbx_garages') then
        exports.qbx_garages:RegisterGarage(homeId, {
            label = name,
            vehicleType = 'car',
            states = 1,
            canAccess = function(source)
                local player = exports.qbx_core:GetPlayer(source)
                return exports[GetCurrentResourceName()]:HasKey(homeId, player.PlayerData.citizenid)
            end,
            accessPoints = {
                {
                    coords = vec4(coords.x, coords.y, coords.z, coords.w),
                    spawn = vec4(coords.x, coords.y, coords.z, coords.w)
                }
            }
        })
    end
end

---Pay for furniture in the shop, you can customize it to use item or other stuff
---@param xPlayer any ESX or QB player object
---@param value {price: number, label: string, model: string}
---@return boolean
function PayFurniture(xPlayer, value)
    if GetMoney(xPlayer, Config.DefaultAccount) >= value.price then
        RemoveMoney(xPlayer, Config.DefaultAccount, value.price, 'Bought furniture ' .. value.label)
        return true
    end
    return false
end

---comment
---@param xPlayer any ESX or QB player object
---@param price number
---@param home HomeObject
function TaxHouse(xPlayer, price, home)
    if Config.tax.enable then
        if IsResourceStarted('ap-government') then
            exports['ap-government']:chargeCityTax(xPlayer.source, "Housing", price, Config.tax.account)
        elseif IsResourceStarted('bcs_companymanager') then
            AddCompanyMoney(Config.tax.society, price * Config.tax.percentage)
            RemoveMoney(xPlayer, Config.tax.account, price * Config.tax.percentage, 'Home Tax: ' .. home.name, home)
        end
    end
end

CreateThread(function()
    lib.callback.register('Housing:server:CheckItem', function(source, item, amount)
        local amount = amount or 1
        local xPlayer = GetPlayerFromId(source)
        if xPlayer then
            if Config.inventory == 'ox_inventory' then
                local xItem = exports.ox_inventory:Search(source, 'count', item)
                return (xItem >= amount)
            elseif Config.framework == 'ESX' then
                return (xPlayer.getInventoryItem(item).count >= amount)
            else
                local xItem = xPlayer.Functions.GetItemByName(item)
                if xItem and xItem.amount >= amount then
                    return (true)
                else
                    return (false)
                end
            end
        else
            return (false)
        end
    end)

    if Config.robbery.enable then
        RegisterUsableItem(Config.robbery.lockpickItem, function(source)
            TriggerClientEvent('Housing:client:StartLockpick', source)
        end)
    end

    lib.callback.register('Housing:server:CheckRobbery', function(source, identifier, aptId)
        local police = CountJob('police')
        if (aptId and Config.robbery.ApartmentRobbery) or not aptId then
            if police >= Config.robbery.minPolice then
                if Config.robbery.offlineRobbery then
                    return (true)
                else
                    local home = Homes[identifier]
                    if home and home:GetOwner(aptId) then
                        local xPlayer = GetPlayerFromIdentifier(home:GetOwner(aptId))
                        if xPlayer then
                            return (true)
                        else
                            return (false)
                        end
                    else
                        return (false)
                    end
                end
            else
                return (false)
            end
        else
            return false
        end
    end)
end)

RegisterNetEvent('Housing:server:OpenStash', function(identifier, weight, slots)
    local src = source
    if IsResourceStarted('origen_inventory') then
        exports['origen_inventory']:OpenInventory(src, 'stash', identifier)
    end
end)

RegisterNetEvent('Housing:server:CreateApartment', function(homeId)
    local src = source
    local home = Homes[homeId]
    if home then
        for i = 1, #StarterApartment do
            if StarterApartment[i].identifier == homeId then
                local aptId = GiveHouse(homeId, src)
                Wait(2500)
                lib.callback('Housing:client:callback:EnterHome', src, function()
                    TriggerClientEvent('qb-clothes:client:CreateFirstCharacter', src)
                end, homeId, false, aptId)
                break
            end
        end
    end
end)

RegisterNetEvent('Housing:server:RemoveItem', function(item, amount)
    local amount = amount or 1
    local xPlayer = GetPlayerFromId(source)
    if xPlayer then
        if Config.framework == 'ESX' then
            xPlayer.removeInventoryItem(item, amount)
        elseif Config.framework == 'QB' then
            xPlayer.Functions.RemoveItem(item, amount)
        end
    end
end)

CreateThread(function()
    versionCheck('baguscodestudio/bcs-housing-control')
end)

RegisterNetEvent('Housing:server:LogoutLocation', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local MyItems = Player.PlayerData.items
    MySQL.update('UPDATE players SET inventory = ? WHERE citizenid = ?',
        { json.encode(MyItems), Player.PlayerData.citizenid })
    QBCore.Player.Logout(src)
    TriggerClientEvent('qb-multicharacter:client:chooseChar', src)
end)

--- Sends a message to desired phone script
---@param identifier string Player identifier
---@param msgData {sender: string, subject: string, message: string}
function SendPhoneMessage(identifier, msgData)
    if IsResourceStarted('lb-phone') then
        local phoneNum = exports["lb-phone"]:GetEquippedPhoneNumber(identifier)
        if not phoneNum then return end
        local email = exports["lb-phone"]:GetEmailAddress(phoneNum)
        msgData.to = email
        local success, id = exports["lb-phone"]:SendMail(msgData)
    elseif IsResourceStarted('gksphone') then
        msgData.image = '/html/static/img/icons/mail.png'
        exports["gksphone"]:SendNewMailOffline(identifier, msgData)
    elseif IsResourceStarted('roadphone') then
        msgData.image = '/public/html/static/img/icons/app/mail.png'
        TriggerEvent('roadphone:receiveMail:offline', identifier, msgData)
    elseif IsResourceStarted('qs-smartphone') then
        TriggerEvent('qs-smartphone:server:sendNewMailToOffline', identifier, msgData)
    elseif IsResourceStarted('qb-phone') then
        exports['qb-phone']:sendNewMailToOffline(identifier, msgData)
    end
end

function discordlog(type, title, msg)
    local data = sv_config[type]
    if data then
        PerformHttpRequest(data.webhook, function(err, text, headers)
            end, 'POST',
            json.encode({
                username = data.username,
                avatar_url = data.avatar,
                embeds = {
                    {
                        ['title'] = title,
                        ['color'] = data.color,
                        ['description'] = msg,
                        ['footer'] = { ['text'] = sv_config.server }
                    },
                }
            }),
            { ['Content-Type'] = 'application/json' }, {})
    end
end

RegisterNetEvent('Housing:addlog', discordlog)

function versionCheck(repository)
    local resource = GetCurrentResourceName()

    local currentVersion = GetResourceMetadata(resource, 'version', 0)

    if currentVersion then
        currentVersion = currentVersion:match('%d%.%d+%.%d+')
    end

    if not currentVersion then
        return print(("^1Unable to determine current resource version for '%s' ^0"):format(
            resource))
    end

    SetTimeout(1000, function()
        PerformHttpRequest(('https://api.github.com/repos/%s/releases/latest'):format(repository),
            function(status, response)
                if status ~= 200 then return end

                response = json.decode(response)
                if response.prerelease then return end

                local latestVersion = response.tag_name:match('%d%.%d+%.%d+')
                if not latestVersion or latestVersion == currentVersion then return end

                local cMajor, cMinor = string.strsplit('.', currentVersion, 2)
                local lMajor, lMinor = string.strsplit('.', latestVersion, 2)

                if tonumber(cMajor) < tonumber(lMajor) or tonumber(cMinor) < tonumber(lMinor) then
                    return print(('^3An update is available for %s (current version: %s)\r\n%s^0'):format(resource,
                        currentVersion, response.html_url))
                end
            end, 'GET')
    end)
end
