Config = {}
Config.Locale = 'en'

--You can set admin in alternative ways-------------------
--Ace Permission
Config.AdminWithAce = true
--Or license
Config.AdminWithLicense = {
    ['license:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'] = true,
}
--Or identifier
Config.AdminWithIdentifier = {
    ['xxxxxxxx'] = true,
}
----------------------------------------------------------

Config.Inventory = 'auto' -- ak47_qb_inventory, qb-inventory, ps-inventory, lj-inventory, ox_inventory, qs-inventory, codem-inventory, origen_inventory, tgiann-inventory

-- account = 'coin' in the shop
Config.SpecialCoin = {
    tablename           = 'cointable',   --adjust this [I don't know what coin script you are using or not, so don't open ticket for this]
    identifiercolumname = 'identifier',  --adjust this [I don't know what coin script you are using or not, so don't open ticket for this]
    coincolumname       = 'coin',        --adjust this [I don't know what coin script you are using or not, so don't open ticket for this]
}

Config.TargetScript = 'qtarget' -- don't change if you are using ox_target
Config.ShowDistance = 5.0

Config.GiveIdCommandAccessByJob = {
    police = {
        minimumrank = 3,
        items = {'idcard', 'policeid', 'weaponlicense'}
    },
    sheriff = {
        minimumrank = 3,
        items = {'idcard', 'sheriffid', 'weaponlicense'}
    },
    ambulance = {
        minimumrank = 3,
        items = {'emsid'}
    }
}

Config.GiveIdCommandAccessByGang = { --only ak47_gangs supported
    ballas = {
        minimumrank = 3,
        items = {'weedlicense'}
    },
}

