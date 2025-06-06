Config = {}
Config.Locale = 'en'
Config.Debug = false

Config.Commands = {
	createsafezone  = 'createsafezone',
    deletesafezone  = 'deletesafezone',
    zonesetting     = 'zonesetting',
}

--You can set admin in alternative ways-------------------
--Ace Permission
Config.AdminWithAce = true
--Or group (Only works in my qb base)
Config.AdminWithGroup = {
    ['admin'] = true,
    ['god'] = true,
}
--Or license
Config.AdminWithLicense = {
    ['license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'] = true,
}
--Or character id
Config.AdminWithIdentifier = {
    ['xxxxxxxx'] = true,
}
----------------------------------------------------------

Config.AlertStyle = {
    icon = 'hand',
    textColor = 'white',
    position = 'right-center',
    borderRadius = 5,
    backgroundColor = 'rgb(187 72 72)',
}
Config.HideAlertAfterDelay = false
Config.HideAlertDelay = 6 --seconds

Config.WhitelistedWeapons = {
    --[`weapon_pistol`] = true,
    --[`weapon_combatpistol`] = true,
}

Config.WhitelistedJobWeapons = {
    police = {
        [`weapon_stungun`] = {0, 1, 2, 3, 4}, -- weapon has & job ranks
        [`weapon_combatpistol`] = {2, 3, 4},
    },
    ambulance = {
        --[`weapon_stungun`] = {0, 1, 2, 3, 4},
    },
}

