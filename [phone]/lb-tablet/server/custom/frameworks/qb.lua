if Config.Framework ~= "qb" then
    return
end

debugprint("Loading QB")

QB = exports["qb-core"]:GetCoreObject()

debugprint("QB loaded")

local playersCollate = ""
local vehiclesCollate = ""

MySQL.ready(function()
    while not GetCollationsForTables do
        Wait(0)
    end

    local collations = GetCollationsForTables({
        players = "citizenid",
        player_vehicles = "plate"
    })

    playersCollate = collations.players or ""
    vehiclesCollate = collations.player_vehicles or ""

    Queries = {}

    Queries.Users = {}
    Queries.Users.Search = ([[
        SELECT
            u.citizenid AS id,
            CONCAT(JSON_VALUE(u.charinfo, '$.firstname'), ' ', JSON_VALUE(u.charinfo, '$.lastname')) AS `name`,
            JSON_VALUE(u.charinfo, '$.birthdate') AS dob,
            JSON_EXTRACT(u.charinfo, '$.gender') = 0 AS isMale,
            p.avatar

        FROM players u

        LEFT JOIN lbtablet_police_profiles p ON p.id = u.citizenid %s

        WHERE
            CONCAT(JSON_VALUE(u.charinfo, '$.firstname'), ' ', JSON_VALUE(u.charinfo, '$.lastname')) LIKE ?
            {WHERE_FILTER}

        GROUP BY u.citizenid, p.avatar

        LIMIT ?, ?
    ]]):format(playersCollate)

    Queries.Users.BasicFetch = [[
        SELECT
            JSON_VALUE(charinfo, '$.birthdate') AS dob,
            CONCAT(JSON_VALUE(charinfo, '$.firstname'), ' ', JSON_VALUE(charinfo, '$.lastname')) AS `name`,
            JSON_EXTRACT(charinfo, '$.gender') = 0 AS isMale

        FROM players

        WHERE citizenid = ?
    ]]

    Queries.Users.FetchProfile = ([[
        SELECT
            u.citizenid AS id,
            CONCAT(JSON_VALUE(u.charinfo, '$.firstname'), ' ', JSON_VALUE(u.charinfo, '$.lastname')) AS `name`,
            JSON_VALUE(u.charinfo, '$.birthdate') AS dob,
            JSON_EXTRACT(u.charinfo, '$.gender') = 0 AS isMale,
            JSON_UNQUOTE(JSON_EXTRACT(u.metadata, '$.bloodtype')) AS bloodType,
            JSON_UNQUOTE(JSON_EXTRACT(u.metadata, '$.fingerprint')) AS fingerprint,
            p.avatar,
            p.notes,
            JSON_VALUE(u.job, '$.grade.name') AS jobGrade,
            JSON_VALUE(u.job, '$.label') AS job

        FROM players u

        LEFT JOIN {PROFILE_JOIN} p ON p.id = u.citizenid %s

        WHERE u.citizenid = ?

        GROUP BY u.citizenid, p.avatar
    ]]):format(playersCollate)

    Queries.Users.SearchFilter = {}
    Queries.Users.SearchFilter.Jobs = "AND JSON_VALUE(u.job, '$.name') IN (?)"

    if Config.JailScript == "qb" then
        Queries.Users.SearchFilter.ExcludeJailed = ("AND NOT EXISTS (SELECT 1 FROM lbtablet_police_jail WHERE prisoner = u.citizenid %s AND jail_time > 0)"):format(playersCollate)
    end

    local fetchVehicle = ([[
        SELECT
            v.plate, v.citizenid AS owner, v.mods, v.vehicle, p.avatar AS picture,
            CONCAT(JSON_VALUE(u.charinfo, '$.firstname'), ' ', JSON_VALUE(u.charinfo, '$.lastname')) AS `name`

        FROM player_vehicles v

        LEFT JOIN players u ON u.citizenid %s = v.citizenid %s
        LEFT JOIN lbtablet_police_profiles p ON p.id = v.citizenid %s
    ]]):format(playersCollate, vehiclesCollate, vehiclesCollate)

    Queries.Vehicles = {}
    Queries.Vehicles.SelectModelByPlates = "SELECT plate, JSON_VALUE(mods, '$.model') AS model FROM player_vehicles WHERE plate IN (?)"
    Queries.Vehicles.BasicFetch = "SELECT vehicle, mods FROM player_vehicles WHERE plate = ?"
    Queries.Vehicles.Fetch = fetchVehicle .. " WHERE v.plate = ?"
    Queries.Vehicles.Search = fetchVehicle .. [[
        WHERE v.plate LIKE ?
        LIMIT ?, ?
    ]]

    Queries.SelectName = "CONCAT(JSON_VALUE(u.charinfo, '$.firstname'), ' ', JSON_VALUE(u.charinfo, '$.lastname'))"
    Queries.SelectDob = "JSON_VALUE(u.charinfo, '$.birthdate')"
    Queries.JoinName = ("LEFT JOIN players u ON u.citizenid %s = %s"):format(playersCollate, "%s")
end)

