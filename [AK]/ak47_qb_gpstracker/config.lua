Config = {}
Config.Locale = 'en'

Config.Commands = {
    add = 'gps:add',
    remove = 'gps:remove',
    search = 'gps:search',
}

Config.VehicleDistance = 2.5 -- Distance between player & vehicle to do any action

Config.SuccessRate = 30      -- 30% chance to find the installed tracker
Config.SearchDelay = 3000    -- in millisecond
Config.RemoveDelay = 2000    -- in millisecond 

Config.GpsRequired        = true    -- required to install gps
Config.CutterRequired     = true    -- required to remove gps
Config.DetectorRequired   = true    -- required to search gps

Config.UpdateDelay  = 1000   -- in millisecond 
Config.SignalRadius = 1000.0 -- blip will be visible within this distance

Config.Jobs = {
    police = true,
}
