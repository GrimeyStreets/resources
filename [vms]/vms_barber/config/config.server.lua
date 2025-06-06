SV = {}


-- █   █ ██▀ ██▄ █▄█ ▄▀▄ ▄▀▄ █▄▀
-- ▀▄▀▄▀ █▄▄ █▄█ █ █ ▀▄▀ ▀▄▀ █ █
SV.Webhooks = {
    ['EMPLOYEE_BONUS'] = "https://discord.com/api/webhooks/XXXXXXXXXXXXXXXXX",
    ['EMPLOYEE_CHANGE_GRADE'] = "https://discord.com/api/webhooks/XXXXXXXXXXXXXXXXX",
    ['EMPLOYEE_FIRE'] = "https://discord.com/api/webhooks/XXXXXXXXXXXXXXXXX",
    ['EMPLOYEE_HIRE'] = "https://discord.com/api/webhooks/XXXXXXXXXXXXXXXXX",
    ['WITHDRAW'] = "https://discord.com/api/webhooks/XXXXXXXXXXXXXXXXX",
    ['DEPOSIT'] = "https://discord.com/api/webhooks/XXXXXXXXXXXXXXXXX",
    ['ANNOUNCEMENT'] = "https://discord.com/api/webhooks/XXXXXXXXXXXXXXXXX",
}

SV.WebhookText = {
    ['TITLE.EMPLOYEE_BONUS'] = "💸 Employee Bonus",
    ['DESCRIPTION.EMPLOYEE_BONUS'] = [[
        Player %s [%s] gave a bonus to employee %s of %s$ in tuning %s
    ]],

    ['TITLE.EMPLOYEE_CHANGE_GRADE'] = "👨‍💼 Employee Change Grade",
    ['DESCRIPTION.EMPLOYEE_CHANGE_GRADE'] = [[
        Player %s [%s] changed the job grade of player %s to %s in tuning %s
    ]],

    ['TITLE.EMPLOYEE_FIRE'] = "❌ Employee Fire",
    ['DESCRIPTION.EMPLOYEE_FIRE'] = [[
        Player %s [%s] fired an employee %s to tuning %s
    ]],

    ['TITLE.EMPLOYEE_HIRE'] = "✅ Employee Hire",
    ['DESCRIPTION.EMPLOYEE_HIRE'] = [[
        Player %s [%s] hired an employee %s (%s) to tuning %s
    ]],

    ['TITLE.WITHDRAW'] = "💲 Withdraw",
    ['DESCRIPTION.WITHDRAW'] = [[
        Player %s [%s] withdrew $%s from tuning %s
    ]],

    ['TITLE.DEPOSIT'] = "💲 Deposit",
    ['DESCRIPTION.DEPOSIT'] = [[
        Player %s [%s] deposit $%s to tuning %s
    ]],
    
    ['TITLE.ANNOUNCEMENT'] = "📰 New Announcement",
    ['DESCRIPTION.ANNOUNCEMENT'] = [[
        Player %s [%s] wrote an announcement in tuning %s with the content:
        ```%s```
    ]],
    
}

SV.Webhook = function(webhook_id, title, description, color, footer)
    local DiscordWebHook = SV.Webhooks[webhook_id]
    local embeds = {{
        ["title"] = title,
        ["type"] = "rich",
        ["description"] = description,
        ["color"] = color,
        ["footer"] = {
            ["text"] = footer..' - '..os.date(),
        },
    }}
    PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({embeds = embeds}), {['Content-Type'] = 'application/json'})
end


-- █▀ █▀▄ ▄▀▄ █▄ ▄█ ██▀ █   █ ▄▀▄ █▀▄ █▄▀
-- █▀ █▀▄ █▀█ █ ▀ █ █▄▄ ▀▄▀▄▀ ▀▄▀ █▀▄ █ █
SV.getPlayer = function(src)
    if Config.Core == "ESX" then
        return ESX.GetPlayerFromId(src)
    elseif Config.Core == "QB-Core" then
        return QBCore.Functions.GetPlayer(src)
    end
end

SV.getIdentifier = function(xPlayer)
    if Config.Core == "ESX" then
        return xPlayer.identifier
    elseif Config.Core == "QB-Core" then
        return xPlayer.PlayerData.citizenid
    end
end

SV.getPlayerByIdentifier = function(identifier)
    if Config.Core == "ESX" then
        return ESX.GetPlayerFromIdentifier(identifier)
    elseif Config.Core == "QB-Core" then
        return QBCore.Functions.GetPlayerByCitizenId(identifier)
    end
end