---@param source number
---@return string | nil
function GetIdentifier(source)
    local qPlayer = QB.Functions.GetPlayer(tonumber(source))

    if qPlayer?.PlayerData?.citizenid then
        return qPlayer.PlayerData.citizenid
    else
        debugprint("Failed to get citizen id from source:", source)
    end
end

---@param identifier string
---@return number?
function GetSourceFromIdentifier(identifier)
    local qPlayer = QB.Functions.GetPlayerByCitizenId(identifier)

    if qPlayer?.PlayerData?.source then
        return qPlayer.PlayerData.source
    end
end

---@param source number
---@param itemName string
---@return boolean
function HasItem(source, itemName)
    if GetResourceState("ox_inventory") == "started" then
        return (exports.ox_inventory:Search(source, "count", itemName) or 0) > 0
    elseif GetResourceState("qs-inventory") == "started" then
        return (exports["qs-inventory"]:GetItemTotalAmount(source, itemName) or 0) > 0
    end

    local qPlayer = QB.Functions.GetPlayer(tonumber(source))

    if not qPlayer then
        debugprint("HasItem: Failed to get player for source:", source)
        return false
    end

    return (qPlayer.Functions.GetItemByName(itemName)?.amount or 0) > 0
end

---@param item string
---@param cb function
function CreateUsableItem(item, cb)
    QB.Functions.CreateUseableItem(item, cb)
end

---@param source number
function IsAdmin(source)
    ---@diagnostic disable-next-line: param-type-mismatch
    return QB.Functions.HasPermission(source, "admin") or IsPlayerAceAllowed(source, "command.lbphone_admin") == 1
end

---@param source number
function IsOnDuty(source)
    local qPlayer = QB.Functions.GetPlayer(tonumber(source))

    if qPlayer?.PlayerData?.job then
        return qPlayer.PlayerData.job.onduty
    end

    return true
end

---@param source number
---@return integer
function GetBalance(source)
    local qPlayer = QB.Functions.GetPlayer(tonumber(source))

    if not qPlayer then
        return 0
    end

    return qPlayer.Functions.GetMoney("bank") or 0
end

---@param source number
---@param amount integer
---@return boolean
function AddMoney(source, amount)
    local qPlayer = QB.Functions.GetPlayer(tonumber(source))

    if not qPlayer or amount < 0 then
        return false
    end

    qPlayer.Functions.AddMoney("bank", math.floor(amount + 0.5), "Tablet")

    return true
end

---@param identifier string
---@param amount number
---@return boolean
function AddMoneyOffline(identifier, amount)
    if amount <= 0 then
        return false
    end

    amount = math.floor(amount + 0.5)

    return MySQL.update.await("UPDATE players SET money = JSON_SET(money, '$.bank', JSON_EXTRACT(money, '$.bank') + ?) WHERE citizenid = ?", { amount, identifier }) > 0
end

---@param source any
---@param amount integer
---@return boolean
function RemoveMoney(source, amount)
    if amount < 0 or GetBalance(source) < amount then
        return false
    end

    local qPlayer = QB.Functions.GetPlayer(tonumber(source))

    if not qPlayer then
        return false
    end

    QB.Functions.GetPlayer(source).Functions.RemoveMoney("bank", math.floor(amount + 0.5), "Tablet")

    return true
end

---@param source number
---@return { name: string, label: string, grade: number, grade_label: string }
function GetJob(source)
    local qPlayer = QB.Functions.GetPlayer(tonumber(source))

    if not qPlayer then
        return { name = "", label = "", grade = 0, grade_label = "" }
    end

    local job = qPlayer.PlayerData.job

    return {
        name = job.name,
        label = job.label,
        grade = job.grade.level,
        grade_label = job.grade.name
    }
