local houseTables = {
    ['house'] = [[CREATE TABLE IF NOT EXISTS `house` (
        `identifier` varchar(50) NOT NULL DEFAULT '0',
        `name` varchar(50) DEFAULT NULL,
        `price` int(11) NOT NULL DEFAULT 0,
        `type` varchar(50) NOT NULL DEFAULT 'shell',
        `payment` VARCHAR(50) DEFAULT NULL,
        `furniture` MEDIUMTEXT DEFAULT NULL,
        `data` TEXT DEFAULT NULL,
        `locked` tinyint(1) NOT NULL DEFAULT 0,
        `mortgage` TINYTEXT DEFAULT NULL,
        `complex` varchar(50) DEFAULT NULL,
        `area` TEXT DEFAULT NULL,
        `configuration` TINYTEXT DEFAULT NULL,
        `permission` TINYTEXT DEFAULT NULL,
        `doors` MEDIUMTEXT DEFAULT NULL,
        `entry` VARCHAR(100) DEFAULT NULL,
        `storages` TEXT DEFAULT NULL,
        `wardrobes` TEXT DEFAULT NULL,
        `cctv` TEXT DEFAULT NULL,
        `realestate` varchar(50) DEFAULT NULL,
        `created_at` TIMESTAMP NOT NULL DEFAULT NOW(),
        `tebex` VARCHAR(255) DEFAULT NULL,
        `garages` TEXT DEFAULT NULL,
        PRIMARY KEY (`identifier`)
      )]],
    ['house_mortgage'] = [[CREATE TABLE IF NOT EXISTS `house_mortgage` (
        `identifier` varchar(50) NOT NULL,
        `interest` int(11) NOT NULL,
        `duration` int(11) NOT NULL,
        `type` varchar(50) NOT NULL,
        `payment` int(11) NOT NULL DEFAULT 0,
        `lastPayment` varchar(50) DEFAULT NULL,
        `remaining` int(11) DEFAULT NULL,
        PRIMARY KEY (`identifier`)
      )]],
    ['house_owned'] = [[CREATE TABLE IF NOT EXISTS `house_owned` (
        `identifier` varchar(50) NOT NULL DEFAULT '0',
        `owner` varchar(50) NOT NULL,
        `lastLogin` timestamp NULL DEFAULT current_timestamp(),
        `lastPayment` bigint(20) DEFAULT NULL,
        `keys` TEXT DEFAULT NULL,
        `data` TEXT DEFAULT NULL,
        `key_holders` TEXT DEFAULT NULL,
        `bought_at` TIMESTAMP NOT NULL DEFAULT NOW(),
        PRIMARY KEY (`identifier`)
      )]],
    ['house_apartment'] = [[CREATE TABLE IF NOT EXISTS `house_apartment` (
        `identifier` varchar(46) NOT NULL,
        `apartment` int(11) NOT NULL,
        `owner` varchar(46) DEFAULT NULL,
        `furniture` MEDIUMTEXT DEFAULT NULL,
        `storages` TEXT DEFAULT NULL,
        `wardrobes` TEXT DEFAULT NULL,
        `locked` tinyint(1) NOT NULL DEFAULT 0,
        `bought_at` TIMESTAMP NOT NULL DEFAULT NOW(),
        `last_payment` TIMESTAMP NULL,
        KEY `apartment` (`apartment`),
        KEY `identifier` (`identifier`)
      )]],
    ['house_rent'] = [[CREATE TABLE IF NOT EXISTS `house_rent` (
        `identifier` varchar(46) NOT NULL,
        `price` int(11) NOT NULL DEFAULT 50,
        `duration` int(11) NOT NULL DEFAULT 7,
        `duration_type` enum('day','week') NOT NULL DEFAULT 'day',
        `permission` tinytext DEFAULT NULL,
        `can_rent` tinyint(1) NOT NULL DEFAULT 0,
        `tenant` varchar(255) DEFAULT NULL,
        `last_payment` timestamp NULL DEFAULT NULL,
        `rented_at` timestamp NULL DEFAULT NULL,
        PRIMARY KEY (`identifier`)
      )]],
    ['house_catalogue'] = [[CREATE TABLE IF NOT EXISTS `house_catalogue` (
        `title` varchar(255) NOT NULL,
        `interior` varchar(255) NOT NULL,
        `type` enum('ipl','shell') DEFAULT 'shell',
        `thumbnail` varchar(255) DEFAULT NULL,
        `tags` tinytext DEFAULT NULL,
        `description` tinytext DEFAULT NULL,
        `job` varchar(50) DEFAULT NULL,
        KEY `name` (`title`),
        KEY `interior` (`interior`)
      )]],
    ['house_ipl'] = [[CREATE TABLE IF NOT EXISTS `house_ipl` (
        `identifier` varchar(50) NOT NULL,
        `apartment` int(11) DEFAULT NULL,
        `data` LONGTEXT DEFAULT NULL,
        KEY `apartment` (`apartment`),
        KEY `identifier` (`identifier`)
    );]]
}

