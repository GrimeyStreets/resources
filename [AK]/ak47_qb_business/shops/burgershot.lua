Config.Shop['burgershot'] = { -- job name
	blip = {enable = false, name = 'Burgershot', sprite = 536, color = 28, size = 0.6, radius = 0.0, radius_color = 4},
	boss_action = vector3(-1196.71, -891.91, 14.0),
	management = vector3(-1194.04, -895.66, 14.0),
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
		menu =vector3(-1196.96, -900.15, 14.0),
		data = {
			double_bacon_cheeseburger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					--{item = 'water', quantity = 1, willremove = false}, 
					--{item = 'bread', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bacon_ham_sausage = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bacon_king = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			big_fish = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mini_chicken_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bs_hamburger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			buttermilk_biscuit = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			deluxe_chicken_royale = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			double_cheeseburger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			double_sausage_biscuit = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			double_sausage_croissant_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			ham_cheese_breakfast_croissant = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			classic_chicken_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bbq_onion_burger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			sausage_croissant_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			spicy_chicken_supreme_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bbq_double_burger = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			triple_cheeseburger_supreme = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},

			bs_mozzarella_sticks = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			cheese_stuffed_tater_tots = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			crispy_chicken_fingers = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chicken_nuggets = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			supreme_breakfast_burrito = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			french_toast_sticks = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			cheddar_jalapeno_poppers = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			small_classic_fries = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			small_hash_browns = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			small_onion_rings = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			soft_serve_cone = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			soft_serve_cup = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chocolate_fudge_cream_pie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			

			junior_cheeseburger_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'applesauce', quantity = 1, willremove = true}, 
					{item = 'apple_juice_pouch', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			croissant_breakfast_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'decaf_brewed_coffee', quantity = 1, willremove = true}, 
					{item = 'chicken_nuggets', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			family_bundle_classic = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'small_classic_fries', quantity = 2, willremove = true}, 
					{item = 'chocolate_fudge_cream_pie', quantity = 2, willremove = true},
					{item = 'classic_soda', quantity = 2, willremove = true},
				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			junior_hamburger_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'applesauce', quantity = 1, willremove = true}, 
					{item = 'apple_juice_pouch', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			deluxe_breakfast_croissant = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chicken_nuggets', quantity = 1, willremove = true}, 
					{item = 'bs_orange_juice', quantity = 1, willremove = true},
				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			junior_chicken_nuggets_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'chicken_nuggets', quantity = 1, willremove = true}, 
					{item = 'apple_juice_pouch', quantity = 1, willremove = true},
					{item = 'applesauce', quantity = 1, willremove = true},
				},	
				steps = {

				}
			},
			pancake_sausage_platter = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(-1198.79, -901.74, 14.0, 124.92),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(-1200.49, -899.19, 14.0, 122.13),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			


			sugar_free_root_beer = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bottle_light_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			classic_Root_beer = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			decaf_brewed_coffee = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			classic_soda = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			medium_light_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mellow_soda = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			medium_citrus_burst_soda = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			tropical_fruit_blast = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bs_iced_tea = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			medium_citrus_spark = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			medium_citrus_spark_zero = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			bs_yello_mello = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chocolate_cookie_crumble_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			chocolate_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			cookie_crumble_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			refreshing_pink_lemonade = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			plain_iced_coffee = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			strawberry_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			vanilla_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					
				},
				steps = {
					{pos = vector4(-1198.58, -895.46, 14.0, 123.95),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			
		}
	},
	storage = {
		pos = vector4(-1203.1, -895.42, 14.0, 0.0), 		-- x, y, z, heading
		prop = nil,
		items = {
            applesauce = {
                name = 'Applesauce',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            bs_orange_juice = {
                name = 'Orange Juice',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            apple_juice_pouch = {
                name = 'Orange Juice',                        		-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
		}
	},
	sell_coords = {											-- The coordinates where customes will buy things on this store (coordinates composed of x, y, z)
		vector3(-1195.33, -890.82, 14.0),
		vector3(-1194.07, -892.84, 14.0),
		vector3(-1192.79, -894.75, 14.0)
	},
	data = {
		market_items = {					-- Here you configure the items definitions
			double_bacon_cheeseburger = {				-- The item ID
				name = "Double Bacon Cheeseburger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bacon_ham_sausage = {				-- The item ID
				name = "Fully Loaded Bacon Ham Sausage",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			big_fish = {				-- The item ID
				name = "Big Fish",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			mini_chicken_sandwich = {				-- The item ID
				name = "Mini Chicken Sandwich.",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bs_hamburger = {				-- The item ID
				name = "Hamburger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			buttermilk_biscuit = {				-- The item ID
				name = "Fully Loaded Buttermilk",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			deluxe_chicken_royale = {				-- The item ID
				name = "Deluxe Chicken Royale",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			double_cheeseburger = {				-- The item ID
				name = "Double Cheeseburger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			double_sausage_biscuit = {				-- The item ID
				name = "Double Sausage Croissant Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			double_sausage_croissant_sandwich = {				-- The item ID
				name = "Double Sausage Croissant Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			ham_cheese_breakfast_croissant = {				-- The item ID
				name = "Ham & Cheese Breakfast Croissant",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			classic_chicken_sandwich = {				-- The item ID
				name = "Classic Chicken Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bbq_onion_burger = {				-- The item ID
				name = "BBQ Onion Burger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			sausage_croissant_sandwich = {				-- The item ID
				name = "Sausage Croissant Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			spicy_chicken_supreme_sandwich = {				-- The item ID
				name = "Spicy Chicken Supreme Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			bbq_double_burger = {				-- The item ID
				name = "BBQ Double Burger",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			triple_cheeseburger_supreme = {				-- The item ID
				name = "Triple Cheeseburger Supreme",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},

			junior_cheeseburger_combo = {				-- The item ID
				name = "Junior Cheeseburger Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			croissant_breakfast_combo = {				-- The item ID
				name = "Croissant Breakfast Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			family_bundle_classic = {				-- The item ID
				name = "Family Bundle Classic",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			junior_hamburger_combo = {				-- The item ID
				name = "Junior Hamburger Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			deluxe_breakfast_croissant = {				-- The item ID
				name = "Deluxe Breakfast Croissant",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			junior_chicken_nuggets_combo = {				-- The item ID
				name = "Junior Chicken Nuggets Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			pancake_sausage_platter = {				-- The item ID
				name = "Pancake & Sausage Platter",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},

			bs_mozzarella_sticks = {				-- The item ID
				name = "Mozzarella Sticks",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			cheese_stuffed_tater_tots = {				-- The item ID
				name = "Cheese Stuffed Tater Tots",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			crispy_chicken_fingers = {				-- The item ID
				name = "Crispy Chicken Fingers",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chicken_nuggets = {				-- The item ID
				name = "Chicken Nuggets",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			supreme_breakfast_burrito = {				-- The item ID
				name = "Supreme Breakfast Burrito",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			french_toast_sticks = {				-- The item ID
				name = "3 French Toast Sticks",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			cheddar_jalapeno_poppers = {				-- The item ID
				name = "Cheddar Jalapeno Poppers",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			small_classic_fries = {				-- The item ID
				name = "Small Classic Fries",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			small_hash_browns = {				-- The item ID
				name = "Small Hash Browns",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			small_onion_rings = {				-- The item ID
				name = "Small Onion Rings",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			soft_serve_cone = {				-- The item ID
				name = "Soft Serve Cone",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			soft_serve_cup = {				-- The item ID
				name = "Soft Serve Cup",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			chocolate_fudge_cream_pie = {				-- The item ID
				name = "Chocolate Fudge Cream Pie",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			apple_juice_pouch = {				-- The item ID
				name = "Orange Juice",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = false
			},
			bs_orange_juice = {				-- The item ID
				name = "Orange Juice",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = false
			},
			

			sugar_free_root_beer = {				-- The item ID
				name = "Sugar Free Root Beer",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bottle_light_cola = {				-- The item ID
				name = "20oz Bottle Light Cola",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			classic_Root_beer = {				-- The item ID
				name = "Classic Root Beer",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			decaf_brewed_coffee = {				-- The item ID
				name = "Decaf Brewed Coffee",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			classic_soda = {				-- The item ID
				name = "Classic Soda",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			medium_light_cola = {				-- The item ID
				name = "Medium Light Cola",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			mellow_soda = {				-- The item ID
				name = "Mellow Soda",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			medium_citrus_burst_soda = {				-- The item ID
				name = "Medium Citrus Burst Soda",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			tropical_fruit_blast = {				-- The item ID
				name = "Tropical Fruit Blast",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_iced_tea = {				-- The item ID
				name = "Medium Sweetened Iced Tea",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			medium_citrus_spark = {				-- The item ID
				name = "Medium Citrus Spark",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			medium_citrus_spark_zero = {				-- The item ID
				name = "Medium Citrus Spark Zero",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			bs_yello_mello = {				-- The item ID
				name = "Medium Mello Yello",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			chocolate_cookie_crumble_shake = {				-- The item ID
				name = "Chocolate Cookie Crumble Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			chocolate_shake = {				-- The item ID
				name = "Chocolate Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			cookie_crumble_shake = {				-- The item ID
				name = "Cookie Crumble Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			refreshing_pink_lemonade = {				-- The item ID
				name = "Refreshing Pink Lemonade",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			plain_iced_coffee = {				-- The item ID
				name = "Plain Iced Coffee Medium",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			strawberry_shake = {				-- The item ID
				name = "Strawberry Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			vanilla_shake = {				-- The item ID
				name = "Vanilla Shake",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
		},
		pagination = {						-- Create pages to your market items (max 10 pages)
			[0] = {name = "Burger", icon = 'fa-link'},
			[1] = {name = "Combo", icon = 'fa-link'},
			[2] = {name = "Others", icon = 'fa-link'},
			[3] = {name = "Drinks", icon = 'fa-link'},
		}
	}
}