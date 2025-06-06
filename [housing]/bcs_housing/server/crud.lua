RegisterNetEvent('Housing:server:DeleteApartment', function(identifier)
    local source = source
    local xPlayer = GetPlayerFromId(source)
    local allowed = false

    if not xPlayer then return end
    allowed = isAdmin(xPlayer)
    local home = Homes[identifier]
    if home and home.realestate and CheckRealestateGrade('deletehome', home.realestate, GetJobGrade(xPlayer)) then
        allowed = true
    end

    if not allowed then
        TriggerClientEvent('Housing:notify', xPlayer.source, Locale['housing'], Locale['not_allowed'], 'error', 3000)
        return
    end
    local owned_row = MySQL.query.await("DELETE FROM house_apartment WHERE identifier=?", { identifier })
    MySQL.query("DELETE FROM house WHERE identifier=?", { identifier }, function(row)
        if row.affectedRows > 0 then
            TriggerClientEvent("Housing:notify", source, Locale["housing"],
                string.format(Locale["home_deleted"], home.name), "info", 3000)
            if xPlayer then
                discordlog("realestate", Locale["log_house_deleted"],
                    string.format(Locale["log_house_deleted"], home.name, GetName(xPlayer), xPlayer.identifier))
            else
                discordlog("realestate", Locale["log_house_deleted"],
                    string.format(Locale["log_house_deleted"], home.name, "Auto Removal", "System"))
            end
            Homes[identifier] = nil
            TriggerClientEvent("Housing:client:DeleteHome", -1, identifier)
            debugPrint("Deleting home data " .. row.affectedRows .. " | " ..
                owned_row.affectedRows)
        end
    end)
end)

RegisterNetEvent("Housing:server:DeleteHome", function(identifier, plySrc)
    local source = plySrc or source
    local xPlayer = GetPlayerFromId(source)
    local allowed = false

    if not xPlayer then return end
    allowed = isAdmin(xPlayer)
    local home = Homes[identifier]
    if home and home.realestate and CheckRealestateGrade('deletehome', home.realestate, GetJobGrade(xPlayer)) then
        allowed = true
    end

    if not allowed then
        TriggerClientEvent('Housing:notify', xPlayer.source, Locale['housing'], Locale['not_allowed'], 'error', 3000)
        return
    end

    local owned_row = MySQL.query.await("DELETE FROM house_owned WHERE identifier=?", { identifier })
    local mortgage = MySQL.query.await("DELETE FROM house_mortgage WHERE identifier=?", { identifier })
    MySQL.query("DELETE FROM house WHERE identifier=?", { identifier }, function(row)
        if row.affectedRows > 0 then
            TriggerClientEvent("Housing:notify", source, Locale["housing"],
                string.format(Locale["home_deleted"], home.name), "info", 3000)
            if xPlayer then
                discordlog("realestate", Locale["log_house_deleted"],
                    string.format(Locale["log_house_deleted"], home.name, GetName(xPlayer), xPlayer.identifier))
            else
                discordlog("realestate", Locale["log_house_deleted"],
                    string.format(Locale["log_house_deleted"], home.name, "Auto Removal", "System"))
            end
            Homes[identifier] = nil
            TriggerClientEvent("Housing:client:DeleteHome", -1, identifier)
            debugPrint("Deleting home data " .. row.affectedRows .. " | " ..
                owned_row.affectedRows)
        end
    end)
end)

RegisterNetEvent("Housing:server:SellHome", function(identifier)
    local source = source
    local xPlayer = GetPlayerFromId(source)
    local aptId

    if JobConfig.sellHome.allowed and xPlayer then
        local home = Homes[identifier]
        local price = home.price
        if not home:GetOwner() and home.complex ~= 'Apartment' then
            return print('This home has been sold', identifier)
        elseif home.complex == 'Apartment' then
            local result = MySQL.single.await(
                'SELECT apartment FROM house_apartment WHERE identifier = ? AND owner = ?',
                { home.identifier, xPlayer.identifier })
            if not result then
                return print(('%s does not own %s apartment!'):format(xPlayer.identifier, home.identifier))
            else
                aptId = result.apartment
            end
        elseif not home.permission.sell and not isAdmin(xPlayer) then
            return TriggerClientEvent('Housing:notify', source, Locale['housing'], Locale['not_allowed_to_sell'], 'error',
                3000)
        elseif home:GetOwner() ~= xPlayer.identifier and not (JobConfig.jobs[GetJobName(xPlayer)] and GetJobName(xPlayer) == home.realestate) then
            return TriggerClientEvent('Housing:notify', source, Locale['housing'], Locale['not_allowed_to_sell'], 'error',
                3000)
        end
        if home.data.downpayment and home.data.downpayment >= 0 and home.plan then
            price = home.data.downpayment
        end
        local returnedMoney = JobConfig.sellHome.resellPercentage * price / 100
        AddMoney(xPlayer, "bank", returnedMoney, "Sell home")
        if JobConfig.sellHome.resellToCompany and home.realestate then
            RemoveCompanyMoney(home.realestate, returnedMoney)
        end
        discordlog("realestate", Locale["log_sold_house"],
            string.format(Locale["log_sold_house_msg"], home.name, returnedMoney, GetName(xPlayer), xPlayer.identifier))
        home:RevokeOwner(xPlayer.identifier)
        if home.complex == 'Apartment' then
            TriggerClientEvent('Housing:client:RemoveApartment', -1, identifier, aptId)
        else
            TriggerClientEvent('Housing:client:UpdateOwner', -1, identifier)
        end
        TriggerClientEvent("Housing:notify", source, Locale["housing"], string.format(Locale["home_sold"], returnedMoney),
            "success", 3000)
    else
        TriggerClientEvent("Housing:notify", source, Locale["housing"],
            Locale["home_cannot_be_sold"], "error", 3000)
    end
end)

