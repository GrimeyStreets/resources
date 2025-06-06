Config.ForceSyncAnimationPosition = true -- reposition must be set

Config.TipZone = {
    coords = vec3(-944.31, -1174.22, 4.5),
    size = vec3(11.0, 7.0, 4.0),
    rotation = 30.0,
    minRank = 1,
    maxRank = 1,
    minTip = 20,
}

Config.Bar = {
    cocktail = {
        label = "Cocktail",
        price = 250,
        animation = {
            dict = 'amb@world_human_drinking@coffee@male@idle_a',
            clip = 'idle_a',
            flag = 49,
            duration = 6500,
            startFrom = 0.0,
        },
        prop = {
            model = 'prop_cocktail',
            bone = 58866,
            pos = vector3(0.01, -0.14, -0.21),
            rot = vector3(-19.0, 29.0, 5.0),
            propAddDelay = 100,
            propRemoveDelay = 6500,
        },
        items = {
            {
                pos = vector3(-940.9237, -1175.782, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.4),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'mp_player_int_upperwank',
                        clip = 'mp_player_int_wank_02',
                        flag = 49,
                        duration = 2000,
                        startFrom = 0.0,
                        reposition = vector4(-941.32, -1175.08, 4.9, 205.58), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_bar_cockshaker',
                        bone = 26610,
                        pos = vector3(0.03, -0.15, 0.09),
                        rot = vector3(-114.0, -9.0, -15.0),
                        propAddDelay = 0,
                        propRemoveDelay = 2000,
                    },
                    animation2 = {
                        dict = 'mini@drinking',
                        clip = 'shots_barman_b',
                        flag = 1,
                        duration = 1800,
                        startFrom = 0.25,
                    },
                    prop2 = {
                        model = 'prop_bar_cockshaker',
                        bone = 58866,
                        pos = vector3(-0.04, -0.12, -0.07),
                        rot = vector3(-35.0, 72.0, 0.0),
                        propAddDelay = 0,
                        propRemoveDelay = 1800,
                    },
                    required = {
                        {item = 'cafe_vodka', label = "Vodka", amount = 1, remove = true},
                        {item = 'cafe_bluecuracao', label = "Blue Curacao", amount = 1, remove = true},
                        {item = 'cafe_lemonade', label = "Lemonade", amount = 1, remove = true},
                        {item = 'cafe_icecube', label = "Ice Cube", amount = 3, remove = true},
                        {item = 'cafe_shaker', label = "Shaker", amount = 1, remove = false},
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-941.9299, -1176.373, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.4),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'mp_player_int_upperwank',
                        clip = 'mp_player_int_wank_02',
                        flag = 49,
                        duration = 2000,
                        startFrom = 0.0,
                        reposition = vector4(-942.3, -1175.67, 4.9, 205.16), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_bar_cockshaker',
                        bone = 26610,
                        pos = vector3(0.03, -0.15, 0.09),
                        rot = vector3(-114.0, -9.0, -15.0),
                        propAddDelay = 0,
                        propRemoveDelay = 2000,
                    },
                    animation2 = {
                        dict = 'mini@drinking',
                        clip = 'shots_barman_b',
                        flag = 1,
                        duration = 1800,
                        startFrom = 0.25,
                    },
                    prop2 = {
                        model = 'prop_bar_cockshaker',
                        bone = 58866,
                        pos = vector3(-0.04, -0.12, -0.07),
                        rot = vector3(-35.0, 72.0, 0.0),
                        propAddDelay = 0,
                        propRemoveDelay = 1800,
                    },
                    required = {
                        {item = 'cafe_vodka', label = "Vodka", amount = 1, remove = true},
                        {item = 'cafe_bluecuracao', label = "Blue Curacao", amount = 1, remove = true},
                        {item = 'cafe_lemonade', label = "Lemonade", amount = 1, remove = true},
                        {item = 'cafe_icecube', label = "Ice Cube", amount = 3, remove = true},
                        {item = 'cafe_shaker', label = "Shaker", amount = 1, remove = false},
                    },
                    fillAmount = 1
                },
            },       
        },
    },
    champagne = {
        label = "Champagne",
        price = 200,
        animation = {
            dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_a@normal',
            clip = 'drink',
            flag = 49,
            duration = 2500,
            startFrom = 0.0,
        },
        prop = {
            model = 'prop_drink_champ',
            bone = 58866,
            pos = vector3(-0.01, -0.2, -0.18),
            rot = vector3(-35.0, 28.0, 1.0),
            propAddDelay = 300,
            propRemoveDelay = 2100,
        },
        items = {
            {
                pos = vector3(-940.937, -1176.074, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.1, 0.1, 0.3),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_c@drunk',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 2600,
                        startFrom = 0.28,
                        reposition = vector4(-941.21, -1175.31, 4.9, 236.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'xs_prop_arena_champ_open',
                        bone = 58866,
                        pos = vector3(0.01, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 100,
                        propRemoveDelay = 2500,
                    },
                    required = {
                        {item = 'cafe_champagne', label = "Champagne", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-942.9198, -1177.255, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.1, 0.1, 0.3),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_c@drunk',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 2600,
                        startFrom = 0.28,
                        reposition = vector4(-943.19, -1176.46, 4.9, 235.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'xs_prop_arena_champ_open',
                        bone = 58866,
                        pos = vector3(0.01, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 100,
                        propRemoveDelay = 2500,
                    },
                    required = {
                        {item = 'cafe_champagne', label = "Champagne", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-943.7935, -1177.408, 4.903264),
                max = 3,
                zone = {
                    size = vector3(0.5, 0.8, 0.3),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                        clip = 'bartender_intro',
                        flag = 1,
                        duration = 6000,
                        startFrom = 0.35,
                        reposition = vector4(-944.07, -1176.5, 4.9, 210.22), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_champ_01b',
                        bone = 58866,
                        pos = vector3(0.03, -0.22, -0.24),
                        rot = vector3(-33.0, 11.0, 0.0),
                        propAddDelay = 500,
                        propRemoveDelay = 3800,
                    },
                    required = {
                        {item = 'cafe_champagne', label = "Champagne", amount = 1, remove = true}
                    },
                    fillAmount = 3
                },
            },
            {
                pos = vector3(-948.8367, -1176.854, 4.903264),
                max = 3,
                zone = {
                    size = vector3(0.8, 0.5, 0.3),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@casino@mini@drinking@champagne_drinking@heels@base',
                        clip = 'bartender_intro',
                        flag = 1,
                        duration = 6000,
                        startFrom = 0.35,
                        reposition = vector4(-947.9, -1176.6, 4.9, 117.76), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_champ_01b',
                        bone = 58866,
                        pos = vector3(0.03, -0.22, -0.24),
                        rot = vector3(-33.0, 11.0, 0.0),
                        propAddDelay = 500,
                        propRemoveDelay = 3800,
                    },
                    required = {
                        {item = 'cafe_champagne', label = "Champagne", amount = 1, remove = true}
                    },
                    fillAmount = 3
                },
            },        
        },
    },
    daiquiri = {
        label = "Daiquiri",
        price = 50,
        animation = {
            dict = 'amb@world_human_drinking@coffee@male@idle_a',
            clip = 'idle_a',
            flag = 49,
            duration = 6500,
            startFrom = 0.0,
        },
        prop = {
            model = 'prop_daiquiri',
            bone = 58866,
            pos = vector3(0.05, -0.12, -0.15),
            rot = vector3(-19.0, 32.0, 5.0),
            propAddDelay = 100,
            propRemoveDelay = 6500,
        },
        items = {
            {
                pos = vector3(-941.1868, -1176.102, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.25),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'mp_player_int_upperwank',
                        clip = 'mp_player_int_wank_02',
                        flag = 49,
                        duration = 2000,
                        startFrom = 0.0,
                        reposition = vector4(-941.53, -1175.32, 4.9, 200.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_bar_cockshaker',
                        bone = 26610,
                        pos = vector3(0.03, -0.15, 0.09),
                        rot = vector3(-114.0, -9.0, -15.0),
                        propAddDelay = 0,
                        propRemoveDelay = 2000,
                    },
                    animation2 = {
                        dict = 'mini@drinking',
                        clip = 'shots_barman_b',
                        flag = 1,
                        duration = 1800,
                        startFrom = 0.25,
                    },
                    prop2 = {
                        model = 'prop_bar_cockshaker',
                        bone = 58866,
                        pos = vector3(-0.04, -0.12, -0.07),
                        rot = vector3(-35.0, 72.0, 0.0),
                        propAddDelay = 0,
                        propRemoveDelay = 1800,
                    },
                    required = {
                        {item = 'cafe_whiterum', label = "White Rum", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-942.0939, -1176.673, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.25),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'mp_player_int_upperwank',
                        clip = 'mp_player_int_wank_02',
                        flag = 49,
                        duration = 2000,
                        startFrom = 0.0,
                        reposition = vector4(-942.47, -1175.87, 4.9, 200.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_bar_cockshaker',
                        bone = 26610,
                        pos = vector3(0.03, -0.15, 0.09),
                        rot = vector3(-114.0, -9.0, -15.0),
                        propAddDelay = 0,
                        propRemoveDelay = 2000,
                    },
                    animation2 = {
                        dict = 'mini@drinking',
                        clip = 'shots_barman_b',
                        flag = 1,
                        duration = 1800,
                        startFrom = 0.25,
                    },
                    prop2 = {
                        model = 'prop_bar_cockshaker',
                        bone = 58866,
                        pos = vector3(-0.04, -0.12, -0.07),
                        rot = vector3(-35.0, 72.0, 0.0),
                        propAddDelay = 0,
                        propRemoveDelay = 1800,
                    },
                    required = {
                        {item = 'cafe_whiterum', label = "White Rum", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            }, 
            {
                pos = vector3(-943.1746, -1177.274, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.25),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'mp_player_int_upperwank',
                        clip = 'mp_player_int_wank_02',
                        flag = 49,
                        duration = 2000,
                        startFrom = 0.0,
                        reposition = vector4(-943.52, -1176.5, 4.9, 200.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_bar_cockshaker',
                        bone = 26610,
                        pos = vector3(0.03, -0.15, 0.09),
                        rot = vector3(-114.0, -9.0, -15.0),
                        propAddDelay = 0,
                        propRemoveDelay = 2000,
                    },
                    animation2 = {
                        dict = 'mini@drinking',
                        clip = 'shots_barman_b',
                        flag = 1,
                        duration = 1800,
                        startFrom = 0.25,
                    },
                    prop2 = {
                        model = 'prop_bar_cockshaker',
                        bone = 58866,
                        pos = vector3(-0.04, -0.12, -0.07),
                        rot = vector3(-35.0, 72.0, 0.0),
                        propAddDelay = 0,
                        propRemoveDelay = 1800,
                    },
                    required = {
                        {item = 'cafe_whiterum', label = "White Rum", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            }, 
            {
                pos = vector3(-945.6891, -1178.668, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.25),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'mp_player_int_upperwank',
                        clip = 'mp_player_int_wank_02',
                        flag = 49,
                        duration = 2000,
                        startFrom = 0.0,
                        reposition = vector4(-946.09, -1177.91, 4.9, 202.89), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_bar_cockshaker',
                        bone = 26610,
                        pos = vector3(0.03, -0.15, 0.09),
                        rot = vector3(-114.0, -9.0, -15.0),
                        propAddDelay = 0,
                        propRemoveDelay = 2000,
                    },
                    animation2 = {
                        dict = 'mini@drinking',
                        clip = 'shots_barman_b',
                        flag = 1,
                        duration = 1800,
                        startFrom = 0.25,
                    },
                    prop2 = {
                        model = 'prop_bar_cockshaker',
                        bone = 58866,
                        pos = vector3(-0.04, -0.12, -0.07),
                        rot = vector3(-35.0, 72.0, 0.0),
                        propAddDelay = 0,
                        propRemoveDelay = 1800,
                    },
                    required = {
                        {item = 'cafe_whiterum', label = "White Rum", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            }, 
            {
                pos = vector3(-948.4372, -1177.646, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.25),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'mp_player_int_upperwank',
                        clip = 'mp_player_int_wank_02',
                        flag = 49,
                        duration = 2000,
                        startFrom = 0.0,
                        reposition = vector4(-947.67, -1177.23, 4.9, 112.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_bar_cockshaker',
                        bone = 26610,
                        pos = vector3(0.03, -0.15, 0.09),
                        rot = vector3(-114.0, -9.0, -15.0),
                        propAddDelay = 0,
                        propRemoveDelay = 2000,
                    },
                    animation2 = {
                        dict = 'mini@drinking',
                        clip = 'shots_barman_b',
                        flag = 1,
                        duration = 1800,
                        startFrom = 0.25,
                    },
                    prop2 = {
                        model = 'prop_bar_cockshaker',
                        bone = 58866,
                        pos = vector3(-0.04, -0.12, -0.07),
                        rot = vector3(-35.0, 72.0, 0.0),
                        propAddDelay = 0,
                        propRemoveDelay = 1800,
                    },
                    required = {
                        {item = 'cafe_whiterum', label = "White Rum", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },     
        },
    },
    redwine = {
        label = "Red Wine",
        price = 50,
        animation = {
            dict = 'mp_safehousewine@',
            clip = 'drinking_wine',
            flag = 49,
            duration = 8200,
            startFrom = 0.48,
        },
        prop = {
            model = 'prop_drink_redwine',
            bone = 26610,
            pos = vector3(0.03, -0.06, 0.11),
            rot = vector3(0.0, 146.0, 28.0),
            propAddDelay = 100,
            propRemoveDelay = 8000,
        },
        items = {
            {
                pos = vector3(-945.9666, -1178.726, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.2),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-946.43, -1178.02, 4.9, 173.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_wine_rose',
                        bone = 58866,
                        pos = vector3(0.01, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_redwine', label = "Redwine", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-948.231, -1178.573, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.2),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-947.59, -1177.96, 4.9, 91.9), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_wine_rose',
                        bone = 58866,
                        pos = vector3(0.01, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_redwine', label = "Redwine", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-948.7146, -1177.704, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.2),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-948.01, -1177.2, 4.9, 84.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_wine_rose',
                        bone = 58866,
                        pos = vector3(0.01, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_redwine', label = "Redwine", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },    
        },
    },
    whitewine = {
        label = "White Wine",
        price = 50,
        animation = {
            dict = 'mp_safehousewine@',
            clip = 'drinking_wine',
            flag = 49,
            duration = 8200,
            startFrom = 0.48,
        },
        prop = {
            model = 'prop_drink_whtwine',
            bone = 26610,
            pos = vector3(0.03, -0.06, 0.11),
            rot = vector3(0.0, 146.0, 28.0),
            propAddDelay = 100,
            propRemoveDelay = 8000,
        },
        items = {
            {
                pos = vector3(-945.7733, -1178.899, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.2),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-946.27, -1178.15, 4.9, 175.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_wine_white',
                        bone = 58866,
                        pos = vector3(0.01, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_whitewine', label = "Whitewine", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-947.9536, -1178.516, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.2),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-947.17, -1178.04, 4.9, 82.03), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_wine_white',
                        bone = 58866,
                        pos = vector3(0.01, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_whitewine', label = "Whitewine", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-948.5213, -1177.877, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.2),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-947.84, -1177.27, 4.9, 92.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_wine_white',
                        bone = 58866,
                        pos = vector3(0.01, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_whitewine', label = "Whitewine", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
        },
    },
    whisky = {
        label = "Whisky",
        price = 50,
        animation = {
            dict = 'amb@world_human_drinking@coffee@male@idle_a',
            clip = 'idle_a',
            flag = 49,
            duration = 6500,
            startFrom = 0.0,
        },
        prop = {
            model = 'prop_drink_whisky',
            bone = 58866,
            pos = vector3(0.09, -0.06, -0.06),
            rot = vector3(-10.0, 19.0, -9.0),
            propAddDelay = 100,
            propRemoveDelay = 6500,
        },
        items = {
            {
                pos = vector3(-939.7962, -1175.541, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.12),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-940.36, -1174.83, 4.9, 180.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_cs_whiskey_bottle',
                        bone = 58866,
                        pos = vector3(0.1, -0.07, 0.03),
                        rot = vector3(-36.0, 57.0, 13.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_whisky', label = "Whisky", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-941.8528, -1176.621, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.12),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-942.43, -1175.9, 4.9, 184.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_cs_whiskey_bottle',
                        bone = 58866,
                        pos = vector3(0.1, -0.07, 0.03),
                        rot = vector3(-36.0, 57.0, 13.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_whisky', label = "Whisky", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-944.9952, -1178.482, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.12),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-945.58, -1177.81, 4.9, 185.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_cs_whiskey_bottle',
                        bone = 58866,
                        pos = vector3(0.1, -0.07, 0.03),
                        rot = vector3(-36.0, 57.0, 13.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_whisky', label = "Whisky", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
        },
    },
    tequilashots = {
        label = "Tequila Shots",
        price = 100,
        animation = {
            dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_a@normal@',
            clip = 'drink',
            flag = 49,
            duration = 5000,
            startFrom = 0.0,
        },
        prop = {
            model = 'prop_shots_glass_cs',
            bone = 58866,
            pos = vector3(0.08, -0.07, -0.01),
            rot = vector3(-36.0, 25.0, 1.0),
            propAddDelay = 100,
            propRemoveDelay = 4000,
        },
        items = {
            {
                pos = vector3(-939.741, -1175.057, 4.910931),
                max = 5,
                zone = {
                    size = vector3(0.3, 0.9, 0.4),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_a@normal@heeled@',
                        clip = 'pour_multi',
                        flag = 1,
                        duration = 5000,
                        startFrom = 0.0,
                        reposition = vector4(-939.84, -1174.42, 4.9, 210.77), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_tequila_bottle',
                        bone = 58866,
                        pos = vector3(0.08, -0.09, -0.15),
                        rot = vector3(-9.0, 9.0, 0.0),
                        propAddDelay = 800,
                        propRemoveDelay = 4000,
                    },
                    required = {
                        {item = 'cafe_tequila', label = "Tequila", amount = 1, remove = true}
                    },
                    fillAmount = 5
                },
            }, 
            {
                pos = vector3(-944.9399, -1177.999, 4.910931),
                max = 5,
                zone = {
                    size = vector3(0.5, 0.9, 0.4),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_a@normal@heeled@',
                        clip = 'pour_multi',
                        flag = 49,
                        duration = 5000,
                        startFrom = 0.0,
                        reposition = vector4(-945.18, -1177.49, 4.9, 223.48),
                    },
                    prop = {
                        model = 'prop_tequila_bottle',
                        bone = 58866,
                        pos = vector3(0.08, -0.09, -0.15),
                        rot = vector3(-9.0, 9.0, 0.0),
                        propAddDelay = 500,
                        propRemoveDelay = 4000,
                    },
                    required = {
                        {item = 'cafe_tequila', label = "Tequila", amount = 1, remove = true}
                    },
                    fillAmount = 5
                },
            },
        },
    },
    tequila = {
        label = "Tequila",
        price = 200,
        animation = {
            dict = 'amb@world_human_drinking@coffee@male@idle_a',
            clip = 'idle_a',
            flag = 49,
            duration = 6500,
            startFrom = 0.0,
        },
        prop = {
            model = 'prop_tequila',
            bone = 58866,
            pos = vector3(0.05, -0.12, -0.15),
            rot = vector3(-19.0, 32.0, 5.0),
            propAddDelay = 100,
            propRemoveDelay = 6500,
        },
        items = {
            {
                pos = vector3(-948.0377, -1178.746, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.25),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-947.44, -1178.14, 4.9, 98.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_tequila_bottle',
                        bone = 58866,
                        pos = vector3(0.02, -0.18, -0.07),
                        rot = vector3(-46.0, 29.0, -17.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_tequila', label = "Tequila", amount = 1, remove = true}
                    },
                    fillAmount = 1
                },
            },
        },
    },
    mojito = {
        label = "Mojito",
        price = 400,
        animation = {
            dict = 'amb@world_human_drinking@coffee@male@idle_a',
            clip = 'idle_a',
            flag = 49,
            duration = 6500,
            startFrom = 0.0,
        },
        prop = {
            model = 'prop_mojito',
            bone = 58866,
            pos = vector3(0.01, -0.06, -0.16),
            rot = vector3(-12.0, 21.0, -69.0),
            propAddDelay = 100,
            propRemoveDelay = 6500,
        },
        items = {
            {
                pos = vector3(-942.9067, -1176.963, 4.903861),
                max = 1,
                zone = {
                    size = vector3(0.1, 0.1, 0.25),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'mp_player_int_upperwank',
                        clip = 'mp_player_int_wank_02',
                        flag = 49,
                        duration = 2000,
                        startFrom = 0.0,
                        reposition = vector4(-943.35, -1176.24, 4.9, 205.83), -- set nil if you don't need
                    },
                    prop = {
                        model = 'prop_bar_cockshaker',
                        bone = 26610,
                        pos = vector3(0.03, -0.15, 0.09),
                        rot = vector3(-114.0, -9.0, -15.0),
                        propAddDelay = 0,
                        propRemoveDelay = 2000,
                    },
                    animation2 = {
                        dict = 'mini@drinking',
                        clip = 'shots_barman_b',
                        flag = 1,
                        duration = 1800,
                        startFrom = 0.25,
                    },
                    prop2 = {
                        model = 'prop_bar_cockshaker',
                        bone = 58866,
                        pos = vector3(-0.04, -0.12, -0.07),
                        rot = vector3(-35.0, 72.0, 0.0),
                        propAddDelay = 0,
                        propRemoveDelay = 1800,
                    },
                    required = {
                        {item = 'cafe_whiterum', label = "Whiterum", amount = 1, remove = true},
                        {item = 'cafe_limejuice', label = "Lime Juice", amount = 1, remove = true},
                        {item = 'cafe_mintleaves', label = "Mint Leaves", amount = 3, remove = true},
                        {item = 'cafe_sodawater', label = "Soda Water", amount = 1, remove = true},
                        {item = 'cafe_icecube', label = "Ice Cube", amount = 3, remove = true},
                        {item = 'cafe_shaker', label = "Shaker", amount = 1, remove = false},
                    },
                    fillAmount = 1
                },
            }, 
        },
    },
    khuslatte = {
        label = "Khus Latte",
        price = 50,
        animation = {
            dict = 'amb@world_human_drinking@coffee@male@idle_a',
            clip = 'idle_a',
            flag = 49,
            duration = 6500,
            startFrom = 0.0,
        },
        prop = {
            model = 'v_res_mcofcup',
            bone = 58866,
            pos = vector3(0.1, -0.06, -0.03),
            rot = vector3(13.0, 30.0, -183.0),
            propAddDelay = 100,
            propRemoveDelay = 6500,
        },
        items = {
            {
                pos = vector3(-949.7323, -1175.868, 4.903264),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.1),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-949.08, -1175.36, 4.9, 98.27), -- set nil if you don't need
                    },
                    prop = {
                        model = 'xm_prop_x17_coffee_jug',
                        bone = 58866,
                        pos = vector3(0.02, -0.18, -0.07),
                        rot = vector3(40.0, 23.0, -226.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_coffeebean', label = "Coffee Bean", amount = 10, remove = true},
                        {item = 'cafe_khusbloom', label = "Dry Khus Bloom", amount = 1, remove = true},
                    },
                    fillAmount = 1
                },
            }, 
            {
                pos = vector3(-949.5721, -1175.971, 4.903264),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.1),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-948.88, -1175.48, 4.9, 95.0), -- set nil if you don't need
                    },
                    prop = {
                        model = 'xm_prop_x17_coffee_jug',
                        bone = 58866,
                        pos = vector3(0.02, -0.18, -0.07),
                        rot = vector3(40.0, 23.0, -226.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_coffeebean', label = "Coffee Bean", amount = 10, remove = true},
                        {item = 'cafe_khusbloom', label = "Dry Khus Bloom", amount = 1, remove = true},
                    },
                    fillAmount = 1
                },
            },
            {
                pos = vector3(-949.5525, -1175.776, 4.903264),
                max = 1,
                zone = {
                    size = vector3(0.15, 0.15, 0.1),
                    heading = 30.0
                },
                refill = {
                    animation = {
                        dict = 'anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal',
                        clip = 'pour_one',
                        flag = 1,
                        duration = 5500,
                        startFrom = 0.0,
                        reposition = vector4(-948.91, -1175.17, 4.9, 105.9), -- set nil if you don't need
                    },
                    prop = {
                        model = 'xm_prop_x17_coffee_jug',
                        bone = 58866,
                        pos = vector3(0.02, -0.18, -0.07),
                        rot = vector3(40.0, 23.0, -226.0),
                        propAddDelay = 2000,
                        propRemoveDelay = 2800,
                    },
                    required = {
                        {item = 'cafe_coffeebean', label = "Coffee Bean", amount = 10, remove = true},
                        {item = 'cafe_khusbloom', label = "Dry Khus Bloom", amount = 1, remove = true},
                    },
                    fillAmount = 1
                },
            },
        },
    }, 
}