Config = {}
Config.Locale = 'en'

Config.Commands = {
    add = 'tracker:add',
    remove = 'tracker:remove', -- police can use this command, no need to use bolt cutter
}

Config.PlayerDistance = 2.5 -- Distance between victim & officer to do any action

Config.TrackerRequired    = true    -- required to install tracker
Config.CutterRequired     = true    -- required to remove tracker (not for cops)

Config.UpdateDelay  = 1000   -- in millisecond 

Config.Jobs = {
    police = true,
}

Config.MinimumTime = 1 --in minute
Config.MaximumTime = 50000 --in minute

Config.Command = 'togglemonitor' --Enable/Disable map blips
Config.BlipStateDefault = true
Config.Blip = {
    player = {sprite = 162, color = 5},
    alert = {sprite = 161, color = 1},
}

Config.SuccessRate = 20         -- 20% chance to cut the tracker but each attempt will trigger alert
Config.RemoveDelay = 20000      -- in milliseconds 
Config.CopAlertBlipTime = 60    -- in seconds
Config.CustomAlert = false      -- enable if you want to use your custom alert system & edit client/utils.lua

Config.AnkleClothing = {        -- only works with qb-clothing or ak47_qb_clothing, not compatible with appearance
    uni = {
        male = {
            main = {
                ['decals'] = {item = 1, texture = 0} -- check qb-clothing/client/main.lua
            },
        },
        female = {
            ['decals'] = {item = 1, texture = 0} -- check qb-clothing/client/main.lua
        }
    },
    non_uni = {
        male = {
            ['decals'] = {item = 0, texture = 0} -- check qb-clothing/client/main.lua
        },
        female = {
            ['decals'] = {item = 0, texture = 0} -- check qb-clothing/client/main.lua
        }
    }
}
