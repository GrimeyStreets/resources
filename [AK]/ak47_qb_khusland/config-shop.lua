Config.format = {
    currency = 'USD',                               -- This is the format of the currency, so that your currency sign appears correctly
    location = 'en-US'                              -- This is the location of your country, to format the decimal places according to your standard
}

Config.Default = {
    stock = 300,
    price = 500
}

Config.ManagementRank = {                           -- Minimum job rank who can update item price & stock form shop management
    stock = 1,
    price = 1
}

Config.AutoStock = {         -- auto stock for shop items
    enable = false,
    slots = 500,             -- container size
    regeneration = 10,       -- regenerate item every 10 minutes
    add = 10,                -- add 1 item to the stock
}

Config.Shop = {
    blip = {enable = true, pos = vector3(-932.52, -1171.16, 5.3), name = 'KhusLand', sprite = 469, color = 32, size = 1.0, radius = 0.0, radius_color = 32},                                                           -- job name
    management = vector3(-932.52, -1171.16, 5.3),
    sell_coords = {                                    -- The coordinates where customes will buy things on this store (coordinates composed of x, y, z)
        {
            pos = vector3(-930.83, -1170.19, 5.3),
            radius = 0.5,
            pages = {
                [0] = {name = "Flavours", icon = 'fa-cookie-bite'},
                [1] = {name = "Backwoods", icon = 'fa-cookie-bite'},
                [2] = {name = "Joints", icon = 'fa-cookie-bite'},
                [3] = {name = "Vape", icon = 'fa-cookie-bite'},
                [4] = {name = "Utilities", icon = 'fa-cookie-bite'},
            }
        },{
            pos = vector3(-921.69, -1169.2, 4.9),
            radius = 2.0,
            pages = {
                [0] = {name = "Flavours", icon = 'fa-cookie-bite'},
                [1] = {name = "Backwoods", icon = 'fa-cookie-bite'},
                [2] = {name = "Joints", icon = 'fa-cookie-bite'},
                [3] = {name = "Vape", icon = 'fa-cookie-bite'},
                [4] = {name = "Utilities", icon = 'fa-cookie-bite'},
            }
        },
        {
            pos = vector3(-927.92, -1174.66, 4.9),
            radius = 1.0,
            pages = {
                [0] = {name = "Flavours", icon = 'fa-cookie-bite'},
                [1] = {name = "Backwoods", icon = 'fa-cookie-bite'},
                [2] = {name = "Joints", icon = 'fa-cookie-bite'},
                [3] = {name = "Vape", icon = 'fa-cookie-bite'},
                [4] = {name = "Utilities", icon = 'fa-cookie-bite'},

            }
        },
        {
            pos = vector3(-934.98, -1178.91, 4.9),
            radius = 1.0,
            pages = {
                [0] = {name = "Flavours", icon = 'fa-cookie-bite'},
                [1] = {name = "Backwoods", icon = 'fa-cookie-bite'},
                [2] = {name = "Joints", icon = 'fa-cookie-bite'},
                [3] = {name = "Vape", icon = 'fa-cookie-bite'},
                [4] = {name = "Utilities", icon = 'fa-cookie-bite'},

            }
        },
        {
            pos = vector3(-942.31, -1183.11, 4.9),
            radius = 1.0,
            pages = {
                [0] = {name = "Flavours", icon = 'fa-cookie-bite'},
                [1] = {name = "Backwoods", icon = 'fa-cookie-bite'},
                [2] = {name = "Joints", icon = 'fa-cookie-bite'},
                [3] = {name = "Vape", icon = 'fa-cookie-bite'},
                [4] = {name = "Utilities", icon = 'fa-cookie-bite'},
            }
        },
    },
    edibles = {
        {
            pos = vector3(-948.8843, -1185.859, 4.5),
            boxHeading = 180.0,
            boxSize = vector3(1.0, 1.0, 3.0),
            refillHunger = 30,
            refillThirst = 30,
            relieveStress = 30,
            consumeDelay = 10,
            item = {
                name = "kushkrisps",
                label = "Kush Krisps",
                placement = {
                    prop = 'prop_kushkrisps',
                    bone = 28422,
                    pos = vector3(0.0, 0.0, 0.0),
                    rot = vector3(0.0, 0.0, 0.0),
                },
                placement2 = {
                    prop = 'prop_kushkrisps_plate',
                    bone = 60309,
                    pos = vector3(-0.05, 0.1, 0.0),
                    rot = vector3(0.0, 0.0, 0.0),
                },
            },
        },{
            pos = vector3(-951.2564, -1181.847, 4.5),
            boxHeading = 180.0,
            boxSize = vector3(1.0, 1.0, 3.0),
            refillHunger = 30,
            refillThirst = 30,
            relieveStress = 30,
            consumeDelay = 10,
            item = {
                name = "herbaldelightgummies",
                label = "Herbal Delight Gummies",
                placement = {
                    prop = 'prop_herbaldelightgummies',
                    bone = 28422,
                    pos = vector3(0.0, 0.0, 0.0),
                    rot = vector3(0.0, 0.0, 0.0),
                },
                placement2 = {
                    prop = 'prop_herbaldelightgummies_plate',
                    bone = 60309,
                    pos = vector3(-0.05, 0.1, 0.0),
                    rot = vector3(0.0, 0.0, 0.0),
                },
            },
        },{
            pos = vector3(-953.5305, -1177.789, 4.5),
            boxHeading = 155.0,
            boxSize = vector3(1.0, 1.0, 3.0),
            refillHunger = 30,
            refillThirst = 30,
            relieveStress = 30,
            consumeDelay = 10,
            item = {
                name = "blazebites",
                label = "Blaze Bites",
                placement = {
                    prop = 'prop_blazebites',
                    bone = 28422,
                    pos = vector3(0.0, 0.0, 0.0),
                    rot = vector3(0.0, 0.0, 0.0),
                },
                placement2 = {
                    prop = 'prop_blazebites_plate',
                    bone = 60309,
                    pos = vector3(0.1, 0.1, 0.0),
                    rot = vector3(0.0, 180.0, 180.0),
                },
            },
        },{
            pos = vector3(-940.9868, -1187.784, 4.5),
            boxHeading = 155.0,
            boxSize = vector3(1.0, 1.0, 3.0),
            refillHunger = 30,
            refillThirst = 30,
            relieveStress = 30,
            consumeDelay = 10,
            item = {
                name = "chroniccrunchcookies",
                label = "Chronic Crunch Cookies",
                placement = {
                    prop = 'prop_chroniccrunchcookies',
                    bone = 28422,
                    pos = vector3(0.0, 0.0, 0.0),
                    rot = vector3(0.0, 180.0, 0.0),
                },
                placement2 = {
                    prop = 'prop_chroniccrunchcookies_plate',
                    bone = 60309,
                    pos = vector3(0.1, 0.1, 0.0),
                    rot = vector3(0.0, 180.0, 180.0),
                },
            },
        },{
            pos = vector3(-934.3478, -1171.768, 5.0),
            boxHeading = 155.0,
            boxSize = vector3(1.0, 1.0, 3.0),
            refillHunger = 30,
            refillThirst = 30,
            relieveStress = 30,
            consumeDelay = 10,
            item = {
                name = "hightimebrownies",
                label = "Hightime Brownies",
                placement = {
                    prop = 'prop_hightimebrownies',
                    bone = 28422,
                    pos = vector3(0.0, 0.0, 0.0),
                    rot = vector3(0.0, 0.0, 0.0),
                },
                placement2 = {
                    prop = 'prop_hightimebrownies_plate',
                    bone = 60309,
                    pos = vector3(0.1, 0.1, 0.0),
                    rot = vector3(0.0, 180.0, 180.0),
                },
            },
        },
    },
    managepages = {
        [0] = {name = "Flavours", icon = 'fa-cookie-bite'},
        [1] = {name = "Backwoods", icon = 'fa-cookie-bite'},
        [2] = {name = "Joints", icon = 'fa-cookie-bite'},
        [3] = {name = "Vape", icon = 'fa-cookie-bite'},
        [4] = {name = "Utilities", icon = 'fa-cookie-bite'},
        [5] = {name = "Edibles", icon = 'fa-cookie-bite'},
    },
    data = {
        market_items = {                    -- Here you configure the items definitions
            backroots_honey = {             -- The item ID
                name = "Backroots Honey",   -- The item display name
                page = 0,                    -- Set on which page this item will appear
            },
            backroots_grape = {             -- The item ID
                name = "Backroots Grape",   -- The item display name
                page = 0,                    -- Set on which page this item will appear
            },
            graba_wrap = {             -- The item ID
                name = "Graba Wrap",   -- The item display name
                page = 0,                    -- Set on which page this item will appear
            },
            backroots_creamy_blend = {             -- The item ID
                name = "Backroots Creamy Blend",   -- The item display name
                page = 0,                    -- Set on which page this item will appear
            },
            preston_pearl_cigars = {             -- The item ID
                name = "Preston Pearl Cigars",   -- The item display name
                page = 0,                    -- Set on which page this item will appear
            },
            banana_backroots = {             -- The item ID
                name = "Banana Backroots",   -- The item display name
                page = 0,                    -- Set on which page this item will appear
            },
            pure_cone_king = {             -- The item ID
                name = "Pure Cone King",   -- The item display name
                page = 0,                    -- Set on which page this item will appear
            },
            
            
            glacatti = {                    -- The item ID
                name = "Glacatti",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            hary_payton = {                    -- The item ID
                name = "Hary Payton",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            grain_cream = {                    -- The item ID
                name = "Grain Cream",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            wild_feline = {                    -- The item ID
                name = "Wild Feline",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            frosty_phantom = {                    -- The item ID
                name = "Frosty Phantom",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            peach_cobbler = {                    -- The item ID
                name = "Peach Cobbler",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            boss_blend = {                    -- The item ID
                name = "Boss Blend",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            pastry_blend = {                    -- The item ID
                name = "Pastry Blend",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            pure_runs = {                    -- The item ID
                name = "Pure Runs",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            snowberry_gelato = {                    -- The item ID
                name = "Snowberry Gelato",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            berry_muffin = {                    -- The item ID
                name = "Berry Muffin",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            elegant_porcelain = {                    -- The item ID
                name = "Elegant Porcelain",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            rosy_dunes = {                    -- The item ID
                name = "Rosy Dunes",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            zen_blend = {                    -- The item ID
                name = "Zen Blend",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            crisp_gelato = {                    -- The item ID
                name = "Crisp Gelato",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            golden_biscuit = {                    -- The item ID
                name = "Golden Biscuit",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            collins_way = {                    -- The item ID
                name = "Collins Way",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            endurance_blend = {                    -- The item ID
                name = "Endurance Blend",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            choco_creme = {                    -- The item ID
                name = "Choco Creme",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            spiky_pear = {                    -- The item ID
                name = "Spiky Pear",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            runs_elite = {                    -- The item ID
                name = "Runs Elite",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            azure_tomyz = {                    -- The item ID
                name = "Azure Tomyz",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            vapor_essence = {                    -- The item ID
                name = "Vapor Essence",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            frosties_blend = {                    -- The item ID
                name = "Frosties Blend",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            bio_crunch = {                    -- The item ID
                name = "Bio Crunch",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            frosted_delight = {                    -- The item ID
                name = "Frosted Delight",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            royal_haze = {                    -- The item ID
                name = "Royal Haze",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            sunset_secret = {                    -- The item ID
                name = "Sunset Secret",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            fluffy_og = {                    -- The item ID
                name = "Fluffy OG",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            lunar_stone = {                    -- The item ID
                name = "Lunar Stone",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            tangy_fuel = {                    -- The item ID
                name = "Tangy Fuel",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            summit_og = {                    -- The item ID
                name = "Tangy Fuel",          -- The item display name
                page = 1,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                        ['pooch_bag'] = 1,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            

            glacatti_joint = {                    -- The item ID
                name = "Glacatti Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            hary_payton_joint = {                    -- The item ID
                name = "Hary Payton Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            grain_cream_joint = {                    -- The item ID
                name = "Grain Cream Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            wild_feline_joint = {                    -- The item ID
                name = "Wild Feline Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            frosty_phantom_joint = {                    -- The item ID
                name = "Frosty Phantom Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            peach_cobbler_joint = {                    -- The item ID
                name = "Peach Cobbler Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            boss_blend_joint = {                    -- The item ID
                name = "Boss Blend Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            pastry_blend_joint = {                    -- The item ID
                name = "Pastry Blend Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            pure_runs_joint = {                    -- The item ID
                name = "Pure Runs Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            snowberry_gelato_joint = {                    -- The item ID
                name = "Snowberry Gelato Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            berry_muffin_joint = {                    -- The item ID
                name = "Berry Muffin Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            elegant_porcelain_joint = {                    -- The item ID
                name = "Elegant Porcelain Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            rosy_dunes_joint = {                    -- The item ID
                name = "Rosy Dunes Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            zen_blend_joint = {                    -- The item ID
                name = "Zen Blend Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            crisp_gelato_joint = {                    -- The item ID
                name = "Crisp Gelato Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            golden_biscuit_joint = {                    -- The item ID
                name = "Golden Biscuit Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            collins_way_joint = {                    -- The item ID
                name = "Collins Way Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            endurance_blend_joint = {                    -- The item ID
                name = "Endurance Blend Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            choco_creme_joint = {                    -- The item ID
                name = "Choco Creme Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            spiky_pear_joint = {                    -- The item ID
                name = "Spiky Pear Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            runs_elite_joint = {                    -- The item ID
                name = "Runs Elite Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            azure_tomyz_joint = {                    -- The item ID
                name = "Azure Tomyz Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            vapor_essence_joint = {                    -- The item ID
                name = "Vapor Essence Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            frosties_blend_joint = {                    -- The item ID
                name = "Frosties Blend Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            bio_crunch_joint = {                    -- The item ID
                name = "Bio Crunch Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            frosted_delight_joint = {                    -- The item ID
                name = "Frosted Delight Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            royal_haze_joint = {                    -- The item ID
                name = "Royal Haze Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            sunset_secret_joint = {                    -- The item ID
                name = "Sunset Secret Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            fluffy_og_joint = {                    -- The item ID
                name = "Fluffy OG Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            lunar_stone_joint = {                    -- The item ID
                name = "Lunar Stone Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            tangy_fuel_joint = {                    -- The item ID
                name = "Tangy Fuel Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            summit_og_joint = {                    -- The item ID
                name = "Summit OG Joint",          -- The item display name
                page = 2                    -- Set on which page this item will appear
            },
            


            berry_swirl = {                    -- The item ID
                name = "Berry Swirl",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            golden_crumble = {                    -- The item ID
                name = "Golden Crumble",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            biscuit_bliss = {                    -- The item ID
                name = "Biscuit Bliss",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            fig_delight = {                    -- The item ID
                name = "Fig Delight",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            citrus_crumble = {                    -- The item ID
                name = "Citrus Crumble",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            fluffy_crunch = {                    -- The item ID
                name = "Fluffy Crunch",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            blend_99 = {                    -- The item ID
                name = "Blend 99",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            paris_mist = {                    -- The item ID
                name = "Paris Mist",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            bounce_blend = {                    -- The item ID
                name = "Bounce Blend",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            spiced_crumble = {                    -- The item ID
                name = "Spiced Crumble",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            clover_crunch = {                    -- The item ID
                name = "Clover Crunch",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            berry_bliss = {                    -- The item ID
                name = "Berry Bliss",          -- The item display name
                page = 3                    -- Set on which page this item will appear
            },
            
            
            lighter = {                     -- The item ID
                name = "Lighter",           -- The item display name
                page = 4                    -- Set on which page this item will appear
            },
            cheap_lighter = {               -- The item ID
                name = "Cheap Lighter",     -- The item display name
                page = 4                    -- Set on which page this item will appear
            },
            vape = {               -- The item ID
                name = "Vape",     -- The item display name
                page = 4                    -- Set on which page this item will appear
            },

            kushkrisps = {               -- The item ID
                name = "Kush Krisps",     -- The item display name
                page = 5,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            herbaldelightgummies = {               -- The item ID
                name = "Herbal Delight Gummies",     -- The item display name
                page = 5,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            blazebites = {               -- The item ID
                name = "Blaze Bites",     -- The item display name
                page = 5,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            chroniccrunchcookies = {               -- The item ID
                name = "Chronic Crunch Cookies",     -- The item display name
                page = 5,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            hightimebrownies = {               -- The item ID
                name = "HighTime Brownies",     -- The item display name
                page = 5,                    -- Set on which page this item will appear
                process = {
                    required = {
                        ['weed_leaf'] = 10,
                    },
                    processTime = 10000,
                    reward = 1,
                }
            },
            
        },
    }
}