SV.getMoney = function(xPlayer, moneyType)
    if Config.Core == "ESX" then
        local moneyType = moneyType == 'cash' and 'money' or moneyType
        return xPlayer.getAccount(moneyType).money
    elseif Config.Core == "QB-Core" then
        return xPlayer.Functions.GetMoney(moneyType)
    end
end

SV.addMoney = function(xPlayer, moneyType, count)
    if Config.Core == "ESX" then
        local moneyType = moneyType == 'cash' and 'money' or moneyType
        xPlayer.addAccountMoney(moneyType, count)
    elseif Config.Core == "QB-Core" then
        xPlayer.Functions.AddMoney(moneyType, count)
    end
end

SV.removeMoney = function(xPlayer, moneyType, count)
    if Config.Core == "ESX" then
        local moneyType = moneyType == 'cash' and 'money' or moneyType
        xPlayer.removeAccountMoney(moneyType, count)
    elseif Config.Core == "QB-Core" then
        xPlayer.Functions.RemoveMoney(moneyType, count)
    end
end

SV.getCharacterName = function(xPlayer)
    if Config.Core == "ESX" then
        return xPlayer.getName()
    elseif Config.Core == "QB-Core" then
        return xPlayer.PlayerData.charinfo.firstname .. ' ' .. xPlayer.PlayerData.charinfo.lastname
    end
end

SV.getPlayerJob = function(xPlayer)
    if Config.Core == "ESX" then
        return xPlayer.job.name
    elseif Config.Core == "QB-Core" then
        return xPlayer.PlayerData.job.name
    end
end

SV.setPlayerJob = function(src, xPlayer, jobName, grade, isOffline)
    if jobName then
        if Config.Core == "ESX" then
            xPlayer.setJob(jobName, grade)
        elseif Config.Core == "QB-Core" then
            xPlayer.Functions.SetJob(jobName, grade)
        end
    else
        if not isOffline then
            if Config.Core == "ESX" then
                xPlayer.setJob('unemployed', 0)
            elseif Config.Core == "QB-Core" then
                xPlayer.Functions.SetJob('unemployed')
            end
        else
            if Config.Core == "ESX" then
                MySQL.Async.execute(
                    'UPDATE users SET job = @job, job_grade = @job_grade WHERE identifier = @identifier', {
                        ['@job'] = 'unemployed',
                        ['@job_grade'] = '0',
                        ['@identifier'] = xPlayer
                    })
            elseif Config.Core == "QB-Core" then
                -- TriggerClientEvent("vms_tuning:notification", src, TRANSLATE('notify.employees:player_is_offline'), 4500, 'error')
            end
        end
    end
end

SV.isPlayerEmployee = function(xPlayer, jobName)
    if Config.Core == "ESX" then
        return xPlayer.job.name == jobName
    elseif Config.Core == "QB-Core" then
        return xPlayer.PlayerData.job.name == jobName
    end
end

SV.isPlayerManager = function(xPlayer, jobName, storeId)
    local managerGrades = Config.Barbers[storeId].manager_grades
    if Config.Core == "ESX" then
        if xPlayer.job.name ~= jobName then
            return false
        end

        if type(managerGrades) == 'table' then
            for _, job in pairs(managerGrades) do
                if xPlayer.job.grade_name == job.grade then
                    return true
                end
            end
        else
            return xPlayer.job.grade_name == managerGrades
        end
    elseif Config.Core == "QB-Core" then
        if xPlayer.PlayerData.job.name ~= jobName then
            return false
        end

        if type(managerGrades) == 'table' then
            for _, job in pairs(managerGrades) do
                if xPlayer.PlayerData.job.grade.name == job.grade then
                    return true
                end
            end
        else
            return xPlayer.PlayerData.job.grade.name == managerGrades
        end

    end
end

SV.isPlayerBoss = function(xPlayer, jobName, storeId)
    local bossGrades = Config.Barbers[storeId].boss_grades
    if Config.Core == "ESX" then
        if xPlayer.job.name ~= jobName then
            return false
        end

        if type(bossGrades) == 'table' then
            for _, job in pairs(bossGrades) do
                if xPlayer.job.grade_name == job.grade then
                    return true
                end
            end
        else
            return xPlayer.job.grade_name == bossGrades
        end

    elseif Config.Core == "QB-Core" then
        if xPlayer.PlayerData.job.name ~= jobName then
            return false
        end

        if type(bossGrades) == 'table' then
            for _, job in pairs(bossGrades) do
                if xPlayer.PlayerData.job.grade.name == job.grade then
                    return true
                end
            end
        else
            return xPlayer.PlayerData.job.grade.name == bossGrades
        end

    end
end