Config.Cards = {
    idcard = {
        label           = "CITIZEN ID",
        titleColor      = "#000000",
        textColorLight  = "#000000",
        textColorBold   = "#000000",
        barcodeColor    = "#000000",
        textShadowColor = "rgba(0, 0, 0, 0.2)",
        imgBorderColor  = "#000000",
        imgBgColor      = "rgb(153 185 210)",
        prop = {
            model = 'prop_idcard',
            bone = 28422,
            position = vector3(0.084, 0.02, -0.026),
            rotation = vector3(-173.8514, -88.0171, 63.0612),
        },
        animation = {
            dict = 'cop_badge_1@dad',
            clip = 'cop_badge_1_clip',
        },
    },
    policeid = {
        label           = "POLICE ID",
        titleColor      = "#ffffff",
        textColorLight  = "#ffffff",
        textColorBold   = "#ffffff",
        barcodeColor    = "#ffffff",
        textShadowColor = "rgba(0, 0, 0, 0.5)",
        imgBorderColor  = "#ffffff",
        imgBgColor      = "rgb(92 168 49)",
        classes = {
            "Recruit", "Officer", "Sergeant", "Lieutenant", "Chief",
        },
        prop = {
            model = 'prop_policeid',
            bone = 28422,
            position = vector3(0.0600, 0.0210, -0.0400),
            rotation = vector3(-90.00, -180.00, 78.999),
        },
        animation = {
            dict = 'paper_1_rcm_alt1-8',
            clip = 'player_one_dual-8',
        },
    },
    sheriffid = {
        label           = "SHERIFF ID",
        titleColor      = "#ffffff",
        textColorLight  = "#ffffff",
        textColorBold   = "#ffffff",
        barcodeColor    = "#ffffff",
        textShadowColor = "rgba(0, 0, 0, 0.7)",
        imgBorderColor  = "#ffffff",
        imgBgColor      = "rgb(182 148 81)",
        classes = {
            "Recruit", "Officer", "Sergeant", "Lieutenant", "Chief",
        },
        prop = {
            model = 'prop_sheriffid',
            bone = 28422,
            position = vector3(0.084, 0.02, -0.026),
            rotation = vector3(-173.8514, -88.0171, 63.0612),
        },
        animation = {
            dict = 'cop_badge_1@dad',
            clip = 'cop_badge_1_clip',
        },
    },
    driverlicense = {
        label           = "DRIVER LICENSE",
        titleColor      = "#000000",
        textColorLight  = "#000000",
        textColorBold   = "#000000",
        barcodeColor    = "#000000",
        textShadowColor = "rgba(245, 245, 245, 0.2)",
        imgBorderColor  = "#000000",
        imgBgColor      = "rgb(190 227 243)",
        classes = {
            "A", "A1", "BE", "C1", "C1E", "C1E",
            "C", "CE", "D1", "D1E", "D", "DE",
        },
        prop = {
            model = 'prop_driverlicense',
            bone = 28422,
            position = vector3(0.084, 0.02, -0.026),
            rotation = vector3(-173.8514, -88.0171, 63.0612),
        },
        animation = {
            dict = 'cop_badge_1@dad',
            clip = 'cop_badge_1_clip',
        },
    },
    weedlicense = {
        label           = "WEED LICENSE",
        titleColor      = "#ffffff",
        textColorLight  = "#ffffff",
        textColorBold   = "#ffffff",
        barcodeColor    = "#ffffff",
        textShadowColor = "rgba(0, 0, 0, 0.6)",
        imgBorderColor  = "#ffffff",
        imgBgColor      = "rgb(143 185 82)",
        prop = {
            model = 'prop_weedlicense',
            bone = 28422,
            position = vector3(0.084, 0.02, -0.026),
            rotation = vector3(-173.8514, -88.0171, 63.0612),
        },
        animation = {
            dict = 'cop_badge_1@dad',
            clip = 'cop_badge_1_clip',
        },
    },
    emsid = {
        label           = "PARAMEDIC",
        titleColor      = "#ffffff",
        textColorLight  = "#ffffff",
        textColorBold   = "#ffffff",
        barcodeColor    = "#ffffff",
        textShadowColor = "rgba(0, 0, 0, 0.6)",
        imgBorderColor  = "#ffffff",
        imgBgColor      = "#075b89",
        classes = {
            "Recruit", "Paramedic", "Doctor", "Surgeon", "Chief",
        },
        prop = {
            model = 'prop_emsid',
            bone = 28422,
            position = vector3(0.084, 0.02, -0.026),
            rotation = vector3(-173.8514, -88.0171, 63.0612),
        },
        animation = {
            dict = 'cop_badge_1@dad',
            clip = 'cop_badge_1_clip',
        },
    },
    fireid = {
        label           = "FIREFIGHTER",
        titleColor      = "#000000",
        textColorLight  = "#000000",
        textColorBold   = "#000000",
        barcodeColor    = "#000000",
        textShadowColor = "rgba(245, 245, 245, 0.2)",
        imgBorderColor  = "#000000",
        imgBgColor      = "#fdd005",
        classes = {
            "Recruit", "Officer", "Senior", "Chief",
        },
        prop = {
            model = 'prop_fireid',
            bone = 28422,
            position = vector3(0.084, 0.02, -0.026),
            rotation = vector3(-173.8514, -88.0171, 63.0612),
        },
        animation = {
            dict = 'cop_badge_1@dad',
            clip = 'cop_badge_1_clip',
        },
    },
    weaponlicense = {
        label           = "WEAPON PERMIT",
        titleColor      = "#ffffff",
        textColorLight  = "#ffffff",
        textColorBold   = "#ffffff",
        barcodeColor    = "#ffffff",
        textShadowColor = "rgba(0, 0, 0, 0.8)",
        imgBorderColor  = "#ffffff",
        imgBgColor      = "rgb(218 0 0)",
        classes = {
            "Pistol", "Shotgun", "SMG", "AR", "Sniper"
        },
        prop = {
            model = 'prop_weaponlicense',
            bone = 28422,
            position = vector3(0.084, 0.02, -0.026),
            rotation = vector3(-173.8514, -88.0171, 63.0612),
        },
        animation = {
            dict = 'cop_badge_1@dad',
            clip = 'cop_badge_1_clip',
        },
    },
}