end

---@param identifier string
---@return { plate: string, type: string, vehicle: string }[]
function GetVehicles(identifier)
    local vehicles = MySQL.query.await("SELECT plate, vehicle, mods FROM player_vehicles WHERE citizenid = ?", { identifier })

    for i = 1, #vehicles do
        local vehicle = vehicles[i]
        local vehicleData = QB.Shared.Vehicles[vehicle.vehicle]

        vehicle.vehicle = vehicle.mods
        vehicle.type = vehicleData?.category or "Unknown"
    end

    return vehicles
end

---@param source number
---@return string firstname
---@return string lastname
function GetCharacterName(source)
    local qPlayer = QB.Functions.GetPlayer(tonumber(source))

    if not qPlayer then
        return GetPlayerName(source), ""
    end

    local characterInfo = qPlayer.PlayerData.charinfo

    return characterInfo.firstname, characterInfo.lastname
end

---@param identifier string
---@return string?
function GetCharacterNameFromIdentifier(identifier)
    local characterInfo = QB.Functions.GetPlayerByCitizenId(identifier)?.PlayerData?.charinfo

    if not characterInfo then
        characterInfo = MySQL.scalar.await("SELECT charinfo FROM players WHERE citizenid = ?", { identifier })

        if characterInfo then
            characterInfo = json.decode(characterInfo)
        else
            return
        end
    end

    return characterInfo.firstname .. " " .. characterInfo.lastname
end

local licenses = {
    {
        label = "Driver's License",
        type = "driver"
    },
    {
        label = "Weapon License",
        type = "weapon"
    }
}

---@param licenseType string
---@return boolean
local function DoesLicenseExist(licenseType)
    for i = 1, #licenses do
        if licenses[i].type == licenseType then
            return true
        end
    end

    return false
end

---@param identifier string
---@param licenseType string
---@return boolean
function RevokeLicense(identifier, licenseType)
    local qPlayer = QB.Functions.GetPlayerByCitizenId(identifier)

    if qPlayer then
        qPlayer.PlayerData.metadata.licences[licenseType] = false
        qPlayer.Functions.SetMetaData("licences", qPlayer.PlayerData.metadata.licences)

        return true
    end

    local metadata = MySQL.scalar.await("SELECT metadata FROM players WHERE citizenid = ?", { identifier })

    if not metadata then
        debugprint("RevokeLicense: no metadata")
        return false
    end

    metadata = json.decode(metadata)
    metadata.licences = metadata.licences or {}
    metadata.licences[licenseType] = false

    return MySQL.update.await("UPDATE players SET metadata = ? WHERE citizenid = ?", { json.encode(metadata), identifier }) > 0
end

---@param identifier string
---@param licenseType string
---@return boolean
function AddLicense(identifier, licenseType)
    if not DoesLicenseExist(licenseType) then
        return false
    end

    local qPlayer = QB.Functions.GetPlayerByCitizenId(identifier)

    if qPlayer then
        qPlayer.PlayerData.metadata.licences[licenseType] = true
        qPlayer.Functions.SetMetaData("licences", qPlayer.PlayerData.metadata.licences)
        return true
    end

    local metadata = MySQL.scalar.await("SELECT metadata FROM players WHERE citizenid = ?", { identifier })

    if not metadata then
        return false
    end

    metadata = json.decode(metadata)
    metadata.licences = metadata.licences or {}
    metadata.licences[licenseType] = true

    return MySQL.update.await("UPDATE players SET metadata = ? WHERE citizenid = ?", { json.encode(metadata), identifier }) > 0
end

---@param licenseType string
---@return string
function GetLicenseLabel(licenseType)
    for i = 1, #licenses do
        if licenses[i].type == licenseType then
            return licenses[i].label
        end
    end

    return licenseType
end

---@return { label: string, type: string }[]
function GetAllLicenses()
    return licenses
end

