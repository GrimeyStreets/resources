Config.FarmLocation = vector3(-940.56, -1196.95, -7.39)
Config.FarmRadius = 25.0

Config.FarmingRequiredItem = false

Config.FarmGetItem = {
    name = 'weed_leaf',             -- item that you will get after harvest
    max = 25,                        -- maximum per harvest * 5
    min = 12,                        -- minimum per harvest * 5
}
Config.FarmingFertilize = {         
    item = 'weed_fertilizer',       -- item required to fertilize the plant
    quantity = 1,                   -- quantity that required to fertilize
    damageChance = 5,               -- 5% chance will require fertilizer
}
Config.FarmingSpray = {
    item = 'weed_spray',            -- item required to spray the plant
    quantity = 1,                   -- quantity that required to fertilize
    damageChance = 5,               -- 5% chance will require spray
}

Config.FarmingRequired = {          --  required items to plant a new pot
    [1] = {
        item = 'weed_fertilizer',   -- item name
        quantity = 1,               -- item quantity
    },
    [2] = {
        item = 'weed_pot',          -- item name
        quantity = 1,               -- item quantity
    },
    [3] = {
        item = 'seed_weed',         -- item name
        quantity = 1,               -- item quantity
    },
}

Config.StockItems = {
    {
        pos = vector3(-931.39, -1159.31, 4.9),
        size = 1.0,
        items = {
            ['lighter'] = {
                name = 'Lighter',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cheap_lighter'] = {
                name = 'Cheap Lighter',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },

            ['backroots_honey'] = {
                name = 'Backroots Honey',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['backroots_grape'] = {
                name = 'Backroots Grape',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['graba_wrap'] = {
                name = 'Graba Wrap',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['backroots_creamy_blend'] = {
                name = 'Backroots Creamy Blend',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['preston_pearl_cigars'] = {
                name = 'Preston Pearl Cigars',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['banana_backroots'] = {
                name = 'Banana Backroots',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['pure_cone_king'] = {
                name = 'Pure Cone King',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },

            ['berry_swirl'] = {
                name = 'Berry Swirl',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['golden_crumble'] = {
                name = 'Golden Crumble',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['biscuit_bliss'] = {
                name = 'Biscuit Bliss',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['fig_delight'] = {
                name = 'Fig Delight',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['citrus_crumble'] = {
                name = 'Citrus Crumble',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['fluffy_crunch'] = {
                name = 'Fluffy Crunch',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['blend_99'] = {
                name = 'Blend 99',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['paris_mist'] = {
                name = 'Paris Mist',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['bounce_blend'] = {
                name = 'Bounce Blend',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['spiced_crumble'] = {
                name = 'Spiced Crumble',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['clover_crunch'] = {
                name = 'Clover Crunch',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['berry_bliss'] = {
                name = 'Berry Bliss',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            
            ['vape'] = {
                name = 'Vape',                      -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            
        }
    },
    {
        pos = vector3(-941.34, -1196.1, -7.0),
        size = 2.5,
        items = {
            ['weed_fertilizer'] = {
                name = 'Fertilizer',                            -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['weed_pot'] = {
                name = 'Weed Pot',                            -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['seed_weed'] = {
                name = 'Weed Seed',                            -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            ['pooch_bag'] = {
                name = 'Pooch Bag',                            -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            
        }
    },
    {
        pos = vector3(-939.89, -1171.99, 4.9),
        size = 1.0,
        items = {
            ['cafe_coffeebean'] = {
                name = 'Coffee bean',                              -- item name
                price = 5,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                     -- container size
                available = 100,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
        }
    },
    {
        pos = vector3(-940.88, -1170.34, 4.9),
        size = 1.0,
        items = {
            ['cafe_icecube'] = {
                name = 'Ice Cube',                              -- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                     -- container size
                available = 100,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
        }
    },
    {
        pos = vector3(-944.31, -1174.22, 4.5),
        size = 1.5,
        items = {
            ['cafe_khusbloom'] = {
                name = 'Dry Khus Bloom',                              -- item name
                price = 50,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                     -- container size
                available = 100,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
        }
    },
    {
        pos = vector3(-948.51, -1173.78, 4.9),
        size = 1.0,
        items = {
            ['cafe_vodka'] = {
                name = 'Vodka',                                 -- item name
                price = 50,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_bluecuracao'] = {
                name = 'Blue Curacao',                          -- item name
                price = 30,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_lemonade'] = {
                name = 'Lemonade',                              -- item name
                price = 20,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_shaker'] = {
                name = 'Shaker',                                -- item name
                price = 100,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_champagne'] = {
                name = 'Champagne',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_whiterum'] = {
                name = 'White Rum',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_redwine'] = {
                name = 'Redwine',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_whitewine'] = {
                name = 'Whitewine',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_whisky'] = {
                name = 'Whisky',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_limejuice'] = {
                name = 'Lime juice',                                -- item name
                price = 10,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_mintleaves'] = {
                name = 'Mint Leaves',                                -- item name
                price = 2,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_sodawater'] = {
                name = 'Soda Water',                                -- item name
                price = 20,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_tequila'] = {
                name = 'Tequila',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
        }
    },
    {
        pos = vector3(-943.28, -1170.72, 4.9),
        size = 1.0,
        items = {
            ['cafe_vodka'] = {
                name = 'Vodka',                                 -- item name
                price = 50,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_bluecuracao'] = {
                name = 'Blue Curacao',                          -- item name
                price = 30,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_lemonade'] = {
                name = 'Lemonade',                              -- item name
                price = 20,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_shaker'] = {
                name = 'Shaker',                                -- item name
                price = 100,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_champagne'] = {
                name = 'Champagne',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_whiterum'] = {
                name = 'White Rum',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_redwine'] = {
                name = 'Redwine',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_whitewine'] = {
                name = 'Whitewine',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_whisky'] = {
                name = 'Whisky',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_limejuice'] = {
                name = 'Lime juice',                                -- item name
                price = 10,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_mintleaves'] = {
                name = 'Mint Leaves',                                -- item name
                price = 2,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_sodawater'] = {
                name = 'Soda Water',                                -- item name
                price = 20,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
            ['cafe_tequila'] = {
                name = 'Tequila',                                -- item name
                price = 50,                                    -- price of the item. set it 0 if you don't want to buy with society money
                slots = 100,                                    -- container size
                available = 100,                                -- available in stock
                regeneration = 60,                              -- in second
            },
        }
    },
}

Config.FarmingItems = {
    -- [1] = {
    --     pos = vector3(-926.52, -1172.31, -1.86), 
    --     item = 'weed_fertilizer',                       -- item name
    --     price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
    --     slots = 20,                                     -- container size
    --     available = 10,                                 -- available in stock
    --     regeneration = 60,                              -- in second
    --     msg = '~g~[E]~s~ - ~b~Fertilizer~s~',
    --     msgtarget = 'Fertilizer',
    -- },
}


Config.ProcessLocations = {
    vector4(-941.47, -1184.67, -7.39, 28.12)
}

Config.Objects = {
    [1] = "bkr_prop_weed_01_small_01c",
    [2] = "bkr_prop_weed_01_small_01b",
    [3] = "bkr_prop_weed_01_small_01a",
    [4] = "bkr_prop_weed_med_01a",
    [5] = "bkr_prop_weed_med_01b",
    [6] = "bkr_prop_weed_lrg_01a",
    [7] = "bkr_prop_weed_lrg_01b",
    --There is no stage 8. So don't add any prop here
}

Config.SageTimer = {
    [1] = 1, --got to next stage in minute
    [2] = 1, --got to next stage in minute
    [3] = 1, --got to next stage in minute
    [4] = 1, --got to next stage in minute
    [5] = 1, --got to next stage in minute
    [6] = 1, --got to next stage in minute
    [7] = 1, --got to next stage in minute
    --There is no stage 8. So don't add any stage here
}

Config.Plants = {
	vector3(-937.52, -1197.77, -8.28),
	vector3(-937.11, -1198.77, -8.24),
	vector3(-936.49, -1199.76, -8.29),
	vector3(-936.07, -1200.77, -8.29),
	vector3(-935.59, -1201.72, -8.29),
	vector3(-937.84, -1203.29, -8.29),
	vector3(-938.19, -1202.57, -8.29),
	vector3(-938.51, -1201.78, -8.29),
	vector3(-939.08, -1200.80, -8.29),
	vector3(-939.44, -1200.02, -8.29),
	vector3(-939.89, -1199.17, -8.29),
	vector3(-937.50, -1201.04, -8.40),
	vector3(-938.51, -1198.98, -8.41),
	vector3(-937.12, -1201.57, -8.41),
	vector3(-934.93, -1203.70, -8.41),
	vector3(-934.38, -1204.25, -8.29),
	vector3(-933.31, -1206.66, -8.29),
	vector3(-934.21, -1207.09, -8.29),
	vector3(-931.50, -1205.85, -8.29),
	vector3(-935.43, -1204.75, -8.29),
	vector3(-937.29, -1205.79, -8.29),
	vector3(-943.01, -1200.44, -8.39),
	vector3(-943.89, -1200.98, -8.39),
	vector3(-944.69, -1200.85, -8.39),
	vector3(-945.03, -1201.73, -8.39),
	vector3(-945.55, -1200.34, -8.39),
	vector3(-944.31, -1200.08, -8.39),
	vector3(-943.66, -1199.28, -8.39),
	vector3(-944.58, -1199.21, -8.39),
	vector3(-943.98, -1198.54, -8.39),
	vector3(-945.57, -1199.31, -8.39),
	vector3(-946.15, -1198.92, -8.39),
	vector3(-935.46, -1190.39, -8.41),
	vector3(-936.02, -1190.75, -8.41),
	vector3(-936.61, -1191.27, -8.41),
	vector3(-937.12, -1191.90, -8.41),
	vector3(-934.90, -1191.66, -8.41),
	vector3(-935.86, -1192.29, -8.41),
	vector3(-934.22, -1192.59, -8.41),
	vector3(-934.86, -1192.92, -8.41),
	vector3(-935.61, -1193.29, -8.41),
	vector3(-936.22, -1193.97, -8.41),
	vector3(-930.26, -1199.14, -8.32),
	vector3(-931.07, -1199.51, -8.32),
	vector3(-931.85, -1199.96, -8.32),
	vector3(-932.42, -1200.53, -8.32),
	vector3(-931.50, -1201.93, -8.32),
	vector3(-931.27, -1201.02, -8.32),
	vector3(-930.55, -1201.88, -8.32),
	vector3(-929.44, -1202.03, -8.32),
	vector3(-929.56, -1200.38, -8.32),
	vector3(-930.42, -1200.44, -8.32),
	vector3(-932.68, -1199.44, -8.24),
	vector3(-947.49, -1198.08, -8.27),
	vector3(-948.00, -1197.49, -8.27),
	vector3(-948.24, -1196.45, -8.24),
	vector3(-948.61, -1195.84, -8.24),
	vector3(-949.06, -1195.13, -8.24),
	vector3(-949.48, -1194.38, -8.24),
	vector3(-949.95, -1193.59, -8.24),
	vector3(-947.31, -1192.35, -8.24),
	vector3(-946.79, -1193.28, -8.24),
	vector3(-946.50, -1193.83, -8.24),
	vector3(-946.23, -1194.75, -8.24),
	vector3(-945.96, -1195.30, -8.24),
	vector3(-945.31, -1196.46, -8.24),
	vector3(-946.33, -1197.13, -8.39),
	vector3(-946.78, -1196.34, -8.39),
	vector3(-947.99, -1194.25, -8.39),
	vector3(-948.48, -1193.30, -8.39),
	vector3(-933.40, -1197.56, -8.24),
	vector3(-933.83, -1196.95, -8.24),
	vector3(-934.27, -1196.20, -8.24),
	vector3(-934.57, -1195.64, -8.24),
	vector3(-932.92, -1194.10, -8.24),
	vector3(-932.30, -1194.96, -8.24),
	vector3(-931.71, -1196.01, -8.24),
	vector3(-932.64, -1196.36, -8.24),
	vector3(-940.38, -1204.86, -8.24),
	vector3(-940.96, -1203.72, -8.24),
	vector3(-941.43, -1202.84, -8.24),
	vector3(-941.78, -1202.00, -8.24),
	vector3(-942.96, -1202.78, -8.52),
	vector3(-943.99, -1203.50, -8.60),
	vector3(-943.63, -1204.53, -8.60),
	vector3(-942.23, -1205.07, -8.39),
	vector3(-943.10, -1205.69, -8.39),
	vector3(-941.88, -1192.80, -8.39),
	vector3(-942.32, -1192.30, -8.39),
	vector3(-942.70, -1191.59, -8.39),
	vector3(-943.08, -1190.86, -8.34),
	vector3(-943.48, -1190.25, -8.34),
	vector3(-943.53, -1194.03, -8.39),
	vector3(-943.94, -1193.31, -8.39),
	vector3(-944.36, -1192.54, -8.39),
	vector3(-944.84, -1191.78, -8.39),
}
