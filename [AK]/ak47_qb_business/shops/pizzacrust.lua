Config.Shop['pizzacrust'] = { -- job name
	blip = {enable = true, name = 'Pizza Crust', sprite = 267, color = 38, size = 0.6, radius = 0.0, radius_color = 4},
	boss_action = vector3(555.649, 108.205, 96.559),
	management = vector3(542.375, 115.543, 96.559),
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
		menu = vector3(547.333, 117.581, 96.559),
		data = {
			extra_vagan_pizza = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					--{item = 'water', quantity = 1, willremove = false}, 
					--{item = 'bread', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			meat_pizza = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			philly_cheese_steak = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			pacific_veggie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			honolulu_hawaiian = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			pizza_deluxe = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			cali_chicken_bacon = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			buffalo_chicken = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			ultimate_pepperoni = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			memphis_bbq_chicken = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			wisconsin_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			spinach_feta = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_habanero = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mediterranean_veggie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			philly_cheese_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_bacon_ranch = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			italian_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			p_chicken_alfredo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			italian_sausage_marinara = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_carbonara = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			pasta_primavera = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(549.366, 117.843, 96.559, 340.637),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(545.022, 119.208, 96.559, 345.31),  delay = 15, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			
			classic_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(543.635, 119.620, 96.559, 344.354),  delay = 10, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			spicy_cherry_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(543.635, 119.620, 96.559, 344.354),  delay = 10, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			citrus_burst_soda = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(543.635, 119.620, 96.559, 344.354),  delay = 10, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			d_fruit_punch = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(543.635, 119.620, 96.559, 344.354),  delay = 10, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			citrus_spark = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(543.635, 119.620, 96.559, 344.354),  delay = 10, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			
		}
	},
	storage = {
		pos = vector4(546.595, 119.129, 96.559, 0.0), 		-- x, y, z, heading
		prop = nil,
		items = {
            water = {
                name = 'Water',                        	-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
		}
	},
	sell_coords = {											-- The coordinates where customes will buy things on this store (coordinates composed of x, y, z)
		vector3(545.575, 112.512, 96.559),
		vector3(543.770, 113.067, 96.559),
		vector3(541.844, 113.858, 96.559),
	},
	data = {
		market_items = {					-- Here you configure the items definitions
			extra_vagan_pizza = {				-- The item ID
				name = "Extra Vagan Pizza",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			meat_pizza = {				-- The item ID
				name = "Meat Pizza",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			philly_cheese_steak = {				-- The item ID
				name = "Philly Cheese Steak",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			pacific_veggie = {				-- The item ID
				name = "Pacific Veggie",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			honolulu_hawaiian = {				-- The item ID
				name = "Honolulu Hawaiian",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			pizza_deluxe = {				-- The item ID
				name = "Pizza Deluxe",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			cali_chicken_bacon = {				-- The item ID
				name = "Cali Chicken Bacon",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			buffalo_chicken = {				-- The item ID
				name = "Buffalo Chicken",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			ultimate_pepperoni = {				-- The item ID
				name = "Ultimate Pepperoni",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			memphis_bbq_chicken = {				-- The item ID
				name = "Memphis BBQ Chicken",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			wisconsin_cheese = {				-- The item ID
				name = "Wisconsin Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			spinach_feta = {				-- The item ID
				name = "Spinach & Feta",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},

			chicken_habanero = {				-- The item ID
				name = "Chicken Habanero",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			mediterranean_veggie = {				-- The item ID
				name = "Mediterranean Veggie",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			philly_cheese_sandwich = {				-- The item ID
				name = "Philly Cheese Sandwich",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			chicken_bacon_ranch = {				-- The item ID
				name = "Chicken Bacon Ranch",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			italian_sandwich = {				-- The item ID
				name = "Italian Sandwich",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},

			p_chicken_alfredo = {				-- The item ID
				name = "Chicken Alfredo",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			italian_sausage_marinara = {				-- The item ID
				name = "Italian Sausage Marinara",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chicken_carbonara = {				-- The item ID
				name = "Chicken Carbonara",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			pasta_primavera = {				-- The item ID
				name = "Pasta Primavera",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},

			classic_cola = {				-- The item ID
				name = "Classic Cola",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			spicy_cherry_cola = {				-- The item ID
				name = "Spicy Cherry Cola",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			citrus_burst_soda = {				-- The item ID
				name = "Citrus Burst Soda",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			d_fruit_punch = {				-- The item ID
				name = "Fruit Punch",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			citrus_spark = {				-- The item ID
				name = "Citrus Spark",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			
		},
		pagination = {						-- Create pages to your market items (max 10 pages)
			[0] = {name = "Pizza", icon = 'fa-link'},
			[1] = {name = "Sandwich", icon = 'fa-link'},
			[2] = {name = "Pasta", icon = 'fa-link'},
			[3] = {name = "Drinks", icon = 'fa-link'},
		}
	}
}