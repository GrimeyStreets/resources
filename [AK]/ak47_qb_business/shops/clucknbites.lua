Config.Shop['clucknbites'] = { -- job name
	blip = {enable = true, name = 'Cluck-N-Bites', sprite = 537, color = 1, size = 0.6, radius = 0.0, radius_color = 4},
	boss_action = vector3(208.138, -174.219, 54.612),
	management = vector3(211.174, -179.183, 54.608),
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
		menu = vector3(214.185, -176.817, 54.612),
		data = {
			brown_scramble_bowl = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					--{item = 'water', quantity = 1, willremove = false}, 
					--{item = 'bread', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			brown_scramble_burrito = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			buttered_biscuit = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mini_chicken_bites = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_biscuit = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_egg_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			egg_cheese_muffin = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			grilled_egg_white_delight = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			english_muffin = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			fruit_cup = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			greek_yogurt_parfait = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			hash_browns = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			sausage_egg_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			crispy_chicken_bites = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			crispy_chicken_tenders = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_club_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chilled_chicken_wrap = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			deluxe_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			grilled_chicken_bites = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_noodle_soup = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mac_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			crispy_waffle_fries = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(217.083, -178.150, 54.617, 338.909),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			
			cobb_salad = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			fresh_harvest_salad = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			zesty_southwest_salad = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			crispy_kale_salad = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			side_salad = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chocolate_chunk_cookie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chocolate_fudge_brownie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(218.940, -178.486, 54.623, 342.691),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			

			brewed_iced_tea = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			citrus_refresh_lemonade = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			coffee = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			sweet_tea = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chocolate_milkshake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			cookies_cream_milkshake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			frosted_coffee = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			frozen_citrus_smoothie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			frozen_dream_cone = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			vanilla_dream_cup = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			peach_milkshake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			strawberry_milkshake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			vanilla_milkshake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(216.081, -177.964, 54.616, 342.705),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			
		}
	},
	storage = {
		pos = vector4(219.931, -178.983, 54.622, 0.0), 		-- x, y, z, heading
		prop = nil,
		items = {
            apple_juice = {
                name = 'Apple Juice',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            chocolate_milk = {
                name = 'Chocolate Milk',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            fresh_citrus_delight = {
                name = 'Fresh Citrus Delight',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            apple_sauce = {
                name = 'Apple Sauce',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            waffle_potato_chips = {
                name = 'Waffle Potato Chips',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            
		}
	},
	sell_coords = {											-- The coordinates where customes will buy things on this store (coordinates composed of x, y, z)
		vector3(216.149, -183.067, 54.603),
		vector3(214.434, -182.412, 54.603),
		vector3(212.690, -181.779, 54.596),
		vector3(210.771, -181.081, 54.602),
	},
	data = {
		market_items = {					-- Here you configure the items definitions
			brown_scramble_bowl = {				-- The item ID
				name = "Brown Scramble Bowl",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			brown_scramble_burrito = {				-- The item ID
				name = "Brown Scramble Burrito",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			buttered_biscuit = {				-- The item ID
				name = "Buttered Biscuit",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			mini_chicken_bites = {				-- The item ID
				name = "Mini Chicken Bites",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			chicken_biscuit = {				-- The item ID
				name = "Chicken Biscuit",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			chicken_egg_cheese = {				-- The item ID
				name = "Chicken Egg Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			egg_cheese_muffin = {				-- The item ID
				name = "Egg Cheese Muffin",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			grilled_egg_white_delight = {				-- The item ID
				name = "Grilled Egg White Delight",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			english_muffin = {				-- The item ID
				name = "English Muffin",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			fruit_cup = {				-- The item ID
				name = "Fruit Cup",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			greek_yogurt_parfait = {				-- The item ID
				name = "Greek Yogurt Parfait",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			hash_browns = {				-- The item ID
				name = "Hash Browns",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			sausage_egg_cheese = {				-- The item ID
				name = "Sausage Egg Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},

			apple_juice = {				-- The item ID
				name = "Apple Juice",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = false
			},
			brewed_iced_tea = {				-- The item ID
				name = "Brewed Iced Tea",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			citrus_refresh_lemonade = {				-- The item ID
				name = "Citrus Refresh Lemonade",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			chocolate_milk = {				-- The item ID
				name = "Chocolate Milk",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = false
			},
			coffee = {				-- The item ID
				name = "Coffee",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			fresh_citrus_delight = {				-- The item ID
				name = "Fresh Citrus Delight",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = false
			},
			sweet_tea = {				-- The item ID
				name = "Sweet Tea",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},

			crispy_chicken_bites = {				-- The item ID
				name = "Crispy Chicken Bites",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			crispy_chicken_tenders = {				-- The item ID
				name = "Crispy Chicken Tenders",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chicken_club_sandwich = {				-- The item ID
				name = "Chicken Club Sandwich",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chicken_sandwich = {				-- The item ID
				name = "Chicken Sandwich",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chilled_chicken_wrap = {				-- The item ID
				name = "Chilled Chicken Wrap",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			deluxe_sandwich = {				-- The item ID
				name = "Deluxe Sandwich",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			grilled_chicken_bites = {				-- The item ID
				name = "Grilled Chicken Bites",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},

			cobb_salad = {				-- The item ID
				name = "Cobb Salad",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			fresh_harvest_salad = {				-- The item ID
				name = "Fresh Harvest Salad",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			zesty_southwest_salad = {				-- The item ID
				name = "Zesty Southwest Salad",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},

			apple_sauce = {				-- The item ID
				name = "Apple Sauce",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = false
			},
			chicken_noodle_soup = {				-- The item ID
				name = "Chicken Noodle Soup",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			crispy_kale_salad = {				-- The item ID
				name = "Crispy Kale Salad",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			mac_cheese = {				-- The item ID
				name = "Mac Cheese",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			side_salad = {				-- The item ID
				name = "Side Salad",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},
			waffle_potato_chips = {				-- The item ID
				name = "Waffle Potato Chips",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = false
			},
			crispy_waffle_fries = {				-- The item ID
				name = "Crispy Waffle Fries",	-- The item display name
				page = 4,					-- Set on which page this item will appear
				process = true
			},

			chocolate_chunk_cookie = {				-- The item ID
				name = "Chocolate Chunk Cookie",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			chocolate_fudge_brownie = {				-- The item ID
				name = "Chocolate Fudge Brownie",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			chocolate_milkshake = {				-- The item ID
				name = "Chocolate Milkshake",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			cookies_cream_milkshake = {				-- The item ID
				name = "Cookies Cream Milkshake",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			frosted_coffee = {				-- The item ID
				name = "Frosted Coffee",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			frozen_citrus_smoothie = {				-- The item ID
				name = "Frozen Citrus Smoothie",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			frozen_dream_cone = {				-- The item ID
				name = "Frozen Dream Cone",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			vanilla_dream_cup = {				-- The item ID
				name = "Vanilla Dream Cup",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			peach_milkshake = {				-- The item ID
				name = "Peach Milkshake",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			strawberry_milkshake = {				-- The item ID
				name = "Strawberry Milkshake",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
			vanilla_milkshake = {				-- The item ID
				name = "Vanilla Milkshake",	-- The item display name
				page = 5,					-- Set on which page this item will appear
				process = true
			},
		},
		pagination = {						-- Create pages to your market items (max 10 pages)
			[0] = {name = "Breakfast", icon = 'fa-link'},
			[1] = {name = "Drinks", icon = 'fa-link'},
			[2] = {name = "Entrees", icon = 'fa-link'},
			[3] = {name = "Salad", icon = 'fa-link'},
			[4] = {name = "Sides", icon = 'fa-link'},
			[5] = {name = "Treats", icon = 'fa-link'},
		}
	}
}