local function InsertHouseCatalogue()
    local query = [[
    INSERT INTO `house_catalogue` (`title`, `interior`, `type`, `thumbnail`, `tags`, `description`, `job`) VALUES
	('Garage Medium', 'shell_garagem', 'shell', NULL, '[]', 'Medium Garage Interior perfect for minimum 3 vehicle', NULL),
	('Lester House', 'shell_lester', 'shell', NULL, '["Small"]', 'Lester House Interior', NULL),
	('Store Small', 'shell_store1', 'shell', NULL, '["Business","Small"]', 'A Small store shell for your startup business', NULL),
	('Container', 'container_shell', 'shell', NULL, '["Tiny","Cheap"]', 'A stash where you can keep all your secrets', NULL),
	('Unfurnished Mid Apart', 'shell_v16mid', 'shell', NULL, '["unfurnished"]', 'Perfect house for a young family', NULL),
	('Low Apartment', 'shell_v16low', 'shell', NULL, '["Clean","Unfurnished"]', 'Perfect for a young adults to own', NULL),
	('Office Small', 'shell_office1', 'shell', NULL, '["Business","Small"]', 'A small office for your business needs', NULL),
	('Modern Hotel', 'modernhotel_shell', 'shell', NULL, '["Modern","Clean"]', 'A furnished modern style hotel room', NULL),
	('Ranch Interior', 'shell_ranch', 'shell', NULL, '["Big","Unfurnished"]', 'A big 1 floor mansion. Perfect for your mafia needs', NULL),
	('Warehouse Small', 'shell_warehouse1', 'shell', NULL, '["Small"]', 'Stash all your belongings in this warehouse. Lock it from robbers', NULL),
	('Frank Aunt Interior', 'shell_frankaunt', 'shell', NULL, '[]', 'Your aunt\'s house', NULL),
	('Trevor House', 'shell_trevor', 'shell', NULL, '["Clean","Medium"]', 'Unexpectedly clean and good house inspite of the owner.', NULL),
	('Michael Mansion', 'shell_michael', 'shell', NULL, '["Big","Unfurnished"]', 'A mansion for middle age crisis era.', NULL),
	('Trailer', 'shell_trailer', 'shell', NULL, '["Small","Dirty"]', 'A mobile trailer that has been long unmaintained', NULL),
	('Standard Motel', 'standardmotel_shell', 'shell', NULL, '["Small"]', 'Your standard motel room', NULL),
	('Furnitured Mid Apart', 'furnitured_midapart', 'shell', NULL, '["Furnished","Medium"]', 'A furnitured mid tier apartment perfect for starting families.', NULL),
	('Mody Apartment', 'apa_v_mp_h_02_a', 'ipl', NULL, '[]', 'Mody Apartment', NULL),
	('Modern Apartment', 'apa_v_mp_h_01_c', 'ipl', NULL, '[]', 'Modern Apartment', NULL),
	('Executive Rich 1', 'ex_dt1_02_office_02b', 'ipl', NULL, '["Business"]', 'Executive Rich', NULL),
	('Garage 1', 'imp_dt1_02_cargarage_a', 'ipl', NULL, '[]', 'Garage with 3 floor', NULL),
	('Mod Garage', 'imp_dt1_02_modgarage', 'ipl', NULL, '["Garage"]', 'Modding garage', NULL),
	('Executive Rich 2', 'ex_dt1_11_office_02b', 'ipl', NULL, '[]', 'Executive Rich Maze', NULL),
	('Executive Rich 3', 'ex_sm_13_office_02b', 'ipl', NULL, '[]', 'Executive Rich 3', NULL),
	('Executive Rich 4', 'ex_sm_15_office_02b', 'ipl', NULL, '[]', 'Executive Rich 4', NULL),
	('Biker Hideout 1', 'bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo', 'ipl', NULL, '[]', 'Biker Hideout 1. It has big garage as well', NULL),
	('Biker Hideout 2', 'bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo', 'ipl', NULL, '[]', 'Biker hideout 2', NULL),
	('Weed Growing Facility', 'bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo', 'ipl', NULL, '[]', 'Weed growing facility for your drugs need', NULL),
	('Cocaine Processing', 'bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo', 'ipl', NULL, '[]', 'Process your cocaine needs here', NULL),
	('Money Laundry', 'bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo', 'ipl', NULL, '[]', 'You want to launder your money I heard?', NULL),
	('Document Forgery Office', 'bkr_biker_interior_placement_interior_6_biker_dlc_int_ware05_milo', 'ipl', NULL, '[]', 'You need a fake passport?', NULL),
	('Warehouse Small', 'ex_exec_warehouse_placement_interior_1_int_warehouse_s_dlc_milo', 'ipl', NULL, '["Small"]', 'A small warehouse', NULL),
	('Medium Warehouse', 'ex_exec_warehouse_placement_interior_0_int_warehouse_m_dlc_milo', 'ipl', NULL, '[]', 'A medium warehouse', NULL),
	('Big Warehouse', 'ex_exec_warehouse_placement_interior_2_int_warehouse_l_dlc_milo', 'ipl', NULL, '["Big"]', 'Big warehouse', NULL),
	('Vehicle Warehouse', 'imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo', 'ipl', NULL, '[]', 'Fit for mechanic profession', NULL)
    ]]

    MySQL.query.await(query)
