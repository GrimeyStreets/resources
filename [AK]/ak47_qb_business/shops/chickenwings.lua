Config.Shop['chickenwings'] = { -- job name
	blip = {enable = true, name = 'chickenwings', sprite = 515, color = 25, size = 0.8, radius = 0.0, radius_color = 4},
	boss_action = vector3(1248.393, -357.234, 69.209),
	management = vector3(1239.734, -353.166, 69.209),
	managementRankFor = {
		price = 2,
		stock = 2,
	},
	autoStock = {         		 -- auto refill shop items
	    enable = true,
	    slots = 500,             -- container size
	    regeneration = 10,       -- regenerate item every 10 minutes
	    add = 10,                -- add 1 item to the stock
	},
	crafting = {
		menu = vector3(1239.122, -350.026, 69.209),
		data = {
			boneless_wings = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					--{item = 'water', quantity = 1, willremove = false}, 
					--{item = 'bread', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			buffalo_ranch_fries = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			cajun_fried_corn = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			cheese_fries = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			large_thigh_bites = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			spicy_cajun_fries = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			seasoned_fries = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},

			bites_group_pack = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 3, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			boneless_meal_deal = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			classic_wings_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},
				}
			},
			crispy_tender_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},
				}
			},
			crispy_tenders = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},
				}
			},
			group_pack = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 3, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			hundred_wings = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			meal_for_two = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},
				}
			},
			party_pack = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 4, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},
				}
			},
			tender_pack = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 4, willremove = true},
					{item = 'fresh_baked_rolls', quantity = 4, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},
				}
			},
			thigh_bites_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},
				}
			},
			thirty_crispy_tenders = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			triple_meal_deal = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			wing_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chickenwings_dips', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},
				}
			},

			chicken_and_waffles = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
 					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_caesar_salad = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
 					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			garlic_parm_wings = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
 					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			hot_chicken_wrap = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
 					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			korean_bbq_wings = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
 					
				},
				steps = {
					{pos = vector4(1240.041, -348.701, 69.209, 346.831),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(1242.181, -351.321, 69.209, 347.403),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			

			light_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			slim_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			spicy_cherry_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			w_ice_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			citrus_burst_soda = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			berry_sparkle_soda = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			medium_citrus_spark = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			apple_fizz = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			citrus_spark = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(1238.076, -348.652, 69.209, 348.318),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			
		}
	},
	storage = {
		pos = vector4(1241.359, -350.589, 69.209, 0.0), 		-- x, y, z, heading
		prop = nil,
		items = {
            cheese_sauce = {
                name = 'Cheese Sauce',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            chocolate_chunk_brownie = {
                name = 'Chocolate Chunk Brownie',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            fresh_baked_rolls = {
                name = 'Fresh Baked Rolls',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            side_of_flavor = {
                name = 'Side of Flavor',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            veggie_sticks = {
                name = 'Veggie Sticks',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            chickenwings_dips = {
                name = 'chickenwings Dips',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            
		}
	},
	sell_coords = {											-- The coordinates where customes will buy things on this store (coordinates composed of x, y, z)
		vector3(1242.111, -355.684, 69.209),
		vector3(1239.457, -354.994, 69.209),
		vector3(1236.954, -354.312, 69.209),
	},
	data = {
		market_items = {					-- Here you configure the items definitions
			boneless_wings = {				-- The item ID
				name = "Boneless Wings",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			buffalo_ranch_fries = {				-- The item ID
				name = "Buffalo Ranch Fries",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			cajun_fried_corn = {				-- The item ID
				name = "Cajun Fried Corn",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			cheese_fries = {				-- The item ID
				name = "Cheese Fries",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			large_thigh_bites = {				-- The item ID
				name = "Large Thigh Bites",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			spicy_cajun_fries = {				-- The item ID
				name = "Spicy Cajun Fries",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			seasoned_fries = {				-- The item ID
				name = "Seasoned Fries",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},

			bites_group_pack = {				-- The item ID
				name = "Bites Group Pack",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			boneless_meal_deal = {				-- The item ID
				name = "Boneless Meal Deal",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			classic_wings_combo = {				-- The item ID
				name = "Classic Wings Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			crispy_tender_combo = {				-- The item ID
				name = "Crispy Tender Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			crispy_tenders = {				-- The item ID
				name = "Crispy Tenders",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			group_pack = {				-- The item ID
				name = "Group Pack",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			hundred_wings = {				-- The item ID
				name = "Hundred Wings",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			meal_for_two = {				-- The item ID
				name = "Meal For Two",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			party_pack = {				-- The item ID
				name = "Party Pack",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			tender_pack = {				-- The item ID
				name = "Tender Pack",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			thigh_bites_combo = {				-- The item ID
				name = "Thigh Bites Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			thirty_crispy_tenders = {				-- The item ID
				name = "Thirty Crispy Tenders",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			triple_meal_deal = {				-- The item ID
				name = "Triple Meal Deal",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			wing_combo = {				-- The item ID
				name = "Wing Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},

			chicken_and_waffles = {				-- The item ID
				name = "Chicken & Waffles",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chicken_caesar_salad = {				-- The item ID
				name = "Chicken Caesar Salad",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			garlic_parm_wings = {				-- The item ID
				name = "Garlic Parm Wings",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			hot_chicken_wrap = {				-- The item ID
				name = "Hot Chicken Wrap",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			korean_bbq_wings = {				-- The item ID
				name = "Korean BBQ Wings",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},

			cheese_sauce = {				-- The item ID
				name = "Cheese Sauce",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			chocolate_chunk_brownie = {				-- The item ID
				name = "Chocolate Chunk Brownie",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			fresh_baked_rolls = {				-- The item ID
				name = "Fresh Baked Rolls",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			side_of_flavor = {				-- The item ID
				name = "Side Of Flavor",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			veggie_sticks = {				-- The item ID
				name = "Veggie Sticks",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			chickenwings_dips = {				-- The item ID
				name = "chickenwings Dips",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},

			light_cola = {				-- The item ID
				name = "Light Cola",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			slim_cola = {				-- The item ID
				name = "Slim Cola",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			spicy_cherry_cola = {				-- The item ID
				name = "Spicy Cherry Cola",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			w_ice_cola = {				-- The item ID
				name = "Ice Cola",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			citrus_burst_soda = {				-- The item ID
				name = "Citrus Burst Soda",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			berry_sparkle_soda = {				-- The item ID
				name = "Berry Sparkle Soda",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			medium_citrus_spark = {				-- The item ID
				name = "Medium Citrus Spark",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			apple_fizz = {				-- The item ID
				name = "Apple Sparkle",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			citrus_spark = {				-- The item ID
				name = "Citrus Spark",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			
		},
		pagination = {						-- Create pages to your market items (max 10 pages)
			[0] = {name = "Pack", icon = 'fa-link'},
			[1] = {name = "Combo", icon = 'fa-link'},
			[2] = {name = "Fast Food", icon = 'fa-link'},
			[3] = {name = "Extra", icon = 'fa-link'},
			[4] = {name = "Drinks", icon = 'fa-link'},
		}
	}
}