---@param identifier string
---@return { type: string, label: string }[]
function GetPlayerLicenses(identifier)
    local qPlayer = QB.Functions.GetPlayerByCitizenId(identifier)
    local cleanedLicenses = {}
    local playerLicenses

    if qPlayer then
        playerLicenses = qPlayer.PlayerData.metadata.licences or {}
    else
        local metadata = MySQL.scalar.await("SELECT metadata FROM players WHERE citizenid = ?", { identifier })

        metadata = metadata and json.decode(metadata)
        playerLicenses = metadata?.licences or {}
    end

    for licenseType, hasLicense in pairs(playerLicenses) do
        if hasLicense then
            cleanedLicenses[#cleanedLicenses+1] = {
                type = licenseType,
                label = GetLicenseLabel(licenseType)
            }
        end
    end

    return cleanedLicenses
end

---@param jobs string | string[]
---@return { grades: { [string]: { grade: number, label: string }[] }, labels: { [string]: string } }
function GetJobGrades(jobs)
    if type(jobs) == "string" then
        jobs = { jobs }
    end

    local qbJobs = QB.Shared.Jobs
    local grades = {}
    local labels = {}

    for i = 1, #jobs do
        local job = jobs[i]
        local jobData = qbJobs[job]

        if not jobData then
            debugprint("Invalid job: " .. job)
            goto continue
        end

        grades[job] = {}
        labels[job] = jobData.label

        local amountGrades = 0

        for gradeLevel, gradeData in pairs(jobData.grades) do
            amountGrades += 1
            grades[job][amountGrades] = {
                grade = tonumber(gradeLevel),
                label = gradeData.name
            }
        end

        table.sort(grades[job], function(a, b)
            return a.grade < b.grade
        end)

        ::continue::
    end

    return {
        grades = grades,
        labels = labels
    }
end

---@param companies string[]
function GetEmployees(companies)
    local query = ([[
        SELECT
            u.citizenid AS id,
            a.callsign,
            a.avatar,
            CONCAT(JSON_VALUE(u.charinfo, '$.firstname'), ' ', JSON_VALUE(u.charinfo, '$.lastname')) AS `name`,
            JSON_VALUE(u.job, '$.grade.level') AS rank,
            JSON_VALUE(u.job, '$.name') AS job
            %s
        FROM players u
        LEFT JOIN lbtablet_police_accounts a ON a.id = u.citizenid %s
        %s
        WHERE JSON_VALUE(u.job, '$.name') IN (?)
    ]]):format("%s", playersCollate, "%s")

    if Config.LBPhone then
        local phoneConfig = GetPhoneConfig()

        if phoneConfig?.Item.Unique then
            query = query:format(
                ", p.phone_number AS phoneNumber",
                ("LEFT JOIN phone_last_phone p ON u.citizenid %s = p.id"):format(playersCollate)
            )
        else
            query = query:format(
                ", p.phone_number AS phoneNumber",
                ("LEFT JOIN phone_phones p ON u.citizenid %s = p.id"):format(playersCollate)
            )
        end
    else
        query = query:format("", "")
    end

    local employees = MySQL.query.await(query, { companies })

    for i = 1, #employees do
        employees[i].rank = tonumber(employees[i].rank)
    end

    return employees
end

---@param jobs { [string]: any }
---@return { source: number, name: string, rank: string, identifier: string }[]
function GetOnDutyEmployees(jobs)
    local employees = {}
    local players = QB.Functions.GetQBPlayers()

    for i = 1, #players do
        local qPlayer = players[i]
        local playerData = qPlayer and qPlayer.PlayerData

        if playerData?.job?.onduty and jobs[qPlayer.PlayerData.job.name] then
            employees[#employees+1] = {
                source = playerData.source,
                name = playerData.charinfo.firstname .. " " .. playerData.charinfo.lastname,
                rank = playerData.job.grade.name,
                identifier = playerData.citizenid
            }
        end
    end

    return employees
end

---@param jobs string | string[]
---@return string[]
function GetIdentifiersWithJob(jobs)
    if type(jobs) == "string" then
        jobs = { jobs }
    end

    local identifiers = MySQL.query.await("SELECT citizenid FROM players WHERE JSON_VALUE(job, '$.name') IN (?)", { jobs })
    local result = {}

    for i = 1, #identifiers do
        result[i] = identifiers[i].citizenid
    end

    return result
end

--#region Services

local playerJobs = {}
local jobCounts = {}
local jobDutyCounts = {}