end

function InitDatabase()
    local createTable = {}

    for k in pairs(houseTables) do
        if not MySQL.scalar.await("SHOW TABLES LIKE '" .. k .. "'") then
            print('[^3HOUSING DATABASE^0] Table ' .. k .. ' does not exist, creating ' .. k)

            table.insert(createTable, k)
        end
    end

    if #createTable > 0 then
        local queries = {}
        local insertCatalogue = false

        for i = 1, #createTable do
            table.insert(queries, houseTables[createTable[i]])

            if createTable[i] == 'house_catalogue' then
                insertCatalogue = true
            end
        end

        local success = MySQL.transaction.await(queries)

        if not success then
            return print('[^1HOUSING DATABASE^0]  Failed to create tables, run /inithousingdb to fix this')
        end

        if insertCatalogue then
            InsertHouseCatalogue()
        end
    end


    local userTable = Config.framework == 'ESX' and 'users' or 'players'
    local user = MySQL.query.await('DESCRIBE ' .. userTable)
    local runQuery = true

    for i = 1, #user do
        if user[i].Field == 'furniture' then
            runQuery = false
            break
        end
    end

    local queries = {
        'ALTER TABLE ' .. userTable .. ' ADD IF NOT EXISTS furniture MEDIUMTEXT',
        'ALTER TABLE ' .. userTable .. ' ADD IF NOT EXISTS `last_property` varchar(50) NOT NULL DEFAULT "outside"'
    }

    if runQuery then
        MySQL.transaction.await(queries)
    end
end

RegisterCommand('inithousingdb', function(source)
    if source ~= 0 then return end
    InitDatabase()
end, false)

function FixApartmentDupe()
    local maxes = MySQL.query.await(
        'SELECT identifier, MAX(apartment) AS highest FROM house_apartment GROUP BY identifier')
    local max = {}
    for i = 1, #maxes do
        max[maxes[i].identifier] = maxes[i].highest
    end
    local result = MySQL.query.await(
        'SELECT identifier, apartment, COUNT(*) AS `count` FROM house_apartment GROUP BY identifier, apartment HAVING COUNT(*) > 1')
    if result then
        for i = 1, #result do
            for j = 2, result[i].count do
                if max[result[i].identifier] then
                    max[result[i].identifier] += 1
                    local test = MySQL.update.await(
                        'UPDATE house_apartment SET apartment = ? WHERE identifier = ? AND apartment = ? LIMIT 1', {
                            max[result[i].identifier],
                            result[i].identifier,
                            result[i].apartment
                        })
                    print('updated housing', result[i].identifier, result[i].apartment, max[result[i].identifier])
                end
            end
        end
    end
end

RegisterCommand('fixapartmentdupe', function(source)
    if source ~= 0 then return end
    FixApartmentDupe()
end)