-- ▄▀▀ █ █ ▄▀▀ ▀█▀ ▄▀▄ █▄ ▄█   ██▄ ▄▀▄ █   ▄▀▄ █▄ █ ▄▀▀ ██▀
-- ▀▄▄ ▀▄█ ▄██  █  ▀▄▀ █ ▀ █   █▄█ █▀█ █▄▄ █▀█ █ ▀█ ▀▄▄ █▄▄
-- @getSocietyMoney: custom function, it is used when you don't use Config.UseBuildInCompanyBalance, you should customize your company money storage system, cb is supposed to return a number
SV.getSocietyMoney = function(societyName, cb)
    if GetResourceState('cs_bossmenu') == "started" then
        local society = exports['cs_bossmenu']:GetAccount(societyName)
        cb(society)

    elseif GetResourceState('okokBanking') == "started" then
        local society = exports['okokBanking']:GetAccount(societyName)
        cb(society)

    elseif GetResourceState('qb-banking') == "started" then
        local society = exports['qb-banking']:GetAccountBalance(societyName)
        cb(society)

    elseif GetResourceState('qb-management') == "started" then
        local society = exports['qb-management']:GetAccount(societyName)
        cb(society)

    elseif GetResourceState('esx_society') == "started" then
        TriggerEvent('esx_addonaccount:getSharedAccount', societyName, function(account)
            cb(account.money)
        end)

    else
        print('^5[INFO] ^7No society found for your server, go to vms_tuning/config/config.server.lua and adjust ^2SV.getSocietyMoney^7!')

    end
end

-- @addSocietyMoney: custom function, it is used when you don't use Config.UseBuildInCompanyBalance, you should customize your company money storage system
SV.addSocietyMoney = function(societyName, amount)
    if GetResourceState('cs_bossmenu') == "started" then
        exports['cs_bossmenu']:AddMoney(societyName, amount)

    elseif GetResourceState('okokBanking') == "started" then
        exports['okokBanking']:AddMoney(societyName, amount)

    elseif GetResourceState('qb-banking') == "started" then
        exports['qb-banking']:AddMoney(societyName, amount)

    elseif GetResourceState('qb-management') == "started" then
        exports['qb-management']:AddMoney(societyName, amount)

    elseif GetResourceState('esx_society') == "started" then
        TriggerEvent('esx_addonaccount:getSharedAccount', societyName, function(account)
            account.addMoney(amount)
        end)

    else
        print('^5[INFO] ^7No society found for your server, go to vms_tuning/config/config.server.lua and adjust ^2SV.addSocietyMoney^7!')

    end
end

-- @removeSocietyMoney: custom function, it is used when you don't use Config.UseBuildInCompanyBalance, you should customize your company money storage system
SV.removeSocietyMoney = function(societyName, amount)
    if GetResourceState('cs_bossmenu') == "started" then
        exports['cs_bossmenu']:RemoveMoney(societyName, amount)

    elseif GetResourceState('okokBanking') == "started" then
        exports['okokBanking']:RemoveMoney(societyName, amount)

    elseif GetResourceState('qb-banking') == "started" then
        exports['qb-banking']:RemoveMoney(societyName, amount)

    elseif GetResourceState('qb-management') == "started" then
        exports['qb-management']:RemoveMoney(societyName, amount)

    elseif GetResourceState('esx_society') == "started" then
        TriggerEvent('esx_addonaccount:getSharedAccount', societyName, function(account)
            account.removeMoney(amount)
        end)

    else
        print('^5[INFO] ^7No society found for your server, go to vms_tuning/config/config.server.lua and adjust ^2SV.removeSocietyMoney^7!')

    end
end


-- ██▀ ▄▀▀ ▀▄▀   ▄▀▀ ▄▀▄ ▄▀▀ █ ██▀ ▀█▀ ▀▄▀   █▀▄ ██▀ ▄▀  █ ▄▀▀ ▀█▀ ██▀ █▀▄
-- █▄▄ ▄██ █ █   ▄██ ▀▄▀ ▀▄▄ █ █▄▄  █   █    █▀▄ █▄▄ ▀▄█ █ ▄██  █  █▄▄ █▀▄
Citizen.CreateThread(function() -- Registration esx_society
    Citizen.Wait(1000)
    if not Config.UseBuildInCompanyBalance and not Config.RemoveBalanceFromMenu then
        for k, v in pairs(Config.Barbers) do
            if v.ownerJob and v.society_name then
                TriggerEvent('esx_society:registerSociety', v.ownerJob, v.ownerJob, v.society_name, v.society_name, v.society_name, {type = 'public'})
            end
        end
    end
end)