function RefreshCompanies()
    if Config.QBOldJobMethod then
        debugprint("using old method to refresh companies")

        local openJobs = {}
        local players = QB.Functions.GetQBPlayers()

        for _, v in pairs(players) do
            if not v?.PlayerData.job.onduty then
                goto continue
            end

            local job = v.PlayerData.job.name
            if not openJobs[job] then
                openJobs[job] = true
            end

            ::continue::
        end

        for i = 1, #Config.Services.Companies do
            local jobData = Config.Services.Companies[i]

            jobData.open = openJobs[jobData.job] or false
        end

        return
    end

    for i = 1, #Config.Services.Companies do
        local jobData = Config.Services.Companies[i]

        jobData.open = (jobDutyCounts[jobData.job] or 0) > 0
    end
end

CreateThread(function()
    for _, player in pairs(QB.Functions.GetQBPlayers()) do
        local playerData = player.PlayerData
        local job = playerData.job
        local jobName = job.name
        local onDuty = job.onduty

        playerJobs[playerData.source] = {
            name = jobName,
            onduty = onDuty
        }

        jobCounts[jobName] = (jobCounts[jobName] or 0) + 1
        jobDutyCounts[jobName] = (jobDutyCounts[jobName] or 0) + (onDuty and 1 or 0)
    end

    debugprint("qb jobs: initial data", playerJobs, jobCounts, jobDutyCounts)
end)

AddEventHandler('QBCore:Server:PlayerLoaded', function(Player)
    local job = Player.PlayerData.job
    local src = Player.PlayerData.source
    local jobName = job?.name
    local onDuty = job?.onduty

    if not jobName then
        return
    end

    playerJobs[src] = {
        name = jobName,
        onduty = onDuty
    }

    jobCounts[jobName] = (jobCounts[jobName] or 0) + 1
    jobDutyCounts[jobName] = (jobDutyCounts[jobName] or 0) + (onDuty and 1 or 0)

    debugprint("qb jobs: player loaded update (src, job, duty)", src, job.name, job.onduty)
end)

AddEventHandler("QBCore:Server:OnJobUpdate", function(src, job)
    local shouldRefresh = false
    local lastJob = playerJobs[src]
    local lastName = lastJob and lastJob.name
    local lastDuty = lastJob and lastJob.onduty
    local jobName = job.name
    local onDuty = job.onduty

    Wait(0)
    debugprint("qb jobs: job update (src, job, duty)", src, job.name, job.onduty)

    if lastJob and lastName == jobName then
        if lastJob.onduty == onDuty then
            return
        end

        jobDutyCounts[jobName] = (jobDutyCounts[jobName] or 0) + (onDuty and 1 or -1)
    else
        if lastJob then
            jobCounts[lastName] = (jobCounts[lastName] or 0) - 1
            jobDutyCounts[lastName] = (jobDutyCounts[lastName] or 0) - (lastDuty and 1 or 0)

            local oldCount = jobDutyCounts[lastName]

            if oldCount == 0 or oldCount == 1 then
                TriggerClientEvent("phone:services:updateOpen", -1, lastName, oldCount == 1)
                shouldRefresh = true
            end
        end

        jobCounts[jobName] = (jobCounts[jobName] or 0) + 1
        jobDutyCounts[jobName] = (jobDutyCounts[jobName] or 0) + (onDuty and 1 or 0)
    end

    playerJobs[src] = {
        name = jobName,
        onduty = onDuty
    }

    local newCount = jobDutyCounts[jobName]

    if newCount == 0 or newCount == 1 then
        TriggerClientEvent("phone:services:updateOpen", -1, jobName, newCount == 1)
        shouldRefresh = true
    end

    if shouldRefresh then
        RefreshCompanies()
    end

    debugprint(playerJobs, jobCounts, jobDutyCounts)
end)

local function UnloadJob(src)
    local lastJob = playerJobs[src]

    if not lastJob then
        return
    end

    jobCounts[lastJob.name] = (jobCounts[lastJob.name] or 0) - 1
    jobDutyCounts[lastJob.name] = (jobDutyCounts[lastJob.name] or 0) - (lastJob.onduty and 1 or 0)

    playerJobs[src] = nil

    debugprint(playerJobs, jobCounts, jobDutyCounts)
end

AddEventHandler("QBCore:Server:OnPlayerUnload", function(src)
    Wait(0)
    debugprint("qb jobs: player unload", src)

    UnloadJob(src)
end)

AddEventHandler("playerDropped", function()
    local src = source

    debugprint("qb jobs: player dropped", src)
    UnloadJob(src)
end)