Config.Shops = {
	{
		name = "License ID",
        blip = {enable = true, id = 498, color = 3, scale = 0.8},
        items = {
            {
            	item = "idcard", 
            	label = "ID Card",
            	description = "Your citizenship id card",
            	price = 5000, 
            	account = 'cash', -- 'cash', 'bank', 'black_money', 'coin'
            	licenseclass = nil,
            	expire = 1, -- in month
            },
            {
            	item = "driverlicense", 
            	label = "DRIVER LICENSE", 
            	description = "Driving license class C",
            	price = 8000, 
            	account = 'cash', -- 'cash', 'bank', 'black_money', 'coin'
            	licenseclass = "C",
            	expire = 1, -- in month
            },
            -- {
            -- 	item = "weaponlicense", 
            -- 	label = "WEAPON PERMIT", 
            -- 	description = "Firearm permit class 1",
            -- 	price = 25000, 
            -- 	account = 'cash', -- 'cash', 'bank', 'black_money', 'coin'
            -- 	licenseclass = "1",
            -- 	expire = 1, -- in month
            -- }, 
        },
        zones = {
            {
                coords = vector4(-1083.29, -245.64, 37.76, 203.70),
                size = vector3(2.0, 2.0, 2.0),
            },
        },
        target = {label = "License ID", icon = 'fa-id-card', distance = 2.0},
        peds = { --if empty then there will be no ped. Only polyzone
            'mp_m_securoguard_01',
        },
        scenario = 'WORLD_HUMAN_COP_IDLES' -- if nil then ped will not play any scenario
	},
    -- {
    --     name = "Weapon License",
    --     blip = {enable = true, id = 498, color = 1, scale = 0.8},
    --     items = {
    --         {
    --             item = "weaponlicense", 
    --             label = "WEAPON PERMIT", 
    --             description = "Firearm permit class [Pistol]",
    --             price = 25000, 
    --             account = 'cash', -- 'cash', 'bank', 'black_money', 'coin'
    --             licenseclass = "Pistol",
    --             expire = 1, -- in month
    --         }, 
    --         {
    --             item = "weaponlicense", 
    --             label = "WEAPON PERMIT", 
    --             description = "Firearm permit class [Shotgun]",
    --             price = 50000, 
    --             account = 'cash', -- 'cash', 'bank', 'black_money', 'coin'
    --             licenseclass = "Shotgun",
    --             expire = 1, -- in month
    --         }, 
    --         {
    --             item = "weaponlicense", 
    --             label = "WEAPON PERMIT", 
    --             description = "Firearm permit class [SMG]",
    --             price = 75000, 
    --             account = 'bank', -- 'cash', 'bank', 'black_money', 'coin'
    --             licenseclass = "SMG",
    --             expire = 1, -- in month
    --         }, 
    --         {
    --             item = "weaponlicense", 
    --             label = "WEAPON PERMIT", 
    --             description = "Firearm permit class [AR]",
    --             price = 250, 
    --             account = 'coin', -- 'cash', 'bank', 'black_money', 'coin'
    --             licenseclass = "AR",
    --             expire = 1, -- in month
    --         }, 
    --     },
    --     zones = {
    --         {
    --             coords = vector4(13.84, -1106.34, 29.78, 342.99),
    --             size = vector3(2.0, 2.0, 2.0),
    --         },
    --     },
    --     target = {label = "Weapon License", icon = 'fa-id-card', distance = 2.0},
    --     peds = { --if empty then there will be no ped. Only polyzone
    --         's_m_y_ammucity_01',
    --     },
    --     scenario = 'WORLD_HUMAN_COP_IDLES' -- if nil then ped will not play any scenario
    -- },
}

