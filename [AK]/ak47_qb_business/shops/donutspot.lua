Config.Shop['donutspot'] = { -- job name
	blip = {enable = true, name = 'Donut Spot', sprite = 538, color = 17, size = 0.6, radius = 0.0, radius_color = 4},
	boss_action = vector3(-580.485, -884.989, 25.953),
	management = vector3(-588.396, -885.725, 25.953),
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
		menu = vector3(-584.215, -893.610, 25.953),
		data = {
			bagel_cream_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					--{item = 'water', quantity = 1, willremove = false}, 
					--{item = 'bread', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bacon_egg_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			golden_flake_croissant = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			morning_rings = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			hash_browns = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			morning_muffins = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mini_donut_bites = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			crispy_bacon_bites = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			sourdough_breakfast_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bagel_bites_duo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			morning_wrap = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-589.369, -893.309, 25.953, 182.153),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-585.517, -893.123, 25.953, 176.56),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			
			cold_brew = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			classic_dark_americano = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			classic_morning_brew = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			silky_smooth_latte = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			velvet_layered_macchiato = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			fruit_sparkler = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			amber_brew_tea = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			iced_cappuccino = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			iced_macchiatto = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			iced_matcha_latte = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			iced_classic_latte = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			classic_cream_latte = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-581.031, -891.079, 25.953, 271.934),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
		}
	},
	storage = {
		pos = vector4(-586.885, -893.733, 25.953, 0.0), 		-- x, y, z, heading
		prop = nil,
		items = {
            packaged_coffee = {
                name = 'Packaged Coffee',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            packaged_tea = {
                name = 'Packaged Tea',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
		}
	},
	sell_coords = {											-- The coordinates where customes will buy things on this store (coordinates composed of x, y, z)
		vector3(-588.577, -883.499, 25.953),
		vector3(-586.341, -885.648, 25.953),
		vector3(-586.317, -887.442, 25.953),
		vector3(-580.783, -882.945, 25.953),
	},
	data = {
		market_items = {					-- Here you configure the items definitions
			cold_brew = {				-- The item ID
				name = "Cold Brew",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			classic_dark_americano = {				-- The item ID
				name = "Classic Dark Americano",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			classic_morning_brew = {				-- The item ID
				name = "Classic Morning Brew",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			silky_smooth_latte = {				-- The item ID
				name = "Silky Smooth Latte",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			velvet_layered_macchiato = {				-- The item ID
				name = "Velvet Layered Macchiato",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			fruit_sparkler = {				-- The item ID
				name = "Fruit Sparkler",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			amber_brew_tea = {				-- The item ID
				name = "Amber Brew Tea",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			iced_cappuccino = {				-- The item ID
				name = "Iced Cappuccino",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			iced_macchiatto = {				-- The item ID
				name = "Iced Macchiatto",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			iced_matcha_latte = {				-- The item ID
				name = "Iced Matcha Latte",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			iced_classic_latte = {				-- The item ID
				name = "Iced Classic Latte",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			packaged_coffee = {				-- The item ID
				name = "Packaged Coffee",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			packaged_tea = {				-- The item ID
				name = "Packaged Tea",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			classic_cream_latte = {				-- The item ID
				name = "Classic Cream Latte",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			
			bagel_cream_cheese = {				-- The item ID
				name = "Bagel Cream Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bacon_egg_cheese = {				-- The item ID
				name = "Bacon Egg Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			golden_flake_croissant = {				-- The item ID
				name = "Golden Flake Croissant",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			morning_rings = {				-- The item ID
				name = "Morning Rings",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			hash_browns = {				-- The item ID
				name = "Hash Browns",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			morning_muffins = {				-- The item ID
				name = "Morning Muffins",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			mini_donut_bites = {				-- The item ID
				name = "Mini Donut Bites",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			crispy_bacon_bites = {				-- The item ID
				name = "Crispy Bacon Bites",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			sourdough_breakfast_sandwich = {				-- The item ID
				name = "Sourdough Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bagel_bites_duo = {				-- The item ID
				name = "Bagel Bites Duo",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			morning_wrap = {				-- The item ID
				name = "Morning Wrap",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			
		},
		pagination = {						-- Create pages to your market items (max 10 pages)
			[0] = {name = "Foods", icon = 'fa-link'},
			[1] = {name = "Drinks", icon = 'fa-link'},
		}
	}
}