---@param company string
function GetEmployeeList(company)
    local numberTable = Config.LBPhone and (GetPhoneConfig()?.Item.Unique and "phone_last_phone" or "phone_phones") or nil
    local joinPhone = Config.LBPhone and ("LEFT JOIN %s p ON u.citizenid %s = p.id"):format(numberTable, playersCollate) or ""

    local employees = MySQL.query.await([[
        SELECT
            u.citizenid, u.charinfo, u.job
            ]] .. (Config.LBPhone and ", p.phone_number AS `number`" or "") .. [[

        FROM players u

        ]] .. joinPhone .. [[

        WHERE JSON_VALUE(u.job, '$.name') = ?
    ]], { company })

    local players = QB.Functions.GetQBPlayers()
    local onlineCitizenIds = {}

    for _, qPlayer in pairs(players) do
        if qPlayer.PlayerData.job.name == company then
            onlineCitizenIds[qPlayer.PlayerData.citizenid] = true
        end
    end

    for i = 1, #employees do
        local employee = employees[i]
        local charinfo = json.decode(employee.charinfo)
        local job = json.decode(employee.job)

        employees[i] = {
            firstname = charinfo.firstname,
            lastname = charinfo.lastname,
            number = employee.phone_number,
            gradeLabel = job.grade.name,
            grade = job.grade.level,
            online = onlineCitizenIds[employee.citizenid],
        }
    end

    return employees
end

RegisterCallback("services:getPlayerData", function(source, player)
    local first, last = GetCharacterName(player)

    return {
        name = first .. " " .. last,
        id = GetIdentifier(player),
    }
end)

local function GetSocietyMoney(job)
    local success, res = pcall(function()
        return exports["qb-management"]:GetAccount(job)
    end)

    if success then
        return res
    end

    return exports["qb-banking"]:GetAccountBalance(job)
end

BaseCallback("services:getOnlineCitizenIds", function(source, tabletId)
    local job = GetJob(source).name
    local players = QB.Functions.GetQBPlayers()
    local onlineCitizenIds = {}

    for _, qPlayer in pairs(players) do
        if qPlayer.PlayerData.job.name == job then
            onlineCitizenIds[qPlayer.PlayerData.citizenid] = true
        end
    end

    return onlineCitizenIds
end)

RegisterCallback("services:getAccount", function(source)
    local job = GetJob(source).name

    return GetSocietyMoney(job)
end)

RegisterCallback("services:addMoney", function(source, amount)
    local job = GetJob(source).name

    if amount < 0 or GetBalance(source) < amount then
        return false
    end

    local success, _ = pcall(function()
        return exports["qb-management"]:AddMoney(job, amount)
    end)

    if success or exports["qb-banking"]:AddMoney(job, amount) then
        RemoveMoney(source, amount)
    end

    return GetSocietyMoney(job)
end)

RegisterCallback("services:removeMoney", function(source, amount)
    local job = GetJob(source).name

    if amount < 0 or GetSocietyMoney(job) < amount then
        return
    end

    local success, res = pcall(function()
        return exports["qb-management"]:RemoveMoney(job, amount)
    end)

    if not success then
        res = exports["qb-banking"]:RemoveMoney(job, amount)
    end

    if res then
        AddMoney(source, amount)
    end

    return GetSocietyMoney(job)
end)

--#endregion

function GetWeaponName(weapon)
    weapon = weapon:lower()

    return QB.Shared.Items[weapon] and QB.Shared.Items[weapon].label or weapon
end

function GetWeaponImage(weapon)
    if GetResourceState("ox_inventory") == "started" then
        local fileName = "web/images/" .. weapon:upper() .. ".png"
        local fileExists = LoadResourceFile("ox_inventory", fileName)

        if fileExists then
            return "https://cfx-nui-ox_inventory/" .. fileName
        end
    end

    weapon = weapon:lower()

    local itemImage = QB.Shared.Items[weapon] and QB.Shared.Items[weapon].image

    if itemImage then
        return "https://cfx-nui-qb-inventory/html/images/" .. itemImage
    end
end

AddEventHandler("QBCore:Server:OnPlayerUnload", function(src)
    Wait(0)
    PlayerLoggedOut(src)
end)

AddEventHandler("QBCore:Server:OnJobUpdate", function(source, job)
    Wait(0)
    TriggerEvent("lb-tablet:jobUpdated", source, job.name, IsOnDuty(source))
end)
