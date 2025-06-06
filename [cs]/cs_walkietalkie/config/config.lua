CodeStudio = {}
CodeStudio.Debug = false
CodeStudio.AutoSQL = true

-- 'QB' = For QBCore Framework
-- 'ESX' = For ESX Framework
-- false = For Standalone (DO NOT PUT 'false')

CodeStudio.ServerType = 'QB'    --['QB'|'ESX'|false]

CodeStudio.Radio = {
    BlurOnUse = false,  --Blur Background on Use
    useAnimation = true,    --Enable Radio Animation
    MaxFrequency = 999,  --Maximum Frequency That player can connect
    Interaction = {
        UseItem = true,    --Default Item Name: 'radio'
        UseCommand = false,   --Default Command Name: '/radio'
        UseWithKey = ''  --If Yes then put the KEY 
    },
    Features = {
        ChatSystem = true,          -- Chat System Between Players
        AlertSystem = true,         -- An Emergency ALert System to Alert Connected Radio Channel Members
        Channel_Locks = true,       -- Lock System to Lock Channels with Passwords
        MemberList = false,          -- Member List Feature to allow quick overlocking of connected members and owner mamangement of members
        NickName = true             -- Toggle Ingame Radio Username/Nickname Feature
    },
    DeleteChatsOnRestart = false,    --Delete ALl Chats on server restart
    DisconnectInWater = false,       --Disconnect/Disable Radio in Water
    DisconnectOnNoRadio = true,     --Requires UseItem
}

CodeStudio.QuickConnect = {     --Quick Connect to Next or Previous Channel with keys
    Enable = false,
    Next_Key = 'OEM_4',  --Key: [
    Previous_Key = 'OEM_6' --Key: ]
}

CodeStudio.MemeberList_Overlay = {  --Mini UI to Display connected radio members as an overlay on there screen
    Enable = true,
    ShowTalkingMember = true,   --This will highlight talking memeber in member list overlay
    DisplayPlayerID = true     --Display Player ID true/false
}

CodeStudio.Jammer = {  --Portable Jammer Device
    Enable = true,
    Jammer_Model = `ch_prop_ch_mobile_jammer_01x`,
    Jammer_Radius = 10,  --Radius of Network Jammer
    Pickup_Key = 38,   --Key To Pickup Radio Jammer from Ground
    Interaction = {
        UseItem = false,    --Default Item Name: 'radio_jammer'
        UseCommand = true,  --Default Command Name: 'usejammer'
    },
    Restrict = { --These Jobs/Gangs/Identifers/Discord Roles or UserID, Ace Perms Can Access Jammer and Bypass
        'police'
    },
}

CodeStudio.JammerCar = {     --Jammer Vehicle
    Enable = true,
    allowedVehicles = {     --Jammer Vehicles
        [`police`] = true,
        [`police2`] = true,
        [`polgauntlet`] = true,
    },
    Jammer_Radius = 10,  --Radius of Network Jammer
    Interaction = {
        UseItem = false,    --Default Item Name: 'vehicle_jammer'
        UseCommand = true,  --Default Command Name: 'carjammer'
    },
    PrgressBar = {  --Add Progress Bar in Activating Jammer
        Enable = true,
        Wait_Time = 5000,
    },
    Restrict = { --These  Jobs/Gangs/Identifers/Discord Roles or UserID, Ace Perms Can Access Jammer and Bypass
        'police'
    },
}

CodeStudio.Radio_Scanner = {    --Radio Scanner to Scan Nearby Connections
    Enable = true,
    useAnimation = true,        --Enable Scanner Animation
    Scanner_Distance = 100.0,   --Maximum Distance that radio scanner can scan
    Scan_Time = 2000,    --Scanning Time In ms
    EnableMovement = false,         --Enable Walking while using scanner
    Interaction = {
        UseItem = false,    --Default Item Name: 'radio_scanner'
        UseCommand = true,  --Default Command Name: 'radioScan'
    },
    Restrict = { --These  Jobs/Gangs/Identifers/Discord Roles or UserID, Ace Perms Can Access Radio Scanner
        'police'
    },
}


CodeStudio.Restricted_Zones = { 
    [1] = {
        coords = vector3(429.67, -979.73, 30.71),
        radius = 10,        --Restricted Area Size
        allowedJob = { --These  Jobs/Gangs/Identifers/Discord Roles or UserID, Ace Perms are allowed to use radio
            'police'
        }
    },
    [2] = {
        coords = vector3(-754.48, -2000.97, 8.88),
        radius = 1,
    },
}

--- Private Channel Restrictions ---
CodeStudio.RestrictedChannels = {
   --[Channel] = {job1, job2, job3, gang, ace perms, discord user id or role id}
   [1] = {'police', 'ambulance'},
   [2] = {'ambulance', 'police'},
}


CodeStudio.ChannelName = {  -- You can add custom channel names
    --[channel] = 'Custom Name'
    [1] = 'Grimey PD',
    [2] = 'Grimey EMS',
}