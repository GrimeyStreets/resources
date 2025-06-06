Config = {}

Config.DebugMode = false -- false/true
Config.TargetIcon = 'fa-solid fa-gun' -- Icon for used for qb-target (https://fontawesome.com/icons)
Config.CooldownTime = 1000 * 60 * 5 -- -- Cooldown of robbing NPCs (last number is time in minutes, here for example 5 minutes)
Config.PoliceRequired = 0 -- Number of police required to rob NPCs
Config.CanRobWithMelee = true -- Can the player rob NPCs with melee weapons (true / false)

Config.DisabledWeapons = { -- Weapons that you can't rob a NPC with
    [`WEAPON_PETROLCAN`] = true,
    [`WEAPON_FLASHLIGHT`] = true,
    [`WEAPON_BALL`] = true,
}
Config.BlacklistedModels = { -- Ped models that you can't rob, remember to put name in backticks (``) (https://docs.fivem.net/docs/game-references/ped-models/)
    --[`mp_m_shopkeep_01`] = true,
    --[`a_f_m_bevhills_01`] = true,
}

Config.IntimidateTime = 7500 -- How long you need to intimidate the npc for
Config.AlertRobChanceStart = 75 -- The chance that police will get alert when you start robbing the NPC
Config.AlertRobChanceEnd = 50 -- The chance that police will get alert after you have robbed the NPC
Config.MaxFailedTimes = 2 -- How many times you can fail intimidating before you fail robbing
Config.RobRewardItems = { -- Rewards for robbing NPCs
    { name = 'money', chance = 100, min = 100, max = 500 },
}

Config.EnableCallPoliceAnim = true -- Enable animation when NPC alert cops (true / false)
Config.AnimationTime = 5000 -- NPC police alert animation time in milliseconds
Config.PoliceJobs = { -- Put your police job names here
    ['police'] = true,
    --['sheriff'] = true
}
Config.NonAllowedJobs = { -- jobs that shouldn't be able to rob NPCs
    --['police'] = true,
}

Config.RobChance = 50 -- The chance that the NPC will rob you in percents, 0 = NPC won't rob players, NPC can only rob you if you have a melee weapon
Config.NpcWeapon = 'WEAPON_PISTOL' -- THe weapon that NPCs will have when they rob a player (https://wiki.rage.mp/index.php?title=Weapons)
Config.RobAmount = {min = 200, max = 1000} -- How much can the NPC rob from the player
Config.EnableRobRetrieve = false -- true / false, should the player be able to retrieve his money by killing the NPC that robbed them
Config.EnablePickUpAnim = true -- true / false, enable anim for picking up the money that was retrieved