RegisterNetEvent("Housing:server:TransferOwner", function(homeId, target)
    local source = source
    local xTarget = GetPlayerFromId(target)
    local xPlayer = GetPlayerFromId(source)
    if xTarget and xPlayer then
        target = type(tonumber(target)) == 'number' and xTarget.identifier or target
        local home = Homes[homeId]

        if not home.permission.transfer and not isAdmin(xPlayer) and not isAgent(xPlayer, home.realestate) then
            return TriggerClientEvent('Housing:notify', xPlayer.source, Locale['housing'],
                Locale['not_allowed_to_transfer'], 'error', 3000)
        end

        TriggerClientEvent("Housing:notify", target, Locale["housing"],
            string.format(Locale["transfer_to_you"], GetName(xPlayer)),
            "success", 3000)

        home:TransferOwner(target)
        TransferStorageOwner(target, homeId)
        discordlog("realestate", Locale["log_transferred_house"],
            string.format(Locale["log_transferred_house_msg"], home.name, GetName(xPlayer), xPlayer.identifier,
                GetName(xTarget), xTarget.identifier))

        if xPlayer then
            TriggerClientEvent("Housing:notify", source, Locale["housing"],
                string.format(Locale["transfer_success"], GetName(xTarget)), "success", 3000)
        end
        TriggerClientEvent("Housing:client:UpdateOwner", -1, homeId, xTarget.identifier)
    else
        TriggerClientEvent("Housing:notify", source, Locale["housing"],
            Locale["target_offline"], "error", 3000)
    end
end)

RegisterNetEvent("Housing:server:BuyHome", function(identifier)
    local source = source
    local xPlayer = GetPlayerFromId(source)
    if not xPlayer then return end

    local home = Homes[identifier];
    local ownedHouses = exports[GetCurrentResourceName()]:GetOwnedHomes(xPlayer.identifier)
    local account = home.payment == 'Rent' and Config.rent.paymentAccount or Config.DefaultAccount

    if GetMoney(xPlayer, account, home) >= home.price and not home.configuration.disableBuy then
        if (Config.LimitHouses <= 0 or #ownedHouses < Config.LimitHouses) then
            TaxHouse(xPlayer, home.price, home)
            RemoveMoney(xPlayer, account, home.price, "Bought " .. home.name .. ' property', home)
            local msgData = {
                sender = Locale['housing'],
                subject = string.format(Locale["house_bought"], home.name),
                message = string.format(Locale["house_detail"], home.name, home.price)
            }
            SendPhoneMessage(xPlayer.identifier, msgData)
            if home.realestate then AddCompanyMoney(home.realestate, home.price) end
            local result = GiveNonApartmentHome(home, xPlayer)
            if result then
                TriggerClientEvent("Housing:notify", source, Locale["housing"],
                    string.format(Locale["bought_home"], home.name, home.price), "success", 3000)
                discordlog("realestate", Locale["log_bought_house"],
                    string.format(Locale["log_bought_house_msg"], home.name, home.price, GetName(xPlayer), xPlayer
                        .identifier))
            end
        else
            TriggerClientEvent("Housing:notify", source, Locale["housing"], Locale["too_much_property"], "error", 3000)
        end
    else
        TriggerClientEvent("Housing:notify", source, Locale["housing"],
            string.format(Locale["not_enough_money"], home.price), "error", 3000)
    end
end)

RegisterNetEvent('Housing:server:BuyApartment', function(homeId)
    local source = source
    local xPlayer = GetPlayerFromId(source)
    if not xPlayer then return end

    local home = Homes[homeId];
    local ownedHouses = exports[GetCurrentResourceName()]:GetOwnedHomes(xPlayer.identifier)
    local account = home.payment == 'Rent' and Config.rent.paymentAccount or Config.DefaultAccount

    if GetMoney(xPlayer, account, home) >= home.price then
        if (Config.LimitHouses <= 0 or #ownedHouses < Config.LimitHouses) then
            TaxHouse(xPlayer, home.price, home)
            RemoveMoney(xPlayer, account, home.price, "Bought " .. home.name .. ' property', home)
            local msgData = {
                sender = Locale['housing'],
                subject = string.format(Locale["house_bought"], home.name),
                message = string.format(Locale["house_detail"], home.name, home.price)
            }
            SendPhoneMessage(xPlayer.identifier, msgData)
            if home.realestate then AddCompanyMoney(home.realestate, home.price) end
            local result = GiveApartment(home, xPlayer.identifier, xPlayer.source)
            if result then
                discordlog("realestate", Locale["log_bought_house"],
                    string.format(Locale["log_bought_house_msg"], home.name, home.price, GetName(xPlayer), xPlayer
                        .identifier))
            end
        else
            TriggerClientEvent('Housing:notify', source, Locale['housing'], Locale['too_much_property'], 'error', 3000)
        end
    else
        TriggerClientEvent("Housing:notify", source, Locale["housing"],
            string.format(Locale["not_enough_money"], home.price), "error", 3000)
    end
end)
