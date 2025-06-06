return {

    ['prison_tablet'] = {
        label = 'Prison Tablet',
        weight = 100,
        stack = true,
        close = true,
        consume = 0,
    },

            


    ['cigarrete'] = {
        label = 'Cigarrete',
        weight = 100,
        stack = true,
        close = true,
        consume = 0,
    },

            


    ['wire_cutter'] = {
        label = 'cutter',
        weight = 100,
        stack = true,
        close = true,
        consume = 0,
    },

            

    ['donut'] = {
        label = 'Donut',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = `prop_amb_donut`, pos = vec3(0.020000, 0.020000, -0.020000), rot = vec3(0.000000, 0.000000, 0.000000) },
            usetime = 2500,
            notification = 'You eat Donut',
        },
    },
            

    ['chips'] = {
        label = 'Chips',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = `prop_food_cb_chips`, pos = vec3(0.020000, 0.020000, -0.020000), rot = vec3(0.000000, 0.000000, 0.000000) },
            usetime = 2500,
            notification = 'You eat Chips',
        },
    },
            

    ['pizza_ham'] = {
        label = 'Pizza Ham',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = `prop_food_cb_chips`, pos = vec3(0.020000, 0.020000, -0.020000), rot = vec3(0.000000, 0.000000, 0.000000) },
            usetime = 2500,
            notification = 'You eat Fries',
        },
    },
            

    ['fries'] = {
        label = 'Fries',
        weight = 350,
        client = {
            status = { hunger = 200000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = `prop_food_cb_chips`, pos = vec3(0.020000, 0.020000, -0.020000), rot = vec3(0.000000, 0.000000, 0.000000) },
            usetime = 2500,
            notification = 'You eat Fries',
        },
    },
            

    ['coffee'] = {
        label = 'Coffee',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.010000, 0.010000, 0.060000), rot = vec3(5.000000, 5.000000, -180.500000) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee',
        },
    },
            

    ['ecola'] = {
        label = 'Ecola',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.010000, 0.010000, 0.060000), rot = vec3(5.000000, 5.000000, -180.500000) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee',
        },
    },
            

    ['ecola_light'] = {
        label = 'Ecola light',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.010000, 0.010000, 0.060000), rot = vec3(5.000000, 5.000000, -180.500000) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee',
        },
    },
            

    ['sludgie'] = {
        label = 'Sludgie',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.010000, 0.010000, 0.060000), rot = vec3(5.000000, 5.000000, -180.500000) },
            usetime = 2500,
            notification = 'You quenched your thirst with a Coffee',
        },
    },
            

	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	["phone"] = {
		label = "Phone",
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			export = "lb-phone.UsePhoneItem",
			remove = function()
				TriggerEvent("lb-phone:itemRemoved")
			end,
			add = function()
				TriggerEvent("lb-phone:itemAdded")
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	--Wasabi--
	['backpack'] = {
		label = 'Backpack',
		weight = 220,
		stack = false,
		consume = 0,
		client = {
			export = 'wasabi_backpack.openBackpack'
		}
	},
	
	["diamond"] = {
		label = "Diamond",
		weight = 1000,
		stack = true,
		close = true,
		description = "A diamond seems like the jackpot to me!",
		client = {
			image = "diamond.png",
		}
	},
	["bellend_muzzle_brake"] = {
		label = "Bellend Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "bellend_muzzle_brake.png",
		}
	},
	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},
	["syphoningkit"] = {
		label = "Syphoning Kit",
		weight = 5000,
		stack = false,
		close = false,
		description = "A kit made to siphon gasoline from vehicles.",
		client = {
			image = "syphoningkit.png",
		}
	},
	["sessantacamo_attachment"] = {
		label = "Sessanta Nove Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A sessanta nove camo for a weapon",
		client = {
			image = "sessantacamo_attachment.png",
		}
	},
	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},
	["ifaks"] = {
		label = "ifaks",
		weight = 200,
		stack = true,
		close = true,
		description = "ifaks for healing and a complete stress remover.",
		client = {
			image = "ifaks.png",
		}
	},
	["veh_armor"] = {
		label = "Armor",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle armor",
		client = {
			image = "veh_armor.png",
		}
	},
	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},
	["luxuryfinish_attachment"] = {
		label = "Luxury Finish",
		weight = 1000,
		stack = true,
		close = true,
		description = "A luxury finish for a weapon",
		client = {
			image = "luxuryfinish_attachment.png",
		}
	},
	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},
	["geocamo_attachment"] = {
		label = "Geometric Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A geometric camo for a weapon",
		client = {
			image = "geocamo_attachment.png",
		}
	},
	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},
	["repairkit"] = {
		label = "Repairkit",
		weight = 2500,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "repairkit.png",
		}
	},
	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},
	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},
	["goldbar"] = {
		label = "Gold Bar",
		weight = 7000,
		stack = true,
		close = true,
		description = "Looks pretty expensive to me",
		client = {
			image = "goldbar.png",
		}
	},
	["brushcamo_attachment"] = {
		label = "Brushstroke Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A brushstroke camo for a weapon",
		client = {
			image = "brushcamo_attachment.png",
		}
	},
	["thermalscope_attachment"] = {
		label = "Thermal Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A thermal scope for a weapon",
		client = {
			image = "thermalscope_attachment.png",
		}
	},
	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},
	["veh_interior"] = {
		label = "Interior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle interior",
		client = {
			image = "veh_interior.png",
		}
	},
	["grip_attachment"] = {
		label = "Grip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A grip for a weapon",
		client = {
			image = "grip_attachment.png",
		}
	},
	["newscam"] = {
		label = "News Camera",
		weight = 100,
		stack = false,
		close = true,
		description = "A camera for the news",
		client = {
			image = "newscam.png",
		}
	},
	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},
	["coffee"] = {
		label = "Coffee",
		weight = 200,
		stack = true,
		close = true,
		description = "Pump 4 Caffeine",
		client = {
			image = "coffee.png",
		}
	},
	["smallscope_attachment"] = {
		label = "Small Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A small scope for a weapon",
		client = {
			image = "smallscope_attachment.png",
		}
	},
	["nvscope_attachment"] = {
		label = "Night Vision Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A night vision scope for a weapon",
		client = {
			image = "nvscope_attachment.png",
		}
	},
	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},
	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},
	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},
	["tactical_muzzle_brake"] = {
		label = "Tactical Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brakee for a weapon",
		client = {
			image = "tactical_muzzle_brake.png",
		}
	},
	["iphone"] = {
		label = "iPhone",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "iphone.png",
		}
	},
	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},
	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},
	["cryptostick"] = {
		label = "Crypto Stick",
		weight = 200,
		stack = false,
		close = true,
		description = "Why would someone ever buy money that doesn't exist.. How many would it contain..?",
		client = {
			image = "cryptostick.png",
		}
	},
	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},
	["weed_ogkush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},
	["comp_attachment"] = {
		label = "Compensator",
		weight = 1000,
		stack = true,
		close = true,
		description = "A compensator for a weapon",
		client = {
			image = "comp_attachment.png",
		}
	},
	["bank_card"] = {
		label = "Bank Card",
		weight = 0,
		stack = false,
		close = true,
		description = "Used to access ATM",
		client = {
			image = "bank_card.png",
		}
	},
	["tribike3"] = {
		label = "Blue TriBike",
		weight = 500,
		stack = false,
		close = true,
		description = "A blue Tribike",
		client = {
			image = "tribike3.png",
		}
	},
	["woodcamo_attachment"] = {
		label = "Woodland Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A woodland camo for a weapon",
		client = {
			image = "woodcamo_attachment.png",
		}
	},
	["largescope_attachment"] = {
		label = "Large Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A large scope for a weapon",
		client = {
			image = "largescope_attachment.png",
		}
	},
	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth",
		client = {
			image = "meth_baggy.png",
		}
	},
	["sandwich"] = {
		label = "Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice bread for your stomach",
		client = {
			image = "sandwich.png",
		}
	},
	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},
	["jerrycan"] = {
		label = "Jerry Can",
		weight = 15000,
		stack = false,
		close = false,
		description = "A Jerry Can made to hold gasoline.",
		client = {
			image = "jerrycan.png",
		}
	},
	["skullcamo_attachment"] = {
		label = "Skull Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A skull camo for a weapon",
		client = {
			image = "skullcamo_attachment.png",
		}
	},
	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},
	["weed_ogkush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},
	["barrel_attachment"] = {
		label = "Barrel",
		weight = 1000,
		stack = true,
		close = true,
		description = "A barrel for a weapon",
		client = {
			image = "barrel_attachment.png",
		}
	},
	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		description = "An oxygen tube and a rebreather",
		client = {
			image = "diving_tube.png",
		}
	},
	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},
	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},
	["bmx"] = {
		label = "BMX Bike",
		weight = 500,
		stack = false,
		close = true,
		description = "A BMX bike",
		client = {
			image = "bmx.png",
		}
	},
	["clip_attachment"] = {
		label = "Clip",
		weight = 1000,
		stack = true,
		close = true,
		description = "A clip for a weapon",
		client = {
			image = "clip_attachment.png",
		}
	},
	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},
	["tosti"] = {
		label = "Grilled Cheese Sandwich",
		weight = 200,
		stack = true,
		close = true,
		description = "Nice to eat",
		client = {
			image = "tosti.png",
		}
	},
	["newsmic"] = {
		label = "News Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A microphone for the news",
		client = {
			image = "newsmic.png",
		}
	},
	["veh_exterior"] = {
		label = "Exterior",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle exterior",
		client = {
			image = "veh_exterior.png",
		}
	},
	["weed_purplehaze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},
	["drum_attachment"] = {
		label = "Drum",
		weight = 1000,
		stack = true,
		close = true,
		description = "A drum for a weapon",
		client = {
			image = "drum_attachment.png",
		}
	},
	["veh_brakes"] = {
		label = "Brakes",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle brakes",
		client = {
			image = "veh_brakes.png",
		}
	},
	["weed_purplehaze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},
	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},
	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},
	["twerks_candy"] = {
		label = "Twerks",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "twerks_candy.png",
		}
	},
	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},
	["id_card"] = {
		label = "ID Card",
		weight = 0,
		stack = false,
		close = false,
		description = "A card containing all your information to identify yourself",
		client = {
			image = "id_card.png",
		}
	},
	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},
	["patriotcamo_attachment"] = {
		label = "Patriot Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A patriot camo for a weapon",
		client = {
			image = "patriotcamo_attachment.png",
		}
	},
	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},
	["empty_evidence_bag"] = {
		label = "Empty Evidence Bag",
		weight = 0,
		stack = true,
		close = false,
		description = "Used a lot to keep DNA from blood, bullet shells and more",
		client = {
			image = "evidence.png",
		}
	},
	["nitrous"] = {
		label = "Nitrous",
		weight = 1000,
		stack = true,
		close = true,
		description = "Speed up, gas pedal! :D",
		client = {
			image = "nitrous.png",
		}
	},
	["medscope_attachment"] = {
		label = "Medium Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A medium scope for a weapon",
		client = {
			image = "medscope_attachment.png",
		}
	},
	["heavyarmor"] = {
		label = "Heavy Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},
	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},
	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},
	["advancedrepairkit"] = {
		label = "Advanced Repairkit",
		weight = 4000,
		stack = true,
		close = true,
		description = "A nice toolbox with stuff to repair your vehicle",
		client = {
			image = "advancedkit.png",
		}
	},
	["drill"] = {
		label = "Drill",
		weight = 20000,
		stack = true,
		close = false,
		description = "The real deal...",
		client = {
			image = "drill.png",
		}
	},
	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},
	["flat_muzzle_brake"] = {
		label = "Flat Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "flat_muzzle_brake.png",
		}
	},
	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
		client = {
			image = "grapejuice.png",
		}
	},
	["flashlight_attachment"] = {
		label = "Flashlight",
		weight = 1000,
		stack = true,
		close = true,
		description = "A flashlight for a weapon",
		client = {
			image = "flashlight_attachment.png",
		}
	},
	["markedbills"] = {
		label = "Marked Money",
		weight = 1000,
		stack = false,
		close = true,
		description = "Money?",
		client = {
			image = "markedbills.png",
		}
	},
	["cruiser"] = {
		label = "Cruiser Bike",
		weight = 500,
		stack = false,
		close = true,
		description = "A Cruiser bike",
		client = {
			image = "cruiser.png",
		}
	},
	["veh_plates"] = {
		label = "Plates",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle plates",
		client = {
			image = "veh_plates.png",
		}
	},
	["tenkgoldchain"] = {
		label = "10k Gold Chain",
		weight = 2000,
		stack = true,
		close = true,
		description = "10 carat golden chain",
		client = {
			image = "10kgoldchain.png",
		}
	},
	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},
	["driver_license"] = {
		label = "Drivers License",
		weight = 0,
		stack = false,
		close = false,
		description = "Permit to show you can drive a vehicle",
		client = {
			image = "driver_license.png",
		}
	},
	["samsungphone"] = {
		label = "Samsung S10",
		weight = 1000,
		stack = true,
		close = true,
		description = "Very expensive phone",
		client = {
			image = "samsungphone.png",
		}
	},
	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},
	["tribike"] = {
		label = "Yellow TriBike",
		weight = 500,
		stack = false,
		close = true,
		description = "A yellow Tribike",
		client = {
			image = "tribike.png",
		}
	},
	["leopardcamo_attachment"] = {
		label = "Leopard Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A leopard camo for a weapon",
		client = {
			image = "leopardcamo_attachment.png",
		}
	},
	["veh_wheels"] = {
		label = "Wheels",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle wheels",
		client = {
			image = "veh_wheels.png",
		}
	},
	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},
	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},
	["filled_evidence_bag"] = {
		label = "Evidence Bag",
		weight = 200,
		stack = false,
		close = false,
		description = "A filled evidence bag to see who committed the crime >:(",
		client = {
			image = "evidence.png",
		}
	},
	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},
	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},
	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},
	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},
	["fixter"] = {
		label = "Fixter Bike",
		weight = 500,
		stack = false,
		close = true,
		description = "A Fixter bike",
		client = {
			image = "fixter.png",
		}
	},
	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},
	["veh_toolbox"] = {
		label = "Toolbox",
		weight = 1000,
		stack = true,
		close = true,
		description = "Check vehicle status",
		client = {
			image = "veh_toolbox.png",
		}
	},
	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},
	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},
	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},
	["tribike2"] = {
		label = "Red TriBike",
		weight = 500,
		stack = false,
		close = true,
		description = "A red Tribike",
		client = {
			image = "tribike2.png",
		}
	},
	["beer"] = {
		label = "Beer",
		weight = 500,
		stack = true,
		close = true,
		description = "Nothing like a good cold beer!",
		client = {
			image = "beer.png",
		}
	},
	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},
	["perseuscamo_attachment"] = {
		label = "Perseus Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A perseus camo for a weapon",
		client = {
			image = "perseuscamo_attachment.png",
		}
	},
	["digicamo_attachment"] = {
		label = "Digital Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A digital camo for a weapon",
		client = {
			image = "digicamo_attachment.png",
		}
	},
	["weed_whitewidow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},
	["veh_xenons"] = {
		label = "Xenons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle xenons",
		client = {
			image = "veh_xenons.png",
		}
	},
	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},
	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},
	["rolex"] = {
		label = "Golden Watch",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden watch seems like the jackpot to me!",
		client = {
			image = "rolex.png",
		}
	},
	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},
	["veh_turbo"] = {
		label = "Turbo",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle turbo",
		client = {
			image = "veh_turbo.png",
		}
	},
	["split_end_muzzle_brake"] = {
		label = "Split End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "split_end_muzzle_brake.png",
		}
	},
	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "RECYCLE! - Greta Thunberg 2019",
		client = {
			image = "plastic.png",
		}
	},
	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},
	["slanted_muzzle_brake"] = {
		label = "Slanted Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "slanted_muzzle_brake.png",
		}
	},
	["squared_muzzle_brake"] = {
		label = "Squared Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "squared_muzzle_brake.png",
		}
	},
	["veh_suspension"] = {
		label = "Suspension",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle suspension",
		client = {
			image = "veh_suspension.png",
		}
	},
	["veh_tint"] = {
		label = "Tints",
		weight = 1000,
		stack = true,
		close = true,
		description = "Install vehicle tint",
		client = {
			image = "veh_tint.png",
		}
	},
	["scorcher"] = {
		label = "Scorcher Bike",
		weight = 500,
		stack = false,
		close = true,
		description = "A Scorcher bike",
		client = {
			image = "scorcher.png",
		}
	},
	["newsbmic"] = {
		label = "Boom Microphone",
		weight = 100,
		stack = false,
		close = true,
		description = "A Useable BoomMic",
		client = {
			image = "newsbmic.png",
		}
	},
	["electronickit"] = {
		label = "Electronic Kit",
		weight = 100,
		stack = true,
		close = true,
		description = "If you've always wanted to build a robot you can maybe start here. Maybe you'll be the new Elon Musk?",
		client = {
			image = "electronickit.png",
		}
	},
	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},
	["veh_engine"] = {
		label = "Engine",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle engine",
		client = {
			image = "veh_engine.png",
		}
	},
	["heavy_duty_muzzle_brake"] = {
		label = "HD Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "heavy_duty_muzzle_brake.png",
		}
	},
	["advscope_attachment"] = {
		label = "Advanced Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "An advanced scope for a weapon",
		client = {
			image = "advscope_attachment.png",
		}
	},
	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},
	["laptop"] = {
		label = "Laptop",
		weight = 4000,
		stack = true,
		close = true,
		description = "Expensive laptop",
		client = {
			image = "laptop.png",
		}
	},
	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},
	["snikkel_candy"] = {
		label = "Snikkel",
		weight = 100,
		stack = true,
		close = true,
		description = "Some delicious candy :O",
		client = {
			image = "snikkel_candy.png",
		}
	},
	["screwdriverset"] = {
		label = "Toolkit",
		weight = 1000,
		stack = true,
		close = false,
		description = "Very useful to screw... screws...",
		client = {
			image = "screwdriverset.png",
		}
	},
	["holoscope_attachment"] = {
		label = "Holo Scope",
		weight = 1000,
		stack = true,
		close = true,
		description = "A holo scope for a weapon",
		client = {
			image = "holoscope_attachment.png",
		}
	},
	["advancedlockpick"] = {
		label = "Advanced Lockpick",
		weight = 500,
		stack = true,
		close = true,
		description = "If you lose your keys a lot this is very useful... Also useful to open your beers",
		client = {
			image = "advancedlockpick.png",
		}
	},
	["fat_end_muzzle_brake"] = {
		label = "Fat End Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "fat_end_muzzle_brake.png",
		}
	},
	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},
	["tirerepairkit"] = {
		label = "Tire Repair Kit",
		weight = 1000,
		stack = true,
		close = true,
		description = "A kit to repair your tires",
		client = {
			image = "tirerepairkit.png",
		}
	},
	["lighter"] = {
		label = "Lighter",
		weight = 0,
		stack = true,
		close = true,
		description = "On new years eve a nice fire to stand next to",
		client = {
			image = "lighter.png",
		}
	},
	["goldchain"] = {
		label = "Golden Chain",
		weight = 1500,
		stack = true,
		close = true,
		description = "A golden chain seems like the jackpot to me!",
		client = {
			image = "goldchain.png",
		}
	},
	["harness"] = {
		label = "Race Harness",
		weight = 1000,
		stack = false,
		close = true,
		description = "Racing Harness so no matter what you stay in the car",
		client = {
			image = "harness.png",
		}
	},
	["cleaningkit"] = {
		label = "Cleaning Kit",
		weight = 250,
		stack = true,
		close = true,
		description = "A microfiber cloth with some soap will let your car sparkle again!",
		client = {
			image = "cleaningkit.png",
		}
	},
	["zebracamo_attachment"] = {
		label = "Zebra Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A zebra camo for a weapon",
		client = {
			image = "zebracamo_attachment.png",
		}
	},
	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},
	["suppressor_attachment"] = {
		label = "Suppressor",
		weight = 1000,
		stack = true,
		close = true,
		description = "A suppressor for a weapon",
		client = {
			image = "suppressor_attachment.png",
		}
	},
	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},
	["precision_muzzle_brake"] = {
		label = "Precision Muzzle Brake",
		weight = 1000,
		stack = true,
		close = true,
		description = "A muzzle brake for a weapon",
		client = {
			image = "precision_muzzle_brake.png",
		}
	},
	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},
	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},
	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},
	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},
	["thermite"] = {
		label = "Thermite",
		weight = 1000,
		stack = true,
		close = true,
		description = "Sometimes you'd wish for everything to burn",
		client = {
			image = "thermite.png",
		}
	},
	["handcuffs"] = {
		label = "Handcuffs",
		weight = 100,
		stack = true,
		close = true,
		description = "Comes in handy when people misbehave. Maybe it can be used for something else?",
		client = {
			image = "handcuffs.png",
		}
	},
	["boomcamo_attachment"] = {
		label = "Boom Camo",
		weight = 1000,
		stack = true,
		close = true,
		description = "A boom camo for a weapon",
		client = {
			image = "boomcamo_attachment.png",
		}
	},
	["weed_whitewidow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},
	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},
	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},
	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},
	["veh_neons"] = {
		label = "Neons",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle neons",
		client = {
			image = "veh_neons.png",
		}
	},
	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},
	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},
	["veh_transmission"] = {
		label = "Transmission",
		weight = 1000,
		stack = true,
		close = true,
		description = "Upgrade vehicle transmission",
		client = {
			image = "veh_transmission.png",
		}
	},
	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},
	["diamond_ring"] = {
		label = "Diamond Ring",
		weight = 1500,
		stack = true,
		close = true,
		description = "A diamond ring seems like the jackpot to me!",
		client = {
			image = "diamond_ring.png",
		}
	},
	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},
	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},
	['tuning_component'] = {
		label = 'Tuning component',
		weight = 100,
	},
-- This part is generated by sv-deployer.lua from rcore_prison
-- Do not edit this part manually unless you know what you are doing
	["tweezers"] = {
		label = "Tweezers",
		weight = 50,
		stack = true,
		close = true,
		description = "For picking out bullets",
		client = {
			image = "tweezers.png",
		}
	},
	["bleachwipes"] = {
		label = "Bleach Wipes",
		weight = 25,
		stack = true,
		close = true,
		description = "To clean and sanatize",
		client = {
			image = "bleachwipes.png",
		}
	},
	["vic10"] = {
		label = "Vicodin 10MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "vic10.png",
		}
	},
	["morphine15"] = {
		label = "Morphine 15MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "morphine15.png",
		}
	},
	["perc5"] = {
		label = "Percocet 5MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "perc5.png",
		}
	},
	["uvlight"] = {
		label = "UV Light",
		weight = 25,
		stack = true,
		close = true,
		description = "To scan for fingerprints",
		client = {
			image = "uvlight.png",
		}
	},
	["crutch"] = {
		label = "Crutch",
		weight = 650,
		stack = true,
		close = true,
		description = "A device used to assist with walking.",
		client = {
			image = "crutch.png",
		}
	},
	["bobby_pin"] = {
		label = "Bobby Pin",
		weight = 2500,
		stack = true,
		close = true,
		description = "Can be used as a makeshift tool for picking locks",
		client = {
			image = "bobby_pin.png",
		}
	},
	["medbag"] = {
		label = "Medical Bag",
		weight = 2500,
		stack = true,
		close = true,
		description = "A bag of medic tools",
		client = {
			image = "medbag.png",
		}
	},
	["morphine30"] = {
		label = "Morphine 30MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "morphine30.png",
		}
	},
	["sedative"] = {
		label = "Sedative",
		weight = 20,
		stack = true,
		close = true,
		description = "If needed, this will sedate patient",
		client = {
			image = "sedative.png",
		}
	},
	["suturekit"] = {
		label = "Suture Kit",
		weight = 60,
		stack = true,
		close = true,
		description = "For stitching your patients",
		client = {
			image = "suturekit.png",
		}
	},
	["burncream"] = {
		label = "Burn Cream",
		weight = 125,
		stack = true,
		close = true,
		description = "To help with burns",
		client = {
			image = "burncream.png",
		}
	},
	["wheelchair"] = {
		label = "Wheelchair",
		weight = 850,
		stack = true,
		close = true,
		description = "A device used to assist with mobility.",
		client = {
			image = "wheelchair.png",
		}
	},
	["medikit"] = {
		label = "Medical Kit",
		weight = 110,
		stack = true,
		close = true,
		description = "A first aid kit for healing injured people.",
		client = {
			image = "medikit.png",
		}
	},
	["vic5"] = {
		label = "Vicodin 5MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "vic5.png",
		}
	},
	["perc10"] = {
		label = "Percocet 10MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "perc10.png",
		}
	},
	["icepack"] = {
		label = "Ice Pack",
		weight = 110,
		stack = true,
		close = true,
		description = "To help reduce swelling",
		client = {
			image = "icepack.png",
		}
	},
	["defib"] = {
		label = "Defibrillator",
		weight = 1120,
		stack = true,
		close = true,
		description = "Used to revive patients",
		client = {
			image = "defib.png",
		}
	},
	["perc30"] = {
		label = "Percocet 30MG",
		weight = 2,
		stack = true,
		close = true,
		description = "A controlled substance to control pain",
		client = {
			image = "perc30.png",
		}
	},

	["diaplatinum_earrings"] = {
		label = "Diaplatinum Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Elegant platinum earrings with a distinctive style.",
		client = {
			image = "diaplatinum_earrings.png",
		}
	},
	["crispy_chicken_staco"] = {
		label = "Crispy Chicken Soft Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "A soft taco filled with crispy chicken for a delightful crunch.",
		client = {
			image = "crispy_chicken_staco.png",
		}
	},
	["hexdia_earrings"] = {
		label = "HexDia Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Earrings with a blend of hex and diamond motifs.",
		client = {
			image = "hexdia_earrings.png",
		}
	},
	["chocolate_chunk_cookie"] = {
		label = "Chocolate Chunk Cookie",
		weight = 100,
		stack = true,
		close = true,
		description = "A freshly baked cookie loaded with rich chocolate chunks.",
		client = {
			image = "chocolate_chunk_cookie.png",
		}
	},
	["pure_runs"] = {
		label = "Pure Runs",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "pure_runs.png",
		}
	},
	["sweet_tea"] = {
		label = "Sweet Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic, chilled sweet tea that quenches your thirst.",
		client = {
			image = "sweet_tea.png",
		}
	},
	["cafe_icecube"] = {
		label = "Ice Cube",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_icecube.png",
		}
	},
	["meat_pizza"] = {
		label = "Meat Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty pizza topped with a delicious mix of meats.",
		client = {
			image = "meat_pizza.png",
		}
	},
	["velvet_layered_macchiato"] = {
		label = "MACCHIATO",
		weight = 100,
		stack = true,
		close = true,
		description = "An artfully layered macchiato with a luxuriously smooth texture.",
		client = {
			image = "velvet_layered_macchiato.png",
		}
	},
	["classic_cream_latte"] = {
		label = "Classic Cream Latte",
		weight = 100,
		stack = true,
		close = true,
		description = "A rich, velvety latte that comforts with every sip.",
		client = {
			image = "classic_cream_latte.png",
		}
	},
	["bs_iced_tea"] = {
		label = "Medium Sweetened Iced Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium glass of sweetened iced tea, perfectly refreshing on a hot day.",
		client = {
			image = "bs_iced_tea.png",
		}
	},
	["summit_og_joint"] = {
		label = "Summit OG Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "summit_og_joint.png",
		}
	},
	["junior_chicken_nuggets_combo"] = {
		label = "Junior Chicken Nuggets Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A combo meal with junior-sized chicken nuggets served with a drink.",
		client = {
			image = "junior_chicken_nuggets_combo.png",
		}
	},
	["junior_cheeseburger_combo"] = {
		label = "Junior Cheeseburger Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A combo meal featuring a junior cheeseburger with sides and a drink.",
		client = {
			image = "junior_cheeseburger_combo.png",
		}
	},
	["silky_smooth_latte"] = {
		label = "LATTE",
		weight = 100,
		stack = true,
		close = true,
		description = "A creamy latte with a silky texture that’s simply delightful.",
		client = {
			image = "silky_smooth_latte.png",
		}
	},
	["glacatti_joint"] = {
		label = "Glacatti Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "glacatti_joint.png",
		}
	},
	["cafe_shaker"] = {
		label = "Shaker",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_shaker.png",
		}
	},
	["crispy_waffle_fries"] = {
		label = "Crispy Waffle Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "Golden waffle fries with an irresistibly crispy texture.",
		client = {
			image = "crispy_waffle_fries.png",
		}
	},
	["iced_cappuccino"] = {
		label = "ICED CAPPUCCINO",
		weight = 100,
		stack = true,
		close = true,
		description = "A cool twist on a classic cappuccino, served over ice.",
		client = {
			image = "iced_cappuccino.png",
		}
	},
	["medium_citrus_spark_zero"] = {
		label = "Medium Citrus Spark Zero",
		weight = 100,
		stack = true,
		close = true,
		description = "A zero-calorie version of the medium citrus spark soda for guilt-free refreshment.",
		client = {
			image = "medium_citrus_spark_zero.png",
		}
	},
	["seasoned_fries"] = {
		label = "SEASONED FRIES",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy fries seasoned with a perfect blend of spices.",
		client = {
			image = "seasoned_fries.png",
		}
	},
	["idcard"] = {
		label = "CITIZEN ID",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "idcard.png",
		}
	},
	["coke_pooch"] = {
		label = "Coke Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "coke_pooch.png",
		}
	},
	["mc_flurry_cookies"] = {
		label = "Flurry Cookies",
		weight = 100,
		stack = true,
		close = true,
		description = "A delightful flurry featuring crushed cookies in creamy ice cream.",
		client = {
			image = "mc_flurry_cookies.png",
		}
	},
	["crab_cakes"] = {
		label = "Crab Cakes",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy crab cakes with a tender interior and zesty remoulade.",
		client = {
			image = "crab_cakes.png",
		}
	},
	["double_beef_supreme"] = {
		label = "Double Beef Supreme",
		weight = 100,
		stack = true,
		close = true,
		description = "An indulgent burger featuring double beef patties for extra flavor.",
		client = {
			image = "double_beef_supreme.png",
		}
	},
	["classic_soda"] = {
		label = "Classic Soda",
		weight = 100,
		stack = true,
		close = true,
		description = "A timeless soda with a refreshing, bubbly taste.",
		client = {
			image = "classic_soda.png",
		}
	},
	["mini_chicken_sandwich"] = {
		label = "Mini Chicken Sandwich.",
		weight = 100,
		stack = true,
		close = true,
		description = "A bite-sized chicken sandwich with all the classic flavors.",
		client = {
			image = "mini_chicken_sandwich.png",
		}
	},
	["skull_earrings"] = {
		label = "Skull Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Edgy skull earrings for a rebellious style.",
		client = {
			image = "skull_earrings.png",
		}
	},
	["philly_cheese_steak"] = {
		label = "Philly Cheese Steak",
		weight = 100,
		stack = true,
		close = true,
		description = "A savory sandwich loaded with tender steak and melty cheese.",
		client = {
			image = "philly_cheese_steak.png",
		}
	},
	["skull_bracelet"] = {
		label = "Skull Bracelet",
		weight = 100,
		stack = true,
		close = true,
		description = "A bold bracelet featuring a skull motif.",
		client = {
			image = "skull_bracelet.png",
		}
	},
	["asain_zest_wings"] = {
		label = "Asain Zest Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "Wings with an Asian zest of bold spices and tangy flavor.",
		client = {
			image = "asain_zest_wings.png",
		}
	},
	["necklace_dogtag"] = {
		label = "Necklace Dogtag",
		weight = 100,
		stack = true,
		close = true,
		description = "A rugged dogtag necklace with a timeless appeal.",
		client = {
			image = "necklace_dogtag.png",
		}
	},
	["weed_fertilizer"] = {
		label = "Weed Fertilizer",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "weed_fertilizer.png",
		}
	},
	["classic_wings_combo"] = {
		label = "CLASSIC WINGS COMBO",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic combo of wings paired with your favorite dipping sauce.",
		client = {
			image = "classic_wings_combo.png",
		}
	},
	["blue_mist"] = {
		label = "Starbuzz Blue Mist",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "blue_mist.png",
		}
	},
	["chocolate_fudge_brownie"] = {
		label = "Chocolate Fudge Brownie",
		weight = 100,
		stack = true,
		close = true,
		description = "Decadent fudge brownie bursting with deep chocolate flavor.",
		client = {
			image = "chocolate_fudge_brownie.png",
		}
	},
	["spiky_pear"] = {
		label = "Spiky Pear",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "spiky_pear.png",
		}
	},
	["strawberry_shake"] = {
		label = "Strawberry Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing strawberry shake bursting with fruity flavor.",
		client = {
			image = "strawberry_shake.png",
		}
	},
	["cookies_cream_milkshake"] = {
		label = "Cookies & Cream Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "A delightful blend of cookies and cream swirled into a milkshake.",
		client = {
			image = "cookies_cream_milkshake.png",
		}
	},
	["honolulu_hawaiian"] = {
		label = "Honolulu Hawaiian",
		weight = 100,
		stack = true,
		close = true,
		description = "A tropical pizza loaded with ham and pineapple for a taste of paradise.",
		client = {
			image = "honolulu_hawaiian.png",
		}
	},
	["strawberry_milkshake"] = {
		label = "Strawberry Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshingly sweet milkshake bursting with strawberry flavor.",
		client = {
			image = "strawberry_milkshake.png",
		}
	},
	["soft_taco"] = {
		label = "Soft Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "A soft tortilla taco filled with your favorite ingredients.",
		client = {
			image = "soft_taco.png",
		}
	},
	["fresh_harvest_salad"] = {
		label = "Fresh Harvest Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A vibrant salad featuring a mix of fresh, seasonal vegetables.",
		client = {
			image = "fresh_harvest_salad.png",
		}
	},
	["vapor_essence_joint"] = {
		label = "Vapor Essence Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "vapor_essence_joint.png",
		}
	},
	["shells_clam_chowder"] = {
		label = "Shells Clam Chowder",
		weight = 100,
		stack = true,
		close = true,
		description = "A comforting bowl of clam chowder brimming with tender clams and pasta shells.",
		client = {
			image = "shells_clam_chowder.png",
		}
	},
	["white_stone"] = {
		label = "White Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "A pristine white stone exuding elegance and purity.",
		client = {
			image = "white_stone.png",
		}
	},
	["small_onion_rings"] = {
		label = "Small Onion Rings",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy small onion rings served with a tangy dipping sauce.",
		client = {
			image = "small_onion_rings.png",
		}
	},
	["gourmet_double_burger"] = {
		label = "Gourmet Double Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "A gourmet double burger crafted with premium, juicy patties and fresh toppings.",
		client = {
			image = "gourmet_double_burger.png",
		}
	},
	["chain_ls"] = {
		label = "Chain LS",
		weight = 100,
		stack = true,
		close = true,
		description = "A sleek LS chain accessory with a modern look.",
		client = {
			image = "chain_ls.png",
		}
	},
	["frosted_delight"] = {
		label = "Frosted Delight",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "frosted_delight.png",
		}
	},
	["brown_scramble_burrito"] = {
		label = "Brown Scramble Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "A tasty burrito filled with scrambled eggs and wholesome ingredients.",
		client = {
			image = "brown_scramble_burrito.png",
		}
	},
	["cognac_shot"] = {
		label = "Cognac Shot",
		weight = 100,
		stack = true,
		close = true,
		description = "A smooth and refined cognac shot to savor after dinner.",
		client = {
			image = "cognac_shot.png",
		}
	},
	["tenders_family_meal"] = {
		label = "16Pc Tenders Family Meal Mild",
		weight = 100,
		stack = true,
		close = true,
		description = "A family meal featuring 16 mild chicken tenders, ideal for sharing.",
		client = {
			image = "tenders_family_meal.png",
		}
	},
	["double_stack_deluxe"] = {
		label = "Double Stack Deluxe",
		weight = 100,
		stack = true,
		close = true,
		description = "A towering burger featuring double layers of premium ingredients.",
		client = {
			image = "double_stack_deluxe.png",
		}
	},
	["grilled_chicken_bites"] = {
		label = "Grilled Chicken Bites",
		weight = 100,
		stack = true,
		close = true,
		description = "Healthy grilled chicken bites with a smoky, satisfying taste.",
		client = {
			image = "grilled_chicken_bites.png",
		}
	},
	["driverlicense"] = {
		label = "DRIVER LICENSE",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "driverlicense.png",
		}
	},
	["shrimp_pasta"] = {
		label = "Shrimp Pasta",
		weight = 100,
		stack = true,
		close = true,
		description = "Pasta tossed with succulent shrimp in a garlic-infused sauce.",
		client = {
			image = "shrimp_pasta.png",
		}
	},
	["fluffy_og_joint"] = {
		label = "Fluffy OG Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "fluffy_og_joint.png",
		}
	},
	["mashed_potatoes"] = {
		label = "Regular Mashed Potatoes with Cajun Gravy",
		weight = 100,
		stack = true,
		close = true,
		description = "Creamy mashed potatoes topped with savory Cajun gravy.",
		client = {
			image = "mashed_potatoes.png",
		}
	},
	["zomo_lemon"] = {
		label = "Zomo Lemon Mint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "zomo_lemon.png",
		}
	},
	["citrus_fizz"] = {
		label = "Citrus Fizz",
		weight = 100,
		stack = true,
		close = true,
		description = "A fizzy drink bursting with tangy citrus flavor.",
		client = {
			image = "citrus_fizz.png",
		}
	},
	["lean_bottle"] = {
		label = "Lean bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "lean_bottle.png",
		}
	},
	["endurance_blend"] = {
		label = "Endurance Blend",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "endurance_blend.png",
		}
	},
	["wisconsin_cheese"] = {
		label = "Wisconsin Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "A rich and indulgent pizza loaded with an assortment of cheeses.",
		client = {
			image = "wisconsin_cheese.png",
		}
	},
	["extra_vagan_pizza"] = {
		label = "Extra Vagan Pizza",
		weight = 100,
		stack = true,
		close = true,
		description = "A vibrant pizza loaded with extra veggies for a healthy bite.",
		client = {
			image = "extra_vagan_pizza.png",
		}
	},
	["pastry_blend_joint"] = {
		label = "Pastry Blend Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "pastry_blend_joint.png",
		}
	},
	["sunrise_muffin"] = {
		label = "Egg Muffin",
		weight = 100,
		stack = true,
		close = true,
		description = "A warm egg muffin, ideal for a quick and satisfying breakfast.",
		client = {
			image = "sunrise_muffin.png",
		}
	},
	["triple_meal_deal"] = {
		label = "Chicken Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "A triple meal deal centered around a savory chicken biscuit.",
		client = {
			image = "triple_meal_deal.png",
		}
	},
	["fishtaco"] = {
		label = "Fish Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "A soft taco filled with lightly fried fish and fresh toppings.",
		client = {
			image = "fishtaco.png",
		}
	},
	["tilapia_fish_meal"] = {
		label = "Steak & Lobster Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty meal with tilapia fish prepared with savory spices.",
		client = {
			image = "tilapia_fish_meal.png",
		}
	},
	["crispy_tender_combo"] = {
		label = "LARGE 5 PC CRISPY TENDER COMBO",
		weight = 100,
		stack = true,
		close = true,
		description = "A combo featuring 5 crispy tenders served with sides.",
		client = {
			image = "crispy_tender_combo.png",
		}
	},
	["morning_wrap"] = {
		label = "WAKE-UP WRAP",
		weight = 100,
		stack = true,
		close = true,
		description = "A wholesome wrap packed with fresh ingredients to energize your morning.",
		client = {
			image = "morning_wrap.png",
		}
	},
	["mc_cappuccino"] = {
		label = "Cappuccino",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic cappuccino with a perfect balance of espresso and foam.",
		client = {
			image = "mc_cappuccino.png",
		}
	},
	["supreme_taco_duo"] = {
		label = "Supreme Taco Duo",
		weight = 100,
		stack = true,
		close = true,
		description = "A duo of tacos loaded with supreme toppings and flavor.",
		client = {
			image = "supreme_taco_duo.png",
		}
	},
	["mofo_fantasia"] = {
		label = "Adios Mofo Fantasia",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "mofo_fantasia.png",
		}
	},
	["original_hot_wings"] = {
		label = "Original Hot Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "The classic hot wings with a perfectly balanced spicy flavor.",
		client = {
			image = "original_hot_wings.png",
		}
	},
	["group_pack"] = {
		label = "WINGS & THIGH BITES GROUP PACK",
		weight = 100,
		stack = true,
		close = true,
		description = "A group pack combining wings and thigh bites for sharing.",
		client = {
			image = "group_pack.png",
		}
	},
	["vapor_essence"] = {
		label = "Vapor Essence",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "vapor_essence.png",
		}
	},
	["spinach_feta"] = {
		label = "Spinach & Feta",
		weight = 100,
		stack = true,
		close = true,
		description = "A fresh pizza topped with spinach and tangy feta cheese.",
		client = {
			image = "spinach_feta.png",
		}
	},
	["cheese_quesadilla"] = {
		label = "Cheese Quesadilla",
		weight = 100,
		stack = true,
		close = true,
		description = "A melty quesadilla filled with a blend of cheeses.",
		client = {
			image = "cheese_quesadilla.png",
		}
	},
	["mild_tenders_box"] = {
		label = "10Pc Mild Tenders Box",
		weight = 100,
		stack = true,
		close = true,
		description = "A 10-piece box of mild chicken tenders that are crispy and tender.",
		client = {
			image = "mild_tenders_box.png",
		}
	},
	["crispy_chicken_bites"] = {
		label = "Chicken Nuggets",
		weight = 100,
		stack = true,
		close = true,
		description = "Golden, bite-sized chicken nuggets with a satisfying crunch.",
		client = {
			image = "crispy_chicken_bites.png",
		}
	},
	["pendulus_platinum"] = {
		label = "Pendulus Platinum",
		weight = 100,
		stack = true,
		close = true,
		description = "A striking platinum pendulus with a refined design.",
		client = {
			image = "pendulus_platinum.png",
		}
	},
	["zesty_southwest_salad"] = {
		label = "Zesty Southwest Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A zesty salad with a bold Southwest flavor and crunchy toppings.",
		client = {
			image = "zesty_southwest_salad.png",
		}
	},
	["packaged_coffee"] = {
		label = "PACKAGED COFFEE",
		weight = 100,
		stack = true,
		close = true,
		description = "Convenient packaged coffee for a quick caffeine boost on the go.",
		client = {
			image = "packaged_coffee.png",
		}
	},
	["w_ice_cola"] = {
		label = "Ice Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A perfectly chilled ice cola for a refreshing sip.",
		client = {
			image = "w_ice_cola.png",
		}
	},
	["chicken_bacon_ranch"] = {
		label = "Chicken Bacon Ranch",
		weight = 100,
		stack = true,
		close = true,
		description = "A flavorful sandwich combining chicken, bacon, and a creamy ranch dressing.",
		client = {
			image = "chicken_bacon_ranch.png",
		}
	},
	["greek_yogurt_parfait"] = {
		label = "Greek Yogurt Parfait",
		weight = 100,
		stack = true,
		close = true,
		description = "Creamy Greek yogurt layered with fruits and crunchy granola.",
		client = {
			image = "greek_yogurt_parfait.png",
		}
	},
	["luxury_sparkling_wine"] = {
		label = "Luxury Sparkling Wine",
		weight = 100,
		stack = true,
		close = true,
		description = "An exquisite bottle of sparkling wine perfect for celebratory moments.",
		client = {
			image = "luxury_sparkling_wine.png",
		}
	},
	["royal_haze_joint"] = {
		label = "Royal Haze Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "royal_haze_joint.png",
		}
	},
	["gpstracker"] = {
		label = "GPS Tracker",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "gpstracker.png",
		}
	},
	["bs_orange_juice"] = {
		label = "Fresh Citrus Delight Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Fresh citrus juice bursting with natural goodness.",
		client = {
			image = "bs_orange_juice.png",
		}
	},
	["cheese_fries"] = {
		label = "CHEESE FRIES",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy fries smothered in melted, savory cheese.",
		client = {
			image = "cheese_fries.png",
		}
	},
	["pancake_sausage_platter"] = {
		label = "Pancake & Sausage Platter",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty platter combining fluffy pancakes with savory sausage.",
		client = {
			image = "pancake_sausage_platter.png",
		}
	},
	["chocolate_milkshake"] = {
		label = "Chocolate Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic chocolate milkshake that is smooth and indulgent.",
		client = {
			image = "chocolate_milkshake.png",
		}
	},
	["heroin"] = {
		label = "Heroin",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "heroin.png",
		}
	},
	["endurance_blend_joint"] = {
		label = "Endurance Blend Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "endurance_blend_joint.png",
		}
	},
	["gummi_bear"] = {
		label = "Fumari White Gummi Bear",
		weight = 10,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "gummi_bear.png",
		}
	},
	["rosy_dunes_joint"] = {
		label = "Rosy Dunes Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "rosy_dunes_joint.png",
		}
	},
	["citrus_splash_lemonade"] = {
		label = "Medium Citrus Splash Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium lemonade with a refreshing citrus splash.",
		client = {
			image = "citrus_splash_lemonade.png",
		}
	},
	["mac_cheese_meal"] = {
		label = "Mac & Cheese Kids Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "A comforting mac & cheese meal designed especially for kids.",
		client = {
			image = "mac_cheese_meal.png",
		}
	},
	["shrimp_and_grits"] = {
		label = "Shrimp & Grits",
		weight = 100,
		stack = true,
		close = true,
		description = "Creamy grits topped with succulent shrimp in a savory sauce.",
		client = {
			image = "shrimp_and_grits.png",
		}
	},
	["chicken_nuggets"] = {
		label = "Chicken Nuggets",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy chicken nuggets perfect for a quick snack or meal.",
		client = {
			image = "chicken_nuggets.png",
		}
	},
	["bottle_light_cola"] = {
		label = "20oz Bottle Light Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A 20oz bottle of light cola for a refreshing drink on the go.",
		client = {
			image = "bottle_light_cola.png",
		}
	},
	["kronos_black"] = {
		label = "Kronos Black",
		weight = 100,
		stack = true,
		close = true,
		description = "A sophisticated black Kronos chain exuding style.",
		client = {
			image = "kronos_black.png",
		}
	},
	["apple_juice_pouch"] = {
		label = "Orange Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "A convenient pouch of fresh-squeezed orange juice.",
		client = {
			image = "apple_juice_pouch.png",
		}
	},
	["tropical_island_punch"] = {
		label = "Medium Tropical Island Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium tropical island punch with an exotic, fruity blend.",
		client = {
			image = "tropical_island_punch.png",
		}
	},
	["paris_mist"] = {
		label = "Paris Mist",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "paris_mist.png",
		}
	},
	["sunset_secret"] = {
		label = "Sunset Secret",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "sunset_secret.png",
		}
	},
	["nuggets_kids_meal"] = {
		label = "6Pc Nuggets Kids Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "A kid-friendly 6-piece nuggets meal, perfectly portioned for little ones.",
		client = {
			image = "nuggets_kids_meal.png",
		}
	},
	["brewed_iced_tea"] = {
		label = "Brewed Iced Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "Refreshing iced tea brewed to perfection for a cool sip.",
		client = {
			image = "brewed_iced_tea.png",
		}
	},
	["emsid"] = {
		label = "PARAMEDIC",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "emsid.png",
		}
	},
	["croissant_breakfast_combo"] = {
		label = "Croissant Breakfast Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A delicious combo featuring flaky croissants paired with hearty breakfast items.",
		client = {
			image = "croissant_breakfast_combo.png",
		}
	},
	["bbq_wings"] = {
		label = "BBQ Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "Wings glazed with a rich and tangy BBQ sauce.",
		client = {
			image = "bbq_wings.png",
		}
	},
	["mc_iced_coffee"] = {
		label = "Iced Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "A chilled iced coffee that delivers a cool caffeine boost.",
		client = {
			image = "mc_iced_coffee.png",
		}
	},
	["quarter_beef_burger_cheese"] = {
		label = "Quarter Beef Burger Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic beef burger topped with a generous layer of melted cheese.",
		client = {
			image = "quarter_beef_burger_cheese.png",
		}
	},
	["wirecutter"] = {
		label = "Wire Cutter",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "wirecutter.png",
		}
	},
	["grilled_egg_white_delight"] = {
		label = "Grilled Egg White Delight",
		weight = 100,
		stack = true,
		close = true,
		description = "Light and healthy grilled egg whites for a protein boost.",
		client = {
			image = "grilled_egg_white_delight.png",
		}
	},
	["runs_elite_joint"] = {
		label = "Runs Elite Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "runs_elite_joint.png",
		}
	},
	["side_of_flavor"] = {
		label = "SIDE OF FLAVOR",
		weight = 100,
		stack = true,
		close = true,
		description = "A side dish bursting with a medley of bold flavors.",
		client = {
			image = "side_of_flavor.png",
		}
	},
	["fiery_lava_burrito"] = {
		label = "Fiery Lava Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "A burrito with a spicy kick that erupts with bold flavor.",
		client = {
			image = "fiery_lava_burrito.png",
		}
	},
	["chicken_habanero"] = {
		label = "Chicken Habanero",
		weight = 100,
		stack = true,
		close = true,
		description = "A fiery pizza with spicy habanero sauce and tender chicken pieces.",
		client = {
			image = "chicken_habanero.png",
		}
	},
	["goldak_earrings"] = {
		label = "GoldAK Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Bold GoldAK earrings for a striking look.",
		client = {
			image = "goldak_earrings.png",
		}
	},
	["chilled_premium_lemonade"] = {
		label = "Chilled Premium Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing premium lemonade served chilled for ultimate refreshment.",
		client = {
			image = "chilled_premium_lemonade.png",
		}
	},
	["crunchy_wrap_supreme"] = {
		label = "Crunchy Wrap Supreme",
		weight = 100,
		stack = true,
		close = true,
		description = "A supreme wrap with a crispy, crunchy shell and savory filling.",
		client = {
			image = "crunchy_wrap_supreme.png",
		}
	},
	["gold_bar"] = {
		label = "Gold Bar",
		weight = 100,
		stack = true,
		close = true,
		description = "A solid gold bar, a symbol of wealth and luxury.",
		client = {
			image = "gold_bar.png",
		}
	},
	["crispy_tenders"] = {
		label = "8 PC MEAL FOR 2 CRISPY TENDERS",
		weight = 100,
		stack = true,
		close = true,
		description = "A meal for two featuring 8 crispy chicken tenders.",
		client = {
			image = "crispy_tenders.png",
		}
	},
	["meth_raw"] = {
		label = "Meth Raw",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "meth_raw.png",
		}
	},
	["chilled_chicken_wrap"] = {
		label = "Chilled Chicken Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "A cool and refreshing wrap filled with tender chicken and crisp veggies.",
		client = {
			image = "chilled_chicken_wrap.png",
		}
	},
	["bs_yello_mello"] = {
		label = "Medium Mello Yello",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium serving of Mello Yello with a bold citrus taste.",
		client = {
			image = "bs_yello_mello.png",
		}
	},
	["golden_biscuit"] = {
		label = "Golden Biscuit",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "golden_biscuit.png",
		}
	},
	["large_thigh_bites"] = {
		label = "LARGE THIGH BITES",
		weight = 100,
		stack = true,
		close = true,
		description = "A generous serving of large, savory thigh bites.",
		client = {
			image = "large_thigh_bites.png",
		}
	},
	["seed_weed"] = {
		label = "Weed Seed",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "seed_weed.png",
		}
	},
	["chain_triangle"] = {
		label = "Chain Triangle",
		weight = 100,
		stack = true,
		close = true,
		description = "A geometric triangle chain with sharp edges.",
		client = {
			image = "chain_triangle.png",
		}
	},
	["lemon_pepper_wings"] = {
		label = "Lemon Pepper Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "Wings seasoned with zesty lemon and cracked pepper.",
		client = {
			image = "lemon_pepper_wings.png",
		}
	},
	["quarter_beef_burger"] = {
		label = "Quarter Beef Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "A juicy quarter-pound beef burger crafted for classic flavor.",
		client = {
			image = "quarter_beef_burger.png",
		}
	},
	["spicy_cherry_cola"] = {
		label = "Pepper Twist Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A bold cola with a spicy cherry twist for an extra kick.",
		client = {
			image = "spicy_cherry_cola.png",
		}
	},
	["fluffy_og"] = {
		label = "Fluffy OG",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "fluffy_og.png",
		}
	},
	["catfish"] = {
		label = "Catfish",
		weight = 100,
		stack = true,
		close = true,
		description = "Fresh catfish with a light, crispy coating.",
		client = {
			image = "catfish.png",
		}
	},
	["hary_payton"] = {
		label = "Hary Payton",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "hary_payton.png",
		}
	},
	["runs_elite"] = {
		label = "Runs Elite",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "runs_elite.png",
		}
	},
	["md_seltzer_water"] = {
		label = "MD Seltzer Water",
		weight = 100,
		stack = true,
		close = true,
		description = "A crisp and refreshing MD seltzer water with natural effervescence.",
		client = {
			image = "md_seltzer_water.png",
		}
	},
	["2005_blueberry"] = {
		label = "2005 Blueberry Tangiers",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "2005_blueberry.png",
		}
	},
	["chemicals"] = {
		label = "Chemicals",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "chemicals.png",
		}
	},
	["lunar_stone"] = {
		label = "Lunar Stone",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "lunar_stone.png",
		}
	},
	["bigger_family_feast"] = {
		label = "Bigger Family Feast",
		weight = 100,
		stack = true,
		close = true,
		description = "A grand family feast offering a variety of delicious items.",
		client = {
			image = "bigger_family_feast.png",
		}
	},
	["deluxe_chicken_royale"] = {
		label = "Deluxe Chicken Royale",
		weight = 100,
		stack = true,
		close = true,
		description = "A premium chicken sandwich crowned with deluxe toppings.",
		client = {
			image = "deluxe_chicken_royale.png",
		}
	},
	["chocolate_chunk_brownie"] = {
		label = "TRIPLE CHOCOLATE CHUNK BROWNIE",
		weight = 100,
		stack = true,
		close = true,
		description = "A decadent brownie loaded with three types of chocolate chunks.",
		client = {
			image = "chocolate_chunk_brownie.png",
		}
	},
	["vodka_tonic"] = {
		label = "Vodka Tonic",
		weight = 100,
		stack = true,
		close = true,
		description = "A crisp vodka tonic with a perfect balance of flavors.",
		client = {
			image = "vodka_tonic.png",
		}
	},
	["spades_fantasia"] = {
		label = "Ace of Spades Fantasia",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "spades_fantasia.png",
		}
	},
	["classic_signature_chicken"] = {
		label = "Classic Signature Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "The signature chicken offering with classic flavor and crunch.",
		client = {
			image = "classic_signature_chicken.png",
		}
	},
	["plain_iced_coffee"] = {
		label = "Plain Iced Coffee Medium",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium serving of plain iced coffee, refreshingly simple.",
		client = {
			image = "plain_iced_coffee.png",
		}
	},
	["red_wine_sangria"] = {
		label = "Redwine Sangria",
		weight = 100,
		stack = true,
		close = true,
		description = "A robust sangria made with red wine and fresh fruit.",
		client = {
			image = "red_wine_sangria.png",
		}
	},
	["pastry_blend"] = {
		label = "Pastry Blend",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "pastry_blend.png",
		}
	},
	["strawberry_banana_crepes"] = {
		label = "Strawberry Banana Crepes",
		weight = 100,
		stack = true,
		close = true,
		description = "Delicate crepes filled with fresh strawberries and banana slices.",
		client = {
			image = "strawberry_banana_crepes.png",
		}
	},
	["biscuit_bliss"] = {
		label = "Biscuit Bliss",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "biscuit_bliss.png",
		}
	},
	["boss_blend_joint"] = {
		label = "Boss Blend Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "boss_blend_joint.png",
		}
	},
	["cheddar_jalapeno_poppers"] = {
		label = "Cheddar Jalapeno Poppers",
		weight = 100,
		stack = true,
		close = true,
		description = "Spicy poppers loaded with cheddar cheese and a kick of jalapeno.",
		client = {
			image = "cheddar_jalapeno_poppers.png",
		}
	},
	["cheap_lighter"] = {
		label = "Cheap Lighter",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cheap_lighter.png",
		}
	},
	["cafe_bluecuracao"] = {
		label = "Blue Curacao",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_bluecuracao.png",
		}
	},
	["double_sausage_biscuit"] = {
		label = "Double Sausage Croissant Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A satisfying biscuit sandwich loaded with double sausage and rich flavor.",
		client = {
			image = "double_sausage_biscuit.png",
		}
	},
	["blazebites"] = {
		label = "Blaze Bites",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "blazebites.png",
		}
	},
	["cheesy_quesadilla_bites"] = {
		label = "Cheesy Quesadilla Bites",
		weight = 100,
		stack = true,
		close = true,
		description = "Bite-sized quesadilla pieces loaded with gooey cheese.",
		client = {
			image = "cheesy_quesadilla_bites.png",
		}
	},
	["hundred_wings"] = {
		label = "100 WINGS",
		weight = 100,
		stack = true,
		close = true,
		description = "An ultimate challenge: 100 crispy wings to share.",
		client = {
			image = "hundred_wings.png",
		}
	},
	["deluxe_breakfast_croissant"] = {
		label = "Deluxe Breakfast Croissant",
		weight = 100,
		stack = true,
		close = true,
		description = "A premium breakfast croissant loaded with savory fillings for a luxurious start.",
		client = {
			image = "deluxe_breakfast_croissant.png",
		}
	},
	["spiky_pear_joint"] = {
		label = "Spiky Pear Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "spiky_pear_joint.png",
		}
	},
	["junior_hamburger_combo"] = {
		label = "Junior Hamburger Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A junior combo meal featuring a classic hamburger and sides.",
		client = {
			image = "junior_hamburger_combo.png",
		}
	},
	["weed_leaf"] = {
		label = "Weed Leaf",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "weed_leaf.png",
		}
	},
	["korean_bbq_wings"] = {
		label = "Korean BBQ Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "Wings with a tangy and savory Korean BBQ flavor.",
		client = {
			image = "korean_bbq_wings.png",
		}
	},
	["weed_pooch"] = {
		label = "Weed Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "weed_pooch.png",
		}
	},
	["chain_medal"] = {
		label = "Chain Medal",
		weight = 100,
		stack = true,
		close = true,
		description = "A stylish chain medal with a bold design.",
		client = {
			image = "chain_medal.png",
		}
	},
	["side_caesar_salad"] = {
		label = "Side Caesar Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A light serving of Caesar salad, perfect as a side dish.",
		client = {
			image = "side_caesar_salad.png",
		}
	},
	["sangria_lemonade"] = {
		label = "Sangria Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "A zesty blend of sangria and lemonade for a refreshing kick.",
		client = {
			image = "sangria_lemonade.png",
		}
	},
	["hash_browns"] = {
		label = "HASH BROWNS",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy hash browns with a golden crunch that’s simply irresistible.",
		client = {
			image = "hash_browns.png",
		}
	},
	["morning_rings"] = {
		label = "DONUTS",
		weight = 100,
		stack = true,
		close = true,
		description = "Sweet and airy donuts that add a cheerful touch to your morning.",
		client = {
			image = "morning_rings.png",
		}
	},
	["chicken_biscuit"] = {
		label = "Chicken Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "A savory chicken biscuit perfect for a hearty breakfast.",
		client = {
			image = "chicken_biscuit.png",
		}
	},
	["cheese_stuffed_tater_tots"] = {
		label = "Cheese Stuffed Tater Tots",
		weight = 100,
		stack = true,
		close = true,
		description = "Tater tots stuffed with gooey melted cheese for extra indulgence.",
		client = {
			image = "cheese_stuffed_tater_tots.png",
		}
	},
	["weed_spray"] = {
		label = "Weed Spray",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "weed_spray.png",
		}
	},
	["classic_cola"] = {
		label = "Classic Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "The original classic cola with a perfectly balanced sweetness.",
		client = {
			image = "classic_cola.png",
		}
	},
	["vape"] = {
		label = "Vape",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "vape.png",
		}
	},
	["spice_leaf"] = {
		label = "Spice Leaf",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "spice_leaf.png",
		}
	},
	["triple_cheeseburger_supreme"] = {
		label = "Triple Cheeseburger Supreme",
		weight = 100,
		stack = true,
		close = true,
		description = "A towering triple cheeseburger loaded with premium ingredients.",
		client = {
			image = "triple_cheeseburger_supreme.png",
		}
	},
	["cokebrick"] = {
		label = "Coke Brick",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cokebrick.png",
		}
	},
	["fruit_sparkler"] = {
		label = "Fruit Sparkler",
		weight = 100,
		stack = true,
		close = true,
		description = "A bubbly drink bursting with refreshing, fruity flavors.",
		client = {
			image = "fruit_sparkler.png",
		}
	},
	["goldstone_earrings"] = {
		label = "Goldstone Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Earrings featuring shimmering goldstone accents.",
		client = {
			image = "goldstone_earrings.png",
		}
	},
	["chocolate_fudge_cream_pie"] = {
		label = "Chocolate Fudge Cream Pie",
		weight = 100,
		stack = true,
		close = true,
		description = "A decadent pie filled with rich, velvety chocolate fudge cream.",
		client = {
			image = "chocolate_fudge_cream_pie.png",
		}
	},
	["frosty_phantom_joint"] = {
		label = "Frosty Phantom Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "frosty_phantom_joint.png",
		}
	},
	["meatball"] = {
		label = "Meatball",
		weight = 100,
		stack = true,
		close = true,
		description = "Juicy meatball bursting with savory flavor.",
		client = {
			image = "meatball.png",
		}
	},
	["churros_dip"] = {
		label = "Churros Dip",
		weight = 100,
		stack = true,
		close = true,
		description = "A sweet dipping sauce perfect for enjoying with churros.",
		client = {
			image = "churros_dip.png",
		}
	},
	["watch_material"] = {
		label = "Watch Material",
		weight = 100,
		stack = true,
		close = true,
		description = "Premium material used for high-end watches.",
		client = {
			image = "watch_material.png",
		}
	},
	["mc_combo_chicken"] = {
		label = "Combo Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "A complete meal combo centered around tender chicken.",
		client = {
			image = "mc_combo_chicken.png",
		}
	},
	["buffalo_chicken_strips"] = {
		label = "Buffalo Chicken Strips",
		weight = 100,
		stack = true,
		close = true,
		description = "Spicy buffalo chicken strips with a tangy kick.",
		client = {
			image = "buffalo_chicken_strips.png",
		}
	},
	["peach_cobbler_joint"] = {
		label = "Peach Cobbler Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "peach_cobbler_joint.png",
		}
	},
	["frozen_dream_cone"] = {
		label = "Frozen Dream Cone",
		weight = 100,
		stack = true,
		close = true,
		description = "A delightful frozen cone that feels like a dream on a sunny day.",
		client = {
			image = "frozen_dream_cone.png",
		}
	},
	["blend_99"] = {
		label = "Blend 99",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "blend_99.png",
		}
	},
	["apple_sauce"] = {
		label = "Apple Sauce",
		weight = 100,
		stack = true,
		close = true,
		description = "Smooth and naturally sweet apple sauce for a light snack.",
		client = {
			image = "apple_sauce.png",
		}
	},
	["cafe_whisky"] = {
		label = "Whisky",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_whisky.png",
		}
	},
	["family_bundle_classic"] = {
		label = "Family Bundle Classic",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic family bundle featuring a variety of your favorite items.",
		client = {
			image = "family_bundle_classic.png",
		}
	},
	["crisp_gelato_joint"] = {
		label = "Crisp Gelato Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "crisp_gelato_joint.png",
		}
	},
	["surf_turf_combo"] = {
		label = "Surf & Turf Small Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A small combo that blends surf and turf flavors in one satisfying meal.",
		client = {
			image = "surf_turf_combo.png",
		}
	},
	["azure_tomyz_joint"] = {
		label = "Azure Tomyz Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "azure_tomyz_joint.png",
		}
	},
	["covgari_gold"] = {
		label = "Covgari Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "A unique gold piece from Covgari with intricate design.",
		client = {
			image = "covgari_gold.png",
		}
	},
	["vanilla_shake"] = {
		label = "Vanilla Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "A timeless vanilla shake with a creamy, smooth finish.",
		client = {
			image = "vanilla_shake.png",
		}
	},
	["cajun_fried_corn"] = {
		label = "CAJUN FRIED CORN",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy fried corn seasoned with bold Cajun spices.",
		client = {
			image = "cajun_fried_corn.png",
		}
	},
	["snowberry_gelato"] = {
		label = "Snowberry Gelato",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "snowberry_gelato.png",
		}
	},
	["memphis_bbq_chicken"] = {
		label = "Memphis BBQ Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "A smoky BBQ pizza topped with tender chicken for a Memphis twist.",
		client = {
			image = "memphis_bbq_chicken.png",
		}
	},
	["ham_cheese_breakfast_croissant"] = {
		label = "Ham & Cheese Breakfast Croissant",
		weight = 100,
		stack = true,
		close = true,
		description = "A delightful croissant sandwich featuring ham and melted cheese.",
		client = {
			image = "ham_cheese_breakfast_croissant.png",
		}
	},
	["sheriffid"] = {
		label = "SHERIFF ID",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "sheriffid.png",
		}
	},
	["mc_iced_tea"] = {
		label = "Iced Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing glass of iced tea to cool you down.",
		client = {
			image = "mc_iced_tea.png",
		}
	},
	["thirty_crispy_tenders"] = {
		label = "30 CRISPY TENDERS",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty serving of 30 crispy chicken tenders.",
		client = {
			image = "thirty_crispy_tenders.png",
		}
	},
	["chicken_sandwich"] = {
		label = "Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A savory chicken sandwich that’s ideal for a filling lunch.",
		client = {
			image = "chicken_sandwich.png",
		}
	},
	["rectdia_earrings"] = {
		label = "RectDia Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Rectangular diamond earrings with a modern twist.",
		client = {
			image = "rectdia_earrings.png",
		}
	},
	["citrus_spark"] = {
		label = "Citrus Spark",
		weight = 100,
		stack = true,
		close = true,
		description = "A vibrant soda with a burst of fresh citrus energy.",
		client = {
			image = "citrus_spark.png",
		}
	},
	["medium_citrus_spark"] = {
		label = "Medium Citrus Spark",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium soda with a lively burst of citrus energy.",
		client = {
			image = "medium_citrus_spark.png",
		}
	},
	["tenders_medium_combo"] = {
		label = "Tenders Medium Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium combo loaded with crispy chicken tenders and your favorite sides.",
		client = {
			image = "tenders_medium_combo.png",
		}
	},
	["tangy_fuel"] = {
		label = "Tangy Fuel",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "tangy_fuel.png",
		}
	},
	["bio_crunch"] = {
		label = "Bio Crunch",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "bio_crunch.png",
		}
	},
	["veggie_sticks"] = {
		label = "VEGGIE STICKS",
		weight = 100,
		stack = true,
		close = true,
		description = "Crunchy veggie sticks for a healthy, fresh side.",
		client = {
			image = "veggie_sticks.png",
		}
	},
	["iced_classic_latte"] = {
		label = "ICED Classic Cream Latte",
		weight = 100,
		stack = true,
		close = true,
		description = "A chilled classic latte with a smooth, creamy finish.",
		client = {
			image = "iced_classic_latte.png",
		}
	},
	["decaf_brewed_coffee"] = {
		label = "Decaf Brewed Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "A smooth brewed coffee without the caffeine kick.",
		client = {
			image = "decaf_brewed_coffee.png",
		}
	},
	["50_below"] = {
		label = "50 Below Nirvana Dokha",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "50_below.png",
		}
	},
	["chroniccrunchcookies"] = {
		label = "Chronic Crunch Cookies",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "chroniccrunchcookies.png",
		}
	},
	["fiery_premium_sandwich"] = {
		label = "Spicy Chicken Supreme Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A spicy, premium chicken sandwich with bold, fiery flavors.",
		client = {
			image = "fiery_premium_sandwich.png",
		}
	},
	["pepper_twist_cola"] = {
		label = "Pepper Twist Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A unique cola with a subtle pepper twist for an extra zing.",
		client = {
			image = "pepper_twist_cola.png",
		}
	},
	["strawberry_cheesecake_pie"] = {
		label = "Strawberry Cheesecake Fried Pie",
		weight = 100,
		stack = true,
		close = true,
		description = "A fried pie filled with luscious strawberry cheesecake goodness.",
		client = {
			image = "strawberry_cheesecake_pie.png",
		}
	},
	["royal_haze"] = {
		label = "Royal Haze",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "royal_haze.png",
		}
	},
	["berry_bliss"] = {
		label = "Berry Bliss",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "berry_bliss.png",
		}
	},
	["lunar_stone_joint"] = {
		label = "Lunar Stone Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "lunar_stone_joint.png",
		}
	},
	["bio_crunch_joint"] = {
		label = "Bio Crunch Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "bio_crunch_joint.png",
		}
	},
	["elegant_porcelain_joint"] = {
		label = "Elegant Porcelain Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "elegant_porcelain_joint.png",
		}
	},
	["apple_sparkle"] = {
		label = "Apple Sparkle",
		weight = 100,
		stack = true,
		close = true,
		description = "A sparkling apple beverage with a refreshing finish.",
		client = {
			image = "apple_sparkle.png",
		}
	},
	["vanilla_milkshake"] = {
		label = "Vanilla Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "A smooth and creamy vanilla milkshake for any sweet craving.",
		client = {
			image = "vanilla_milkshake.png",
		}
	},
	["side_salad"] = {
		label = "Side Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A light and refreshing salad perfect as a side dish.",
		client = {
			image = "side_salad.png",
		}
	},
	["backroots_grape"] = {
		label = "Backroots Grape",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "backroots_grape.png",
		}
	},
	["oysters_half_shell"] = {
		label = "Oysters On the Half Shell",
		weight = 100,
		stack = true,
		close = true,
		description = "Fresh oysters served chilled on the half shell with lemon.",
		client = {
			image = "oysters_half_shell.png",
		}
	},
	["foil_poker"] = {
		label = "Foil Poker",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "foil_poker.png",
		}
	},
	["cali_chicken_bacon"] = {
		label = "Cali Chicken Bacon",
		weight = 100,
		stack = true,
		close = true,
		description = "A California-inspired pizza featuring chicken and crispy bacon.",
		client = {
			image = "cali_chicken_bacon.png",
		}
	},
	["chicken_club_sandwich"] = {
		label = "Chicken Club Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A triple-layered club sandwich featuring chicken, bacon, and fresh veggies.",
		client = {
			image = "chicken_club_sandwich.png",
		}
	},
	["fresh_citrus_delight"] = {
		label = "Fresh Citrus Delight",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing blend of citrus flavors that invigorates the senses.",
		client = {
			image = "fresh_citrus_delight.png",
		}
	},
	["p_chicken_alfredo"] = {
		label = "Chicken Alfredo",
		weight = 100,
		stack = true,
		close = true,
		description = "A creamy pasta dish with succulent chicken and rich Alfredo sauce.",
		client = {
			image = "p_chicken_alfredo.png",
		}
	},
	["karaoke_earrings"] = {
		label = "Karaoke Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Fun and vibrant earrings perfect for karaoke nights.",
		client = {
			image = "karaoke_earrings.png",
		}
	},
	["golden_flake_croissant"] = {
		label = "CROISSANT",
		weight = 100,
		stack = true,
		close = true,
		description = "A flaky, buttery croissant with a perfectly golden crust.",
		client = {
			image = "golden_flake_croissant.png",
		}
	},
	["blazing_hot_wings"] = {
		label = "Blazing Hot Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "Extra spicy wings that bring the heat with every bite.",
		client = {
			image = "blazing_hot_wings.png",
		}
	},
	["berry_muffin_joint"] = {
		label = "Berry Muffin Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "berry_muffin_joint.png",
		}
	},
	["cafe_tequila"] = {
		label = "Tequila",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_tequila.png",
		}
	},
	["slim_cola"] = {
		label = "Slim Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A light and refreshing cola with a crisp taste.",
		client = {
			image = "slim_cola.png",
		}
	},
	["weed_pot"] = {
		label = "Weed Pot",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "weed_pot.png",
		}
	},
	["hightimebrownies"] = {
		label = "HighTime Brownies",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "hightimebrownies.png",
		}
	},
	["mild_tenders_bundle"] = {
		label = "10Pc Mild Tenders Bundle",
		weight = 100,
		stack = true,
		close = true,
		description = "A bundle of 10 mild chicken tenders, perfect for a satisfying meal.",
		client = {
			image = "mild_tenders_bundle.png",
		}
	},
	["mc_hot_chocolate"] = {
		label = "Hot Chocolate",
		weight = 100,
		stack = true,
		close = true,
		description = "A rich and warming hot chocolate, ideal for a chilly day.",
		client = {
			image = "mc_hot_chocolate.png",
		}
	},
	["garlic_parm_wings"] = {
		label = "Garlic Parm Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "Wings tossed in a savory garlic parmesan sauce.",
		client = {
			image = "garlic_parm_wings.png",
		}
	},
	["fried_scallops"] = {
		label = "Fried Scallops",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy fried scallops with a golden, crunchy exterior.",
		client = {
			image = "fried_scallops.png",
		}
	},
	["bacon_ham_sausage"] = {
		label = "Fully Loaded Bacon Ham Sausage",
		weight = 100,
		stack = true,
		close = true,
		description = "A fully loaded creation combining bacon, ham, and sausage for a meaty treat.",
		client = {
			image = "bacon_ham_sausage.png",
		}
	},
	["coals"] = {
		label = "Shisha Coals",
		weight = 300,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "coals.png",
		}
	},
	["double_sausage_croissant_sandwich"] = {
		label = "Double Sausage Croissant Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty sandwich with double the savory sausage in a flaky croissant.",
		client = {
			image = "double_sausage_croissant_sandwich.png",
		}
	},
	["spicy_crispy_chicken_sandwich"] = {
		label = "Spicy Crispy Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A fiery chicken sandwich with a crispy exterior and a spicy kick.",
		client = {
			image = "spicy_crispy_chicken_sandwich.png",
		}
	},
	["thigh_bites_combo"] = {
		label = "LARGE THIGH BITES COMBO",
		weight = 100,
		stack = true,
		close = true,
		description = "A combo featuring large, savory thigh bites with sides.",
		client = {
			image = "thigh_bites_combo.png",
		}
	},
	["lobster_bisque"] = {
		label = "Lobster Bisque",
		weight = 100,
		stack = true,
		close = true,
		description = "A rich and creamy bisque loaded with the flavor of fresh lobster.",
		client = {
			image = "lobster_bisque.png",
		}
	},
	["italian_sausage_marinara"] = {
		label = "Italian Sausage Marinara",
		weight = 100,
		stack = true,
		close = true,
		description = "A zesty pasta dish featuring spicy Italian sausage in a marinara sauce.",
		client = {
			image = "italian_sausage_marinara.png",
		}
	},
	["crowex_black"] = {
		label = "Crowex Black",
		weight = 100,
		stack = true,
		close = true,
		description = "Sleek black jewelry from Crowex with bold design.",
		client = {
			image = "crowex_black.png",
		}
	},
	["peach_cobbler"] = {
		label = "Peach Cobbler",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "peach_cobbler.png",
		}
	},
	["shrimp_and_crab_dip"] = {
		label = "Shrimp & Crab Dip",
		weight = 100,
		stack = true,
		close = true,
		description = "A delectable dip combining succulent shrimp and crab with savory spices.",
		client = {
			image = "shrimp_and_crab_dip.png",
		}
	},
	["cafe_mintleaves"] = {
		label = "Mint Leaves",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_mintleaves.png",
		}
	},
	["chocolate_milk"] = {
		label = "Chocolate Milk",
		weight = 100,
		stack = true,
		close = true,
		description = "Rich and creamy chocolate milk for a sweet, satisfying sip.",
		client = {
			image = "chocolate_milk.png",
		}
	},
	["boss_blend"] = {
		label = "Boss Blend",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "boss_blend.png",
		}
	},
	["citrus_crumble"] = {
		label = "Citrus Crumble",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "citrus_crumble.png",
		}
	},
	["wild_feline"] = {
		label = "Wild Feline",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "wild_feline.png",
		}
	},
	["snowberry_gelato_joint"] = {
		label = "Snowberry Gelato Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "snowberry_gelato_joint.png",
		}
	},
	["red_beans_rice"] = {
		label = "Regular Red Beans & Rice",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic red beans & rice dish with a robust, savory flavor.",
		client = {
			image = "red_beans_rice.png",
		}
	},
	["sausage_burrito"] = {
		label = "Sausage Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty burrito filled with savory sausage and flavorful ingredients.",
		client = {
			image = "sausage_burrito.png",
		}
	},
	["double_bacon_cheeseburger"] = {
		label = "Double Bacon Cheeseburger",
		weight = 100,
		stack = true,
		close = true,
		description = "A double burger featuring crispy bacon and oozing cheese for extra flavor.",
		client = {
			image = "double_bacon_cheeseburger.png",
		}
	},
	["amber_brew_tea"] = {
		label = "TEA",
		weight = 100,
		stack = true,
		close = true,
		description = "A warm cup of amber brew tea with a soothing aroma.",
		client = {
			image = "amber_brew_tea.png",
		}
	},
	["green_stone"] = {
		label = "Green Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "A vibrant green stone radiating natural beauty.",
		client = {
			image = "green_stone.png",
		}
	},
	["crispy_wrap_supreme_meal"] = {
		label = "Crispy Wrap Supreme Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "A complete meal featuring a crispy wrap loaded with flavor.",
		client = {
			image = "crispy_wrap_supreme_meal.png",
		}
	},
	["pacific_veggie"] = {
		label = "Pacific Veggie",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing pizza featuring a bounty of fresh vegetables.",
		client = {
			image = "pacific_veggie.png",
		}
	},
	["cafe_sodawater"] = {
		label = "Soda Water",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_sodawater.png",
		}
	},
	["frozen_citrus_smoothie"] = {
		label = "Frozen Citrus Smoothie",
		weight = 100,
		stack = true,
		close = true,
		description = "A chilled citrus smoothie that bursts with refreshing flavors.",
		client = {
			image = "frozen_citrus_smoothie.png",
		}
	},
	["hot_chicken_wrap"] = {
		label = "Hot Chicken Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "A spicy and satisfying wrap filled with tender chicken.",
		client = {
			image = "hot_chicken_wrap.png",
		}
	},
	["classic_dark_americano"] = {
		label = "AMERICANO",
		weight = 100,
		stack = true,
		close = true,
		description = "A strong and bold Americano to awaken your senses.",
		client = {
			image = "classic_dark_americano.png",
		}
	},
	["hex_gold"] = {
		label = "Hex Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "A gold chain with hexagonal accents for a modern look.",
		client = {
			image = "hex_gold.png",
		}
	},
	["egg_cheese_muffin"] = {
		label = "Egg & Cheese Muffin",
		weight = 100,
		stack = true,
		close = true,
		description = "A fluffy muffin with melted cheese and perfectly cooked egg.",
		client = {
			image = "egg_cheese_muffin.png",
		}
	},
	["weedlicense"] = {
		label = "WEED LICENSE",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "weedlicense.png",
		}
	},
	["supreme_crunch_taco"] = {
		label = "Supreme Crunch Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "A taco that combines crunch and supreme toppings for bold flavor.",
		client = {
			image = "supreme_crunch_taco.png",
		}
	},
	["spice_pooch"] = {
		label = "Spice Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "spice_pooch.png",
		}
	},
	["rotisserie_wings"] = {
		label = "Rotisserie Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "Wings cooked to perfection on a rotisserie for a smoky flavor.",
		client = {
			image = "rotisserie_wings.png",
		}
	},
	["zomo_cream"] = {
		label = "Acai Cream Zomo",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "zomo_cream.png",
		}
	},
	["tropical_chicken_salad"] = {
		label = "Tropical Chicken Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing salad with grilled chicken and tropical fruits.",
		client = {
			image = "tropical_chicken_salad.png",
		}
	},
	["grain_cream_joint"] = {
		label = "Grain Cream Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "grain_cream_joint.png",
		}
	},
	["salmon_caesar_salad"] = {
		label = "Salmon Caesar Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A twist on the classic Caesar with grilled salmon replacing chicken.",
		client = {
			image = "salmon_caesar_salad.png",
		}
	},
	["soft_serve_cone"] = {
		label = "Soft Serve Cone",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic soft serve ice cream cone for a sweet, refreshing treat.",
		client = {
			image = "soft_serve_cone.png",
		}
	},
	["double_cup"] = {
		label = "Double cup",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "double_cup.png",
		}
	},
	["iced_macchiatto"] = {
		label = "ICED MACCHIATO",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing iced macchiato delivering bold espresso notes.",
		client = {
			image = "iced_macchiatto.png",
		}
	},
	["blue_stone"] = {
		label = "Blue Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "A captivating blue stone with a mesmerizing hue.",
		client = {
			image = "blue_stone.png",
		}
	},
	["mini_donut_bites"] = {
		label = "Mini Donut Bites HOLE TREATS",
		weight = 100,
		stack = true,
		close = true,
		description = "Tiny donut bites that pack a delightful burst of sweetness.",
		client = {
			image = "mini_donut_bites.png",
		}
	},
	["tender_pack"] = {
		label = "24PC CRISPY TENDER PACK",
		weight = 100,
		stack = true,
		close = true,
		description = "A pack of 24 crispy tenders, perfect for sharing.",
		client = {
			image = "tender_pack.png",
		}
	},
	["vanilla_dream_cup"] = {
		label = "Vanilla Dream Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "A creamy vanilla treat served in a cup for a dreamy snack.",
		client = {
			image = "vanilla_dream_cup.png",
		}
	},
	["wild_feline_joint"] = {
		label = "Wild Feline Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "wild_feline_joint.png",
		}
	},
	["pizza_deluxe"] = {
		label = "Pizza Deluxe",
		weight = 100,
		stack = true,
		close = true,
		description = "An upscale pizza loaded with a premium mix of toppings.",
		client = {
			image = "pizza_deluxe.png",
		}
	},
	["pooch_bag"] = {
		label = "Pooch Bag",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "pooch_bag.png",
		}
	},
	["frosted_delight_joint"] = {
		label = "Frosted Delight Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "frosted_delight_joint.png",
		}
	},
	["collins_way_joint"] = {
		label = "Collins Way Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "collins_way_joint.png",
		}
	},
	["crispy_chicken_tenders"] = {
		label = "Chick-n-Strips",
		weight = 100,
		stack = true,
		close = true,
		description = "Delicious and crispy chicken tenders that are perfect for any meal.",
		client = {
			image = "crispy_chicken_tenders.png",
		}
	},
	["frosted_coffee"] = {
		label = "Frosted Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "Iced coffee with a creamy frosted finish for a cool pick-me-up.",
		client = {
			image = "frosted_coffee.png",
		}
	},
	["brown_scramble_bowl"] = {
		label = "Brown Scramble Bowl",
		weight = 100,
		stack = true,
		close = true,
		description = "A nourishing bowl of scrambled eggs paired with fresh veggies.",
		client = {
			image = "brown_scramble_bowl.png",
		}
	},
	["al_fakher"] = {
		label = "Al Fakher Two Apples",
		weight = 250,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "al_fakher.png",
		}
	},
	["supreme_breakfast_burrito"] = {
		label = "Supreme Breakfast Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "A burrito loaded with all your favorite breakfast ingredients for a supreme start.",
		client = {
			image = "supreme_breakfast_burrito.png",
		}
	},
	["zen_blend"] = {
		label = "Zen Blend",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "zen_blend.png",
		}
	},
	["hot_coals"] = {
		label = "Hot Coals",
		weight = 300,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "hot_coals.png",
		}
	},
	["boneless_meal_deal"] = {
		label = "Boneless Meal Deal",
		weight = 100,
		stack = true,
		close = true,
		description = "A meal deal featuring boneless wings and tasty sides.",
		client = {
			image = "boneless_meal_deal.png",
		}
	},
	["sausage_biscuit"] = {
		label = "Sausage Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "A savory biscuit loaded with a flavorful sausage patty.",
		client = {
			image = "sausage_biscuit.png",
		}
	},
	["fireid"] = {
		label = "FIREFIGHTER",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "fireid.png",
		}
	},
	["spiced_crumble"] = {
		label = "Spiced Crumble",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "spiced_crumble.png",
		}
	},
	["sourdough_breakfast_sandwich"] = {
		label = "ICED CAPPUCCINO",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty sourdough breakfast sandwich loaded with flavor.",
		client = {
			image = "sourdough_breakfast_sandwich.png",
		}
	},
	["baby_lobster_pasta"] = {
		label = "Baby Lobster Pasta",
		weight = 100,
		stack = true,
		close = true,
		description = "A delicate pasta dish featuring tender baby lobster pieces.",
		client = {
			image = "baby_lobster_pasta.png",
		}
	},
	["apple_juice"] = {
		label = "Honest Kids Apple Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "A wholesome apple juice made with real, crisp apples.",
		client = {
			image = "apple_juice.png",
		}
	},
	["mc_flurry_candies"] = {
		label = "Flurry Candies",
		weight = 100,
		stack = true,
		close = true,
		description = "A sweet twist on the classic flurry, mixed with colorful candies.",
		client = {
			image = "mc_flurry_candies.png",
		}
	},
	["small_hash_browns"] = {
		label = "Small Hash Browns",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy, golden hash browns in a perfectly sized small serving.",
		client = {
			image = "small_hash_browns.png",
		}
	},
	["cafe_coffeebean"] = {
		label = "Coffee Bean",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_coffeebean.png",
		}
	},
	["chicken_parm"] = {
		label = "Chicken Parm",
		weight = 100,
		stack = true,
		close = true,
		description = "A comforting dish featuring breaded chicken smothered in marinara and cheese.",
		client = {
			image = "chicken_parm.png",
		}
	},
	["necklace_family"] = {
		label = "Necklace Family",
		weight = 100,
		stack = true,
		close = true,
		description = "A family-themed necklace symbolizing unity.",
		client = {
			image = "necklace_family.png",
		}
	},
	["double_quarter_combo"] = {
		label = "Double Quarter Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty combo featuring double quarter-pound burgers with sides.",
		client = {
			image = "double_quarter_combo.png",
		}
	},
	["wing_combo"] = {
		label = "LARGE 10 PC WING COMBO",
		weight = 100,
		stack = true,
		close = true,
		description = "A large combo featuring 10 crispy wings with sides.",
		client = {
			image = "wing_combo.png",
		}
	},
	["crowex_brown"] = {
		label = "Crowex Brown",
		weight = 100,
		stack = true,
		close = true,
		description = "A rich brown accessory from Crowex with classic style.",
		client = {
			image = "crowex_brown.png",
		}
	},
	["sugar_free_root_beer"] = {
		label = "Sugar Free Root Beer",
		weight = 100,
		stack = true,
		close = true,
		description = "A sugar-free version of root beer that delivers all the classic taste without the sugar.",
		client = {
			image = "sugar_free_root_beer.png",
		}
	},
	["strawberry_watermelon_slushie"] = {
		label = "Strawberry Watermelon Slushie",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing slushie blending sweet strawberry with cool watermelon.",
		client = {
			image = "strawberry_watermelon_slushie.png",
		}
	},
	["raw_lean"] = {
		label = "Lean ingredients",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "raw_lean.png",
		}
	},
	["laundrycard"] = {
		label = "Laundry Card",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "laundrycard.png",
		}
	},
	["double_cheeseburger"] = {
		label = "Double Cheeseburger",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic double cheeseburger with two juicy patties and melted cheese.",
		client = {
			image = "double_cheeseburger.png",
		}
	},
	["popcorn_shrimp"] = {
		label = "1/4 Popcorn Shrimp Medium Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium combo featuring a quarter portion of crispy popcorn shrimp.",
		client = {
			image = "popcorn_shrimp.png",
		}
	},
	["medium_sweet_tea"] = {
		label = "Medium Sweet Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "A perfectly balanced medium sweet tea for a refreshing sip.",
		client = {
			image = "medium_sweet_tea.png",
		}
	},
	["diagold_earrings"] = {
		label = "Diagold Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Gold-infused earrings with a diagold design.",
		client = {
			image = "diagold_earrings.png",
		}
	},
	["nugget_kids"] = {
		label = "Nuggets Kids",
		weight = 100,
		stack = true,
		close = true,
		description = "A kid-friendly portion of crispy chicken nuggets, perfectly sized.",
		client = {
			image = "nugget_kids.png",
		}
	},
	["glacatti"] = {
		label = "Glacatti",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "glacatti.png",
		}
	},
	["empty_lean_bottle"] = {
		label = "Empty Lean Bottle",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "empty_lean_bottle.png",
		}
	},
	["small_classic_fries"] = {
		label = "Small Classic Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "A small serving of perfectly seasoned classic fries.",
		client = {
			image = "small_classic_fries.png",
		}
	},
	["crunchytaco"] = {
		label = "Crunchy Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "A crunchy taco with a crisp shell and savory filling.",
		client = {
			image = "crunchytaco.png",
		}
	},
	["citrus_refresh_lemonade"] = {
		label = "Citrus Refresh Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "A tangy lemonade that offers a burst of refreshing citrus.",
		client = {
			image = "citrus_refresh_lemonade.png",
		}
	},
	["el_patron"] = {
		label = "Chaos El Patron",
		weight = 10,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "el_patron.png",
		}
	},
	["packaged_tea"] = {
		label = "PACKAGED TEA",
		weight = 100,
		stack = true,
		close = true,
		description = "Packaged tea perfect for a soothing and portable refreshment.",
		client = {
			image = "packaged_tea.png",
		}
	},
	["cheese_sauce"] = {
		label = "CHEESE SAUCE",
		weight = 100,
		stack = true,
		close = true,
		description = "Rich, creamy cheese sauce perfect for dipping or drizzling.",
		client = {
			image = "cheese_sauce.png",
		}
	},
	["elegant_porcelain"] = {
		label = "Elegant Porcelain",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "elegant_porcelain.png",
		}
	},
	["kushkrisps"] = {
		label = "Kush Krisps",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "kushkrisps.png",
		}
	},
	["big_fish"] = {
		label = "Big Fish",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty fish fillet cooked to perfection for seafood lovers.",
		client = {
			image = "big_fish.png",
		}
	},
	["mozzarella_sticks"] = {
		label = "Mozzarella Sticks",
		weight = 100,
		stack = true,
		close = true,
		description = "Fried mozzarella sticks with a melty, cheesy center.",
		client = {
			image = "mozzarella_sticks.png",
		}
	},
	["chicken_egg_cheese"] = {
		label = "Chicken, Egg & Cheese Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "A savory biscuit loaded with tender chicken, egg, and cheese.",
		client = {
			image = "chicken_egg_cheese.png",
		}
	},
	["steak_and_lobster_meal"] = {
		label = "Steak & Lobster Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "A luxurious meal featuring a juicy steak paired with tender lobster.",
		client = {
			image = "steak_and_lobster_meal.png",
		}
	},
	["sausage_egg_cheese"] = {
		label = "Sausage, Egg & Cheese Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty biscuit filled with savory sausage, egg, and cheese.",
		client = {
			image = "sausage_egg_cheese.png",
		}
	},
	["mellow_soda"] = {
		label = "Mellow Soda",
		weight = 100,
		stack = true,
		close = true,
		description = "A smooth, mellow soda with a gentle and refreshing taste.",
		client = {
			image = "mellow_soda.png",
		}
	},
	["mc_vanilla_shake"] = {
		label = "Vanilla Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "A smooth and creamy vanilla shake for a sweet treat.",
		client = {
			image = "mc_vanilla_shake.png",
		}
	},
	["tequila_lime_margarita"] = {
		label = "Tequila Lime Margarita",
		weight = 100,
		stack = true,
		close = true,
		description = "A tangy margarita with tequila and a zesty hint of lime.",
		client = {
			image = "tequila_lime_margarita.png",
		}
	},
	["golden_crumble"] = {
		label = "Golden Crumble",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "golden_crumble.png",
		}
	},
	["4play"] = {
		label = "4Play Fantasia",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "4play.png",
		}
	},
	["refreshing_pink_lemonade"] = {
		label = "Refreshing Pink Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "A chilled pink lemonade with a refreshingly sweet and tart flavor.",
		client = {
			image = "refreshing_pink_lemonade.png",
		}
	},
	["soft_serve_cup"] = {
		label = "Soft Serve Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "A cup of creamy soft serve ice cream, perfect for dessert on the go.",
		client = {
			image = "soft_serve_cup.png",
		}
	},
	["spicy_chicken_burrito"] = {
		label = "Spicy Chicken Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "A burrito with spicy seasoned chicken and zesty sauce.",
		client = {
			image = "spicy_chicken_burrito.png",
		}
	},
	["chain_m"] = {
		label = "Chain M",
		weight = 100,
		stack = true,
		close = true,
		description = "A minimalistic chain M with a subtle charm.",
		client = {
			image = "chain_m.png",
		}
	},
	["bs_hamburger"] = {
		label = "Hamburger",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic hamburger made with fresh ingredients and simple flavor.",
		client = {
			image = "bs_hamburger.png",
		}
	},
	["backroots_honey"] = {
		label = "Backroots Honey",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "backroots_honey.png",
		}
	},
	["crispy_chicken_fingers"] = {
		label = "Crispy Chicken Fingers",
		weight = 100,
		stack = true,
		close = true,
		description = "Golden, crispy chicken fingers served with your favorite dipping sauce.",
		client = {
			image = "crispy_chicken_fingers.png",
		}
	},
	["cafe_redwine"] = {
		label = "Redwine",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_redwine.png",
		}
	},
	["chain_dogtag"] = {
		label = "Chain Dogtag",
		weight = 100,
		stack = true,
		close = true,
		description = "A rugged dogtag chain for a bold statement.",
		client = {
			image = "chain_dogtag.png",
		}
	},
	["berry_swirl"] = {
		label = "Berry Swirl",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "berry_swirl.png",
		}
	},
	["omlet"] = {
		label = "Omlet",
		weight = 100,
		stack = true,
		close = true,
		description = "A fluffy omlet cooked to perfection with your choice of fillings.",
		client = {
			image = "omlet.png",
		}
	},
	["cafe_whitewine"] = {
		label = "Whitewine",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_whitewine.png",
		}
	},
	["cane_mint"] = {
		label = "Tangiers Cane Mint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "cane_mint.png",
		}
	},
	["banana_backroots"] = {
		label = "Banana Backroots",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "banana_backroots.png",
		}
	},
	["bacon_king"] = {
		label = "Bacon King",
		weight = 100,
		stack = true,
		close = true,
		description = "A burger fit for royalty, loaded with crispy, flavorful bacon.",
		client = {
			image = "bacon_king.png",
		}
	},
	["chicken_carbonara"] = {
		label = "Chicken Carbonara",
		weight = 100,
		stack = true,
		close = true,
		description = "A rich and creamy pasta dish with chicken and a classic carbonara twist.",
		client = {
			image = "chicken_carbonara.png",
		}
	},
	["cafe_khusbloom"] = {
		label = "Dry Khus Bloom",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_khusbloom.png",
		}
	},
	["chicken_noodle_soup"] = {
		label = "Chicken Noodle Soup",
		weight = 100,
		stack = true,
		close = true,
		description = "A warm bowl of chicken noodle soup, ideal for chilly days.",
		client = {
			image = "chicken_noodle_soup.png",
		}
	},
	["md_ginger_ale"] = {
		label = "MD Ginger Ale",
		weight = 100,
		stack = true,
		close = true,
		description = "A smooth MD ginger ale with a perfect balance of spice and sweetness.",
		client = {
			image = "md_ginger_ale.png",
		}
	},
	["goldhex_earrings"] = {
		label = "GoldHex Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Hexagon-shaped gold earrings with modern appeal.",
		client = {
			image = "goldhex_earrings.png",
		}
	},
	["platbox_earrings"] = {
		label = "Platbox Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Platinum box-shaped earrings exuding luxury.",
		client = {
			image = "platbox_earrings.png",
		}
	},
	["fried_mushrooms"] = {
		label = "Fried Mushrooms",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy fried mushrooms seasoned with herbs and spices.",
		client = {
			image = "fried_mushrooms.png",
		}
	},
	["italian_sandwich"] = {
		label = "Italian Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A robust sandwich with classic Italian meats and cheeses.",
		client = {
			image = "italian_sandwich.png",
		}
	},
	["zen_blend_joint"] = {
		label = "Zen Blend Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "zen_blend_joint.png",
		}
	},
	["classic_chicken_sandwich"] = {
		label = "Classic Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A timeless chicken sandwich with crispy, tender chicken.",
		client = {
			image = "classic_chicken_sandwich.png",
		}
	},
	["golden_crispy_fries"] = {
		label = "Golden Crispy Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy, golden fries that are perfectly seasoned for a savory treat.",
		client = {
			image = "golden_crispy_fries.png",
		}
	},
	["fried_calamari"] = {
		label = "Fried Calamari",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy fried calamari served with a zesty dipping sauce.",
		client = {
			image = "fried_calamari.png",
		}
	},
	["crispy_chicken_sandwich"] = {
		label = "Crispy Chicken Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic crispy chicken sandwich with a perfectly crunchy coating.",
		client = {
			image = "crispy_chicken_sandwich.png",
		}
	},
	["applesauce"] = {
		label = "Applesauce",
		weight = 100,
		stack = true,
		close = true,
		description = "A serving of smooth and naturally sweet applesauce.",
		client = {
			image = "applesauce.png",
		}
	},
	["party_pack"] = {
		label = "50PC PARTY PACK",
		weight = 100,
		stack = true,
		close = true,
		description = "A massive 50-piece party pack of wings for big gatherings.",
		client = {
			image = "party_pack.png",
		}
	},
	["tropical_mango_slushie"] = {
		label = "Tropical Mango Slushie",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing slushie bursting with sweet tropical mango flavor.",
		client = {
			image = "tropical_mango_slushie.png",
		}
	},
	["sunset_secret_joint"] = {
		label = "Sunset Secret Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "sunset_secret_joint.png",
		}
	},
	["chocolate_cookie_crumble_shake"] = {
		label = "Chocolate Cookie Crumble Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "A rich chocolate shake mixed with cookie crumbles for a decadent treat.",
		client = {
			image = "chocolate_cookie_crumble_shake.png",
		}
	},
	["regular_cajun_rice"] = {
		label = "Regular Cajun Rice",
		weight = 100,
		stack = true,
		close = true,
		description = "Savory Cajun rice seasoned with a perfect blend of spices.",
		client = {
			image = "regular_cajun_rice.png",
		}
	},
	["social_smoke"] = {
		label = "Social Smoke Absolute Zero",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "social_smoke.png",
		}
	},
	["berry_muffin"] = {
		label = "Berry Muffin",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "berry_muffin.png",
		}
	},
	["nuggets_la_carte"] = {
		label = "48Pc Nuggets A la Carte",
		weight = 100,
		stack = true,
		close = true,
		description = "A massive 48-piece nuggets option served à la carte for true nugget lovers.",
		client = {
			image = "nuggets_la_carte.png",
		}
	},
	["glazed_salmon"] = {
		label = "Glazed Salmon",
		weight = 100,
		stack = true,
		close = true,
		description = "Succulent salmon glazed to perfection with a sweet, savory finish.",
		client = {
			image = "glazed_salmon.png",
		}
	},
	["double_stack_deluxe_combo"] = {
		label = "Double Stack Deluxe Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A combo meal featuring the Double Stack Deluxe with sides and a drink.",
		client = {
			image = "double_stack_deluxe_combo.png",
		}
	},
	["crispy_kale_salad"] = {
		label = "Crispy Kale Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A fresh kale salad with a satisfying crispy twist.",
		client = {
			image = "crispy_kale_salad.png",
		}
	},
	["mc_fruit_punch"] = {
		label = "Fruit Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "A bold fruit punch that delivers a burst of tropical sweetness.",
		client = {
			image = "mc_fruit_punch.png",
		}
	},
	["cinnamon_apple_pie"] = {
		label = "Cinnamon Apple Pie",
		weight = 100,
		stack = true,
		close = true,
		description = "A warm cinnamon apple pie with a delightful, spiced filling.",
		client = {
			image = "cinnamon_apple_pie.png",
		}
	},
	["earrings_sgold"] = {
		label = "Earrings SGold",
		weight = 100,
		stack = true,
		close = true,
		description = "Sophisticated gold earrings with sleek design.",
		client = {
			image = "earrings_sgold.png",
		}
	},
	["cheese_crunch_taco_wrap"] = {
		label = "Cheese Crunch Taco Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "A crunchy taco wrap filled with cheese and savory fillings.",
		client = {
			image = "cheese_crunch_taco_wrap.png",
		}
	},
	["bs_mozzarella_sticks"] = {
		label = "Mozzarella Sticks",
		weight = 100,
		stack = true,
		close = true,
		description = "Fried mozzarella sticks with a melty, cheesy center.",
		client = {
			image = "bs_mozzarella_sticks.png",
		}
	},
	["chain_richman"] = {
		label = "Chain Richman",
		weight = 100,
		stack = true,
		close = true,
		description = "An opulent chain fit for a rich man.",
		client = {
			image = "chain_richman.png",
		}
	},
	["mac_cheese"] = {
		label = "Mac & Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "Creamy and comforting macaroni and cheese that warms the soul.",
		client = {
			image = "mac_cheese.png",
		}
	},
	["clover_crunch"] = {
		label = "Clover Crunch",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "clover_crunch.png",
		}
	},
	["heroin_shot"] = {
		label = "Heroin Shot",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "heroin_shot.png",
		}
	},
	["carte_biscuit"] = {
		label = "À la Carte Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "A delicious à la carte biscuit, perfect as a side or snack.",
		client = {
			image = "carte_biscuit.png",
		}
	},
	["deluxe_soft_taco"] = {
		label = "Deluxe Soft Taco",
		weight = 100,
		stack = true,
		close = true,
		description = "A soft taco loaded with deluxe fillings for a rich taste.",
		client = {
			image = "deluxe_soft_taco.png",
		}
	},
	["french_toast_sticks"] = {
		label = "3 French Toast Sticks",
		weight = 100,
		stack = true,
		close = true,
		description = "Three crispy French toast sticks served with a drizzle of syrup.",
		client = {
			image = "french_toast_sticks.png",
		}
	},
	["chicken_family_meal"] = {
		label = "16Pc Chicken Family Meal Classic",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic 16-piece chicken family meal designed for sharing.",
		client = {
			image = "chicken_family_meal.png",
		}
	},
	["frosties_blend_joint"] = {
		label = "Frosties Blend Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "frosties_blend_joint.png",
		}
	},
	["pasta_primavera"] = {
		label = "Pasta Primavera",
		weight = 100,
		stack = true,
		close = true,
		description = "A light pasta dish bursting with fresh vegetables and herbs.",
		client = {
			image = "pasta_primavera.png",
		}
	},
	["platinum_bar"] = {
		label = "Platinum Bar",
		weight = 100,
		stack = true,
		close = true,
		description = "A sleek platinum bar exuding prestige and value.",
		client = {
			image = "platinum_bar.png",
		}
	},
	["mimosa"] = {
		label = "Mimosa",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic brunch cocktail with orange juice and sparkling wine.",
		client = {
			image = "mimosa.png",
		}
	},
	["berry_sparkle_soda"] = {
		label = "Medium Berry Sparkle Soda",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium soda sparkling with a burst of mixed berry flavors.",
		client = {
			image = "berry_sparkle_soda.png",
		}
	},
	["cookie_crumble_shake"] = {
		label = "Cookie Crumble Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "A thick shake loaded with crunchy cookie crumbles for extra texture.",
		client = {
			image = "cookie_crumble_shake.png",
		}
	},
	["mc_strawberry_shake"] = {
		label = "Strawberry Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing strawberry shake bursting with fruity flavor.",
		client = {
			image = "mc_strawberry_shake.png",
		}
	},
	["casino_earrings"] = {
		label = "Casino Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Earrings inspired by casino glamour and luck.",
		client = {
			image = "casino_earrings.png",
		}
	},
	["crispy_bacon_bites"] = {
		label = "Crispy Bacon Bites",
		weight = 100,
		stack = true,
		close = true,
		description = "Crunchy bacon bites delivering a burst of savory flavor in every piece.",
		client = {
			image = "crispy_bacon_bites.png",
		}
	},
	["choco_creme_joint"] = {
		label = "Choco Creme Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "choco_creme_joint.png",
		}
	},
	["classic_morning_brew"] = {
		label = "COFFEE",
		weight = 100,
		stack = true,
		close = true,
		description = "A robust cup of classic morning brew to kickstart your day.",
		client = {
			image = "classic_morning_brew.png",
		}
	},
	["chocolate_shake"] = {
		label = "Chocolate Shake",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic, smooth chocolate shake that is indulgently creamy.",
		client = {
			image = "chocolate_shake.png",
		}
	},
	["deluxe_crispy_sandwich_combo"] = {
		label = "Deluxe Crispy Sandwich Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A deluxe combo featuring a crispy sandwich paired with fries and a drink.",
		client = {
			image = "deluxe_crispy_sandwich_combo.png",
		}
	},
	["herbaldelightgummies"] = {
		label = "Herbal Delight Gummies",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "herbaldelightgummies.png",
		}
	},
	["max_cola"] = {
		label = "Max Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A full-flavored cola designed for maximum refreshment.",
		client = {
			image = "max_cola.png",
		}
	},
	["chain_is"] = {
		label = "Chain IS",
		weight = 100,
		stack = true,
		close = true,
		description = "An intricate IS chain piece with a unique design.",
		client = {
			image = "chain_is.png",
		}
	},
	["fries_grande"] = {
		label = "Fries Grande",
		weight = 100,
		stack = true,
		close = true,
		description = "A large serving of crispy, golden fries.",
		client = {
			image = "fries_grande.png",
		}
	},
	["xpills"] = {
		label = "X-Pills",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "xpills.png",
		}
	},
	["golden_biscuit_joint"] = {
		label = "Golden Biscuit Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "golden_biscuit_joint.png",
		}
	},
	["frosty_phantom"] = {
		label = "Frosty Phantom",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "frosty_phantom.png",
		}
	},
	["kronos_gold"] = {
		label = "Kronos Gold",
		weight = 100,
		stack = true,
		close = true,
		description = "A luxurious gold Kronos chain for a refined look.",
		client = {
			image = "kronos_gold.png",
		}
	},
	["ultimate_pepperoni"] = {
		label = "Ultimate Pepperoni",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic pepperoni pizza packed with extra slices for maximum flavor.",
		client = {
			image = "ultimate_pepperoni.png",
		}
	},
	["cinnamon_twists"] = {
		label = "Cinnamon Twists",
		weight = 100,
		stack = true,
		close = true,
		description = "Twisted pastry sticks dusted with cinnamon sugar.",
		client = {
			image = "cinnamon_twists.png",
		}
	},
	["adalya_love"] = {
		label = "Adalya Love 66",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "adalya_love.png",
		}
	},
	["pure_runs_joint"] = {
		label = "Pure Runs Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "pure_runs_joint.png",
		}
	},
	["choco_creme"] = {
		label = "Choco Creme",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "choco_creme.png",
		}
	},
	["hary_payton_joint"] = {
		label = "Hary Payton Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "hary_payton_joint.png",
		}
	},
	["cheesy_burger_feast"] = {
		label = "Cheesy Burger Feast",
		weight = 100,
		stack = true,
		close = true,
		description = "A burger feast loaded with layers of melty, delicious cheese.",
		client = {
			image = "cheesy_burger_feast.png",
		}
	},
	["red_stone"] = {
		label = "Red Stone",
		weight = 100,
		stack = true,
		close = true,
		description = "A bold red stone with intense, fiery color.",
		client = {
			image = "red_stone.png",
		}
	},
	["egg_cheese_biscuit"] = {
		label = "Egg Cheese Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "A satisfying biscuit loaded with egg and melted cheese.",
		client = {
			image = "egg_cheese_biscuit.png",
		}
	},
	["cheesy_beef_nachos"] = {
		label = "Cheesy Beef Nachos",
		weight = 100,
		stack = true,
		close = true,
		description = "A loaded plate of nachos topped with seasoned beef and melted cheese.",
		client = {
			image = "cheesy_beef_nachos.png",
		}
	},
	["supreme_taco_flatbread"] = {
		label = "Supreme Taco Flatbread",
		weight = 100,
		stack = true,
		close = true,
		description = "A flatbread pizza with bold taco flavors and fresh toppings.",
		client = {
			image = "supreme_taco_flatbread.png",
		}
	},
	["peppermint_shake"] = {
		label = "Trifecta Blonde Peppermint Shake",
		weight = 10,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "peppermint_shake.png",
		}
	},
	["taco_regular"] = {
		label = "Taco Regular",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic taco with a balanced mix of meat, cheese, and salsa.",
		client = {
			image = "taco_regular.png",
		}
	},
	["backroots_creamy_blend"] = {
		label = "Backroots Creamy Blend",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "backroots_creamy_blend.png",
		}
	},
	["chicken_burrito"] = {
		label = "Chicken Burrito",
		weight = 100,
		stack = true,
		close = true,
		description = "A large burrito stuffed with tender chicken and fresh ingredients.",
		client = {
			image = "chicken_burrito.png",
		}
	},
	["cheesy_black_bean"] = {
		label = "Cheesy Black Bean",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty black bean dish smothered in melted cheese.",
		client = {
			image = "cheesy_black_bean.png",
		}
	},
	["signature_chicken_box"] = {
		label = "10Pc Mild Signature Chicken Box",
		weight = 100,
		stack = true,
		close = true,
		description = "A 10-piece mild signature chicken box that delivers classic flavor.",
		client = {
			image = "signature_chicken_box.png",
		}
	},
	["empty_cup"] = {
		label = "Lean cup",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "empty_cup.png",
		}
	},
	["cobb_salad"] = {
		label = "Cobb Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A fresh and filling Cobb salad loaded with classic ingredients.",
		client = {
			image = "cobb_salad.png",
		}
	},
	["latte"] = {
		label = "Latte",
		weight = 100,
		stack = true,
		close = true,
		description = "A smooth, creamy latte with a rich espresso flavor.",
		client = {
			image = "latte.png",
		}
	},
	["buffalo_ranch_fries"] = {
		label = "BUFFALO RANCH FRIES",
		weight = 100,
		stack = true,
		close = true,
		description = "Fries tossed in a tangy buffalo and ranch blend.",
		client = {
			image = "buffalo_ranch_fries.png",
		}
	},
	["medium_light_cola"] = {
		label = "Medium Light Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium serving of light cola with a crisp, refreshing finish.",
		client = {
			image = "medium_light_cola.png",
		}
	},
	["bugdetector"] = {
		label = "Bug Detector",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "bugdetector.png",
		}
	},
	["roseymary_gin_fizz"] = {
		label = "Roseymary Gin Fizz",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing gin fizz with a hint of rosemary.",
		client = {
			image = "roseymary_gin_fizz.png",
		}
	},
	["waffle_potato_chips"] = {
		label = "Waffle Potato Chips",
		weight = 100,
		stack = true,
		close = true,
		description = "Crunchy waffle-cut potato chips with a unique texture.",
		client = {
			image = "waffle_potato_chips.png",
		}
	},
	["meth_pooch"] = {
		label = "Meth Pooch",
		weight = 100,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "meth_pooch.png",
		}
	},
	["orange_juice"] = {
		label = "Orange Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "Freshly squeezed orange juice packed with natural vitamin C.",
		client = {
			image = "orange_juice.png",
		}
	},
	["cold_brew"] = {
		label = "COLD BREW",
		weight = 100,
		stack = true,
		close = true,
		description = "Smooth and refreshing cold brew for a cool pick-me-up.",
		client = {
			image = "cold_brew.png",
		}
	},
	["quesadilla"] = {
		label = "Quesadilla",
		weight = 100,
		stack = true,
		close = true,
		description = "A grilled tortilla filled with melted cheese and savory fillings.",
		client = {
			image = "quesadilla.png",
		}
	},
	["peach_milkshake"] = {
		label = "Peach Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "A creamy milkshake infused with the sweet taste of fresh peaches.",
		client = {
			image = "peach_milkshake.png",
		}
	},
	["cafe_limejuice"] = {
		label = "Lime juice",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_limejuice.png",
		}
	},
	["chickenwings_dips"] = {
		label = "DIPS",
		weight = 100,
		stack = true,
		close = true,
		description = "A selection of flavorful dipping sauces for your wings.",
		client = {
			image = "chickenwings_dips.png",
		}
	},
	["spicy_burrito_fiesta"] = {
		label = "Spicy Burrito Fiesta",
		weight = 100,
		stack = true,
		close = true,
		description = "A festive burrito bursting with spicy, lively flavors.",
		client = {
			image = "spicy_burrito_fiesta.png",
		}
	},
	["graba_wrap"] = {
		label = "Graba Wrap",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "graba_wrap.png",
		}
	},
	["bacon_egg_cheese"] = {
		label = "Bacon Egg Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty breakfast sandwich loaded with bacon, egg, and cheese.",
		client = {
			image = "bacon_egg_cheese.png",
		}
	},
	["philly_cheese_sandwich"] = {
		label = "Philly Cheese Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A satisfying sandwich with thinly sliced steak and melted cheese.",
		client = {
			image = "philly_cheese_sandwich.png",
		}
	},
	["tropical_fruit_blast"] = {
		label = "Tropical Fruit Blast",
		weight = 100,
		stack = true,
		close = true,
		description = "A tropical drink bursting with an exotic mix of fruit flavors.",
		client = {
			image = "tropical_fruit_blast.png",
		}
	},
	["foil"] = {
		label = "Foil Paper",
		weight = 150,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "foil.png",
		}
	},
	["bites_group_pack"] = {
		label = "THIGH BITES GROUP PACK",
		weight = 100,
		stack = true,
		close = true,
		description = "A group pack of crispy thigh bites, ideal for parties.",
		client = {
			image = "bites_group_pack.png",
		}
	},
	["pure_cone_king"] = {
		label = "Pure Cone King",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "pure_cone_king.png",
		}
	},
	["strawberry_lemonade"] = {
		label = "Chilled Strawberry Lemonade",
		weight = 100,
		stack = true,
		close = true,
		description = "A chilled strawberry lemonade bursting with fruity flavor.",
		client = {
			image = "strawberry_lemonade.png",
		}
	},
	["citrus_burst_soda"] = {
		label = "Ice Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A chilled cola with an intense burst of citrus flavor.",
		client = {
			image = "citrus_burst_soda.png",
		}
	},
	["mini_chicken_bites"] = {
		label = "Chick-n-Minis",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy mini chicken bites that make for a quick, satisfying snack.",
		client = {
			image = "mini_chicken_bites.png",
		}
	},
	["boneless_wings"] = {
		label = "BONELESS WINGS",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy boneless wings served with a tangy dipping sauce.",
		client = {
			image = "boneless_wings.png",
		}
	},
	["sweat_tea_sangria"] = {
		label = "Sweat Tea Sangria",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing twist on sangria made with sweet tea.",
		client = {
			image = "sweat_tea_sangria.png",
		}
	},
	["chicken_caesar_salad"] = {
		label = "Chicken Caesar Salad",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic Caesar salad topped with grilled chicken and crunchy croutons.",
		client = {
			image = "chicken_caesar_salad.png",
		}
	},
	["pearl"] = {
		label = "Pearl",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic pearl, timeless and elegant.",
		client = {
			image = "pearl.png",
		}
	},
	["chicken_and_waffles"] = {
		label = "Chicken & Waffles",
		weight = 100,
		stack = true,
		close = true,
		description = "A delightful combination of crispy chicken and fluffy waffles.",
		client = {
			image = "chicken_and_waffles.png",
		}
	},
	["collins_way"] = {
		label = "Collins Way",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "collins_way.png",
		}
	},
	["foil_poked"] = {
		label = "Foil Poked",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "foil_poked.png",
		}
	},
	["spicy_cajun_fries"] = {
		label = "Spicy Cajun Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "Fries tossed in a spicy Cajun seasoning for an extra kick.",
		client = {
			image = "spicy_cajun_fries.png",
		}
	},
	["biscuits_gravy"] = {
		label = "Biscuits Gravy",
		weight = 100,
		stack = true,
		close = true,
		description = "Fluffy biscuits smothered in rich, savory gravy.",
		client = {
			image = "biscuits_gravy.png",
		}
	},
	["pearls_coffee"] = {
		label = "Pearls Coffee",
		weight = 100,
		stack = true,
		close = true,
		description = "A distinctive coffee blend with a unique, rich aroma.",
		client = {
			image = "pearls_coffee.png",
		}
	},
	["meal_for_two"] = {
		label = "15PC MEAL FOR 2",
		weight = 100,
		stack = true,
		close = true,
		description = "A 15-piece meal designed for two, perfect for sharing.",
		client = {
			image = "meal_for_two.png",
		}
	},
	["buttermilk_biscuit"] = {
		label = "Fully Loaded Buttermilk",
		weight = 100,
		stack = true,
		close = true,
		description = "A rich buttermilk biscuit packed with savory fillings for a hearty bite.",
		client = {
			image = "buttermilk_biscuit.png",
		}
	},
	["classic_Root_beer"] = {
		label = "Classic Root Beer",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic root beer with a smooth, nostalgic flavor.",
		client = {
			image = "classic_Root_beer.png",
		}
	},
	["buffalo_chicken"] = {
		label = "Buffalo Chicken",
		weight = 100,
		stack = true,
		close = true,
		description = "A spicy pizza with tangy buffalo chicken and cooling ranch drizzle.",
		client = {
			image = "buffalo_chicken.png",
		}
	},
	["hot_fudge_sundae"] = {
		label = "Hot Fudge Sundae",
		weight = 100,
		stack = true,
		close = true,
		description = "A decadent sundae drizzled with warm hot fudge for dessert delight.",
		client = {
			image = "hot_fudge_sundae.png",
		}
	},
	["bounce_blend"] = {
		label = "Bounce Blend",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "bounce_blend.png",
		}
	},
	["fluffy_crunch"] = {
		label = "Fluffy Crunch",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "fluffy_crunch.png",
		}
	},
	["pomegranate_mimosa"] = {
		label = "Pomegranate Mimosa",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing twist on mimosa with pomegranate juice.",
		client = {
			image = "pomegranate_mimosa.png",
		}
	},
	["iced_matcha_latte"] = {
		label = "ICED MATCHA LATTE",
		weight = 100,
		stack = true,
		close = true,
		description = "A vibrant iced matcha latte blending earthy matcha with a hint of sweetness.",
		client = {
			image = "iced_matcha_latte.png",
		}
	},
	["fruit_cup"] = {
		label = "Fruit Cup",
		weight = 100,
		stack = true,
		close = true,
		description = "A colorful mix of fresh fruits served in a convenient cup.",
		client = {
			image = "fruit_cup.png",
		}
	},
	["breakfast_meal"] = {
		label = "Breakfast Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "A complete breakfast meal to start your day right.",
		client = {
			image = "breakfast_meal.png",
		}
	},
	["sausage_croissant_sandwich"] = {
		label = "Sausage Croissant Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A warm croissant sandwich filled with savory sausage for a satisfying bite.",
		client = {
			image = "sausage_croissant_sandwich.png",
		}
	},
	["deluxe_sandwich"] = {
		label = "Deluxe Sandwich",
		weight = 100,
		stack = true,
		close = true,
		description = "A premium sandwich loaded with a variety of top-notch ingredients.",
		client = {
			image = "deluxe_sandwich.png",
		}
	},
	["crab_legs_meal"] = {
		label = "Crab Legs Meal",
		weight = 100,
		stack = true,
		close = true,
		description = "A sumptuous meal featuring tender crab legs served with melted butter.",
		client = {
			image = "crab_legs_meal.png",
		}
	},
	["crisp_gelato"] = {
		label = "Crisp Gelato",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "crisp_gelato.png",
		}
	},
	["homestyle_mac_cheese"] = {
		label = "Regular Homestyle Mac & Cheese",
		weight = 100,
		stack = true,
		close = true,
		description = "Comforting homestyle mac & cheese with a creamy, cheesy sauce.",
		client = {
			image = "homestyle_mac_cheese.png",
		}
	},
	["double_apple"] = {
		label = "Nakhla Double Apple",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "double_apple.png",
		}
	},
	["chicken_bundle"] = {
		label = "11Pc Chicken Bundle",
		weight = 100,
		stack = true,
		close = true,
		description = "An 11-piece chicken bundle that’s perfect for sharing.",
		client = {
			image = "chicken_bundle.png",
		}
	},
	["morning_muffins"] = {
		label = "MUFFINS",
		weight = 100,
		stack = true,
		close = true,
		description = "Soft, freshly baked muffins to brighten your early hours.",
		client = {
			image = "morning_muffins.png",
		}
	},
	["tangy_fuel_joint"] = {
		label = "Tangy Fuel Joint",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "tangy_fuel_joint.png",
		}
	},
	["bbq_double_burger"] = {
		label = "BBQ Double Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "A double burger infused with smoky BBQ flavor for a hearty bite.",
		client = {
			image = "bbq_double_burger.png",
		}
	},
	["mediterranean_veggie"] = {
		label = "Mediterranean Veggie",
		weight = 100,
		stack = true,
		close = true,
		description = "A light and flavorful pizza featuring Mediterranean vegetables and herbs.",
		client = {
			image = "mediterranean_veggie.png",
		}
	},
	["medium_citrus_burst_soda"] = {
		label = "Medium Citrus Burst Soda",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium soda bursting with vibrant citrus flavor.",
		client = {
			image = "medium_citrus_burst_soda.png",
		}
	},
	["rosy_dunes"] = {
		label = "Rosy Dunes",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "rosy_dunes.png",
		}
	},
	["upeel_shrimp"] = {
		label = "U-Peel Shrimp",
		weight = 100,
		stack = true,
		close = true,
		description = "Fun and easy-to-eat shrimp that you peel yourself for a fresh taste.",
		client = {
			image = "upeel_shrimp.png",
		}
	},
	["cafe_lemonade"] = {
		label = "Lemonade",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_lemonade.png",
		}
	},
	["cafe_champagne"] = {
		label = "Champagne",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_champagne.png",
		}
	},
	["d_fruit_punch"] = {
		label = "Fruit Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "A sweet and tangy punch that packs a fruity flavor explosion.",
		client = {
			image = "d_fruit_punch.png",
		}
	},
	["english_muffin"] = {
		label = "English Muffin",
		weight = 100,
		stack = true,
		close = true,
		description = "A freshly toasted English muffin, perfect for any time of day.",
		client = {
			image = "english_muffin.png",
		}
	},
	["hex4you_earrings"] = {
		label = "Hex4You Earrings",
		weight = 100,
		stack = true,
		close = true,
		description = "Unique hex4you earrings with edgy design.",
		client = {
			image = "hex4you_earrings.png",
		}
	},
	["preston_pearl_cigars"] = {
		label = "Preston Pearl Cigars",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "preston_pearl_cigars.png",
		}
	},
	["grain_cream"] = {
		label = "Grain Cream",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "grain_cream.png",
		}
	},
	["cajun_fries"] = {
		label = "Regular Cajun Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "Regular Cajun fries with a spicy kick and irresistible crunch.",
		client = {
			image = "cajun_fries.png",
		}
	},
	["regular_coleslaw"] = {
		label = "Regular Coleslaw",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing side of regular coleslaw with a creamy texture.",
		client = {
			image = "regular_coleslaw.png",
		}
	},
	["fresh_baked_rolls"] = {
		label = "FRESH BAKED ROLLS",
		weight = 100,
		stack = true,
		close = true,
		description = "Soft, freshly baked rolls perfect as a side.",
		client = {
			image = "fresh_baked_rolls.png",
		}
	},
	["bbq_onion_burger"] = {
		label = "BBQ Onion Burger",
		weight = 100,
		stack = true,
		close = true,
		description = "A burger topped with tangy BBQ sauce and crispy onion rings.",
		client = {
			image = "bbq_onion_burger.png",
		}
	},
	["spicy_chicken_sandwich_combo"] = {
		label = "Spicy Chicken Sandwich Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A combo meal centered around a spicy chicken sandwich with sides.",
		client = {
			image = "spicy_chicken_sandwich_combo.png",
		}
	},
	["light_cola"] = {
		label = "Light Cola",
		weight = 100,
		stack = true,
		close = true,
		description = "A refreshing, low-calorie cola with a crisp finish.",
		client = {
			image = "light_cola.png",
		}
	},
	["policeid"] = {
		label = "POLICE ID",
		weight = 100,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "policeid.png",
		}
	},
	["azure_tomyz"] = {
		label = "Azure Tomyz",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "azure_tomyz.png",
		}
	},
	["hose"] = {
		label = "Shisha Hose",
		weight = 250,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "hose.png",
		}
	},
	["tacomeet"] = {
		label = "Taco Meet",
		weight = 100,
		stack = true,
		close = true,
		description = "A hearty taco featuring a robust meat filling.",
		client = {
			image = "tacomeet.png",
		}
	},
	["garlic_parmesan_wings"] = {
		label = "Garlic Parmesan Wings",
		weight = 100,
		stack = true,
		close = true,
		description = "Crispy wings coated in garlic and parmesan for a delicious taste.",
		client = {
			image = "garlic_parmesan_wings.png",
		}
	},
	["cafe_whiterum"] = {
		label = "White Rum",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_whiterum.png",
		}
	},
	["nuggets_medium_combo"] = {
		label = "Nuggets Medium Combo",
		weight = 100,
		stack = true,
		close = true,
		description = "A medium combo featuring crispy chicken nuggets and a side of dip.",
		client = {
			image = "nuggets_medium_combo.png",
		}
	},
	["cafe_vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = false,
		description = "Your description here",
		client = {
			image = "cafe_vodka.png",
		}
	},
	["frosties_blend"] = {
		label = "Frosties Blend",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "frosties_blend.png",
		}
	},
	["apple_fizz"] = {
		label = "Apple Sparkle",
		weight = 100,
		stack = true,
		close = true,
		description = "A sparkling apple drink with a refreshing fizz.",
		client = {
			image = "apple_fizz.png",
		}
	},
	["shrimp_alfredo"] = {
		label = "Shrimp Alfredo",
		weight = 100,
		stack = true,
		close = true,
		description = "Creamy Alfredo pasta generously topped with succulent shrimp.",
		client = {
			image = "shrimp_alfredo.png",
		}
	},
	["summit_og"] = {
		label = "Summit OG",
		weight = 500,
		stack = true,
		close = true,
		description = "Your description here",
		client = {
			image = "summit_og.png",
		}
	},
	["bagel_bites_duo"] = {
		label = "Bagel Bites Duo",
		weight = 100,
		stack = true,
		close = true,
		description = "A duo of bagel bites that offer a delightful mix of textures and tastes.",
		client = {
			image = "bagel_bites_duo.png",
		}
	},
	["buttered_biscuit"] = {
		label = "Buttered Biscuit",
		weight = 100,
		stack = true,
		close = true,
		description = "A classic, comforting biscuit generously spread with butter.",
		client = {
			image = "buttered_biscuit.png",
		}
	},
	["bagel_cream_cheese"] = {
		label = "BAGELS WITH CREAM CHEESE SPREAD",
		weight = 100,
		stack = true,
		close = true,
		description = "Fresh bagels perfectly paired with a smooth cream cheese spread.",
		client = {
			image = "bagel_cream_cheese.png",
		}
	},
	["strawberry_nutella_waffles"] = {
		label = "Strawberry Nutella Waffles",
		weight = 100,
		stack = true,
		close = true,
		description = "Waffles drizzled with Nutella and topped with strawberries.",
		client = {
			image = "strawberry_nutella_waffles.png",
		}
	},
 
 	["tracking_bracelet"] = {
 		label = "Tracking Bracelet",
 		weight = 250,
 		stack = true,
 		close = true,
 		description = "Can be used for tracking a suspect",
 		client = {
 			image = "tracking_bracelet.png",
 		}
 	},
  
 	["molly"] = {
 		label = "Molly",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "molly.png",
 		}
 	},
  
 	["meth_shot"] = {
 		label = "Meth Shot",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "meth_shot.png",
 		}
 	},
  
 	["crack"] = {
 		label = "Crack",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "crack.png",
 		}
 	},
  
 	["ergot"] = {
 		label = "Ergot",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "ergot.png",
 		}
 	},
  
 	["acamprosate"] = {
 		label = "Acamprosate",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "acamprosate.png",
 		}
 	},
  
 	["blacklightning"] = {
 		label = "Black Lightning",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "blacklightning.png",
 		}
 	},
  
 	["shroom_pouch"] = {
 		label = "Shroom Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "shroom_pouch.png",
 		}
 	},
  
 	["oxycodone"] = {
 		label = "Oxycodone",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "oxycodone.png",
 		}
 	},
  
 	["spice_joint"] = {
 		label = "Spice Joint",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "spice_joint.png",
 		}
 	},
  
 	["lofexidine"] = {
 		label = "Lofexidine",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "lofexidine.png",
 		}
 	},
  
 	["codeine"] = {
 		label = "Codeine",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "codeine.png",
 		}
 	},
  
 	["opium_pouch"] = {
 		label = "Opium Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "opium_pouch.png",
 		}
 	},
  
 	["blacktar"] = {
 		label = "Black Tar Heroin",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "blacktar.png",
 		}
 	},
  
 	["xanax_box"] = {
 		label = "Xanax Box",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "xanax_box.png",
 		}
 	},
  
 	["speedball"] = {
 		label = "Speed Ball",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "speedball.png",
 		}
 	},
  
 	["flakka_joint"] = {
 		label = "Flakka Joint",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "flakka_joint.png",
 		}
 	},
  
 	["xpill"] = {
 		label = "X-Pill",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "xpill.png",
 		}
 	},
  
 	["plastic_wrap"] = {
 		label = "Plastic Wrap",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "plastic_wrap.png",
 		}
 	},
  
 	["jolly_candy"] = {
 		label = "Jolly Candy",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "jolly_candy.png",
 		}
 	},
  
 	["dab"] = {
 		label = "DAB",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "dab.png",
 		}
 	},
  
 	["poppy_tears"] = {
 		label = "Poppy Tears",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "poppy_tears.png",
 		}
 	},
  
 	["weed_joint"] = {
 		label = "Weed Joint",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "weed_joint.png",
 		}
 	},
  
 	["sprite"] = {
 		label = "Sprite",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "sprite.png",
 		}
 	},
  
 	["acid_paper"] = {
 		label = "Acid Paper",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "acid_paper.png",
 		}
 	},
  
 	["antidote"] = {
 		label = "Antidote",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "antidote.png",
 		}
 	},
  
 	["ketamine"] = {
 		label = "Ketamine",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "ketamine.png",
 		}
 	},
  
 	["bong"] = {
 		label = "Bong",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "bong.png",
 		}
 	},
  
 	["coke_rail"] = {
 		label = "Coke Rail",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "coke_rail.png",
 		}
 	},
  
 	["lsd"] = {
 		label = "LSD",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "lsd.png",
 		}
 	},
  
 	["molly_pouch"] = {
 		label = "Molly Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "molly_pouch.png",
 		}
 	},
  
 	["perc_pouch"] = {
 		label = "Perc Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "perc_pouch.png",
 		}
 	},
  
 	["pouch_bag"] = {
 		label = "Pouch Bag",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "pouch_bag.png",
 		}
 	},
  
 	["crack_pouch"] = {
 		label = "Crack Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "crack_pouch.png",
 		}
 	},
  
 	["spice_pouch"] = {
 		label = "Spice Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "spice_pouch.png",
 		}
 	},
  
 	["cocaine"] = {
 		label = "Cocaine",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "cocaine.png",
 		}
 	},
  
 	["flakka"] = {
 		label = "Flakka",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "flakka.png",
 		}
 	},
  
 	["drugtestkit"] = {
 		label = "Drug Testkit",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "drugtestkit.png",
 		}
 	},
  
 	["steroids"] = {
 		label = "Steroids",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "steroids.png",
 		}
 	},
  
 	["burnerphone"] = {
 		label = "Burner Phone",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "burnerphone.png",
 		}
 	},
  
 	["fentanyl_pill"] = {
 		label = "Fentanyl Pill",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "fentanyl_pill.png",
 		}
 	},
  
 	["meth_pouch"] = {
 		label = "Meth Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "meth_pouch.png",
 		}
 	},
  
 	["perc"] = {
 		label = "Perc",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "perc.png",
 		}
 	},
  
 	["adderall"] = {
 		label = "Adderall",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "adderall.png",
 		}
 	},
  
 	["acid"] = {
 		label = "Acid",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "acid.png",
 		}
 	},
  
 	["heroin_brick"] = {
 		label = "Heroinbrick",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "heroin_brick.png",
 		}
 	},
  
 	["molly_tablet"] = {
 		label = "Molly Tablet",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "molly_tablet.png",
 		}
 	},
  
 	["shroom_cut"] = {
 		label = "Shroom Cut",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "shroom_cut.png",
 		}
 	},
  
 	["bathsalts"] = {
 		label = "Bath Salts",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "bathsalts.png",
 		}
 	},
  
 	["bakingsoda"] = {
 		label = "Baking Soda",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "bakingsoda.png",
 		}
 	},
  
 	["coke_pouch"] = {
 		label = "Coke Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "coke_pouch.png",
 		}
 	},
  
 	["weed_pouch"] = {
 		label = "Weed Pouch",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "weed_pouch.png",
 		}
 	},
  
 	["xanax"] = {
 		label = "Xanax",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "xanax.png",
 		}
 	},
  
 	["syriange"] = {
 		label = "Syriange",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "syriange.png",
 		}
 	},
  
 	["shroom"] = {
 		label = "Shroom",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "shroom.png",
 		}
 	},
  
 	["opium_joint"] = {
 		label = "Opium Joint",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "opium_joint.png",
 		}
 	},
  
 	["coca_leaf"] = {
 		label = "Coca Leaf",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "coca_leaf.png",
 		}
 	},
  
 	["lean"] = {
 		label = "Lean",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "lean.png",
 		}
 	},
  
 	["opium"] = {
 		label = "Opium",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "opium.png",
 		}
 	},
  
 	["angeldust"] = {
 		label = "Angel Dust",
 		weight = 100,
 		stack = true,
 		close = false,
 		description = "Your description here",
 		client = {
 			image = "angeldust.png",
 		}
 	},
  
 	["fentanyl_pills"] = {
 		label = "Fentanyl Pills",
 		weight = 100,
 		stack = true,
 		close = true,
 		description = "Your description here",
 		client = {
 			image = "fentanyl_pills.png",
 		}
 	},
  
 	["WEAPON_BLUEARP2"] = {
 		label = "ARP BLUE2 VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "ARP BLUE2 VVS",
 		client = {
 			image = "WEAPON_BLUEARP2.png",
 		}
 	},
  
 	["WEAPON_AUGVVS"] = {
 		label = "AUG BLUE VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "AUG GOLD VVS",
 		client = {
 			image = "WEAPON_AUGVVS.png",
 		}
 	},
  
 	["WEAPON_300BOVVSYELLOW"] = {
 		label = "300 BLACKOUT VVS YELLOW",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "300 BLACKOUT YELLOW",
 		client = {
 			image = "WEAPON_300BOVVSYELLOW.png",
 		}
 	},
  
 	["WEAPON_AUGVVSROSE"] = {
 		label = "AUG ROSE VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "AUG ROSE VVS",
 		client = {
 			image = "WEAPON_AUGVVSROSE.png",
 		}
 	},
  
 	["WEAPON_MP5VVSYELLOW"] = {
 		label = "MP5 YELLOW VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "MP5 YELLOW VVS",
 		client = {
 			image = "WEAPON_MP5VVSYELLOW.png",
 		}
 	},
  
 	["WEAPON_AUGVVSPINK"] = {
 		label = "AUG PINK VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "AUG PINK VVS",
 		client = {
 			image = "WEAPON_AUGVVSPINK.png",
 		}
 	},
  
 	["WEAPON_300BOVVS"] = {
 		label = "300 BLACKOUT VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "300 BLACKOUT",
 		client = {
 			image = "WEAPON_300BOVVS.png",
 		}
 	},
  
 	["WEAPON_AUGVVSYELLOW"] = {
 		label = "AUG YELLOW VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "AUG YELLOW VVS",
 		client = {
 			image = "WEAPON_AUGVVSYELLOW.png",
 		}
 	},
  
 	["WEAPON_HK33VVSYELLOW"] = {
 		label = "HK33 YELLOW VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "HK33 YELLOW VVS",
 		client = {
 			image = "WEAPON_HK33VVSYELLOW.png",
 		}
 	},
  
 	["WEAPON_MP5VVSCAMO"] = {
 		label = "MP5 CAMO VVS",
 		weight = 2000,
 		stack = false,
 		close = true,
 		description = "MP5 CAMO VVS",
 		client = {
 			image = "WEAPON_MP5VVSCAMO.png",
 		}
 	},

	--Casino--
	['casino_beer'] = {
		label = 'Casino Beer',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_burger'] = {
		label = 'casino burger',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_chips'] = {
		label = 'casino chips',
		weight = 0,
		close = true,
		consume = 0,
		stack = true,
	},
	
	['casino_coffee'] = {
		label = 'casino coffee',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_coke'] = {
		label = 'casino coke',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_donut'] = {
		label = 'casino donut',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_ego_chaser'] = {
		label = 'casino ego chaser',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_luckypotion'] = {
		label = 'casino luckypotion',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_psqs'] = {
		label = 'Casino Ps & Qs',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_sandwitch'] = {
		label = 'casino sandwitch',
		weight = 0,
		close = true,
		consume = 0,
	},
	
	['casino_sprite'] = {
		label = 'casino sprite',
		weight = 0,
		close = true,
		consume = 0,
	},

	--VAMES BARBER--
	['hair_clipper'] = {
		label = 'Hair Clipper',
		weight = 1,
		stack = true
	},

	--rahe speakers--
	['speaker'] = {
		label = 'Speaker',
		weight = 0,
		description = 'Speaker.',
		consume = 0,
		server = {
			export = 'rahe-speakers.speaker'
		}
	},

	--rahe boosting--
	['boostingtablet'] = {
		label = 'Boosting tablet',
		weight = 0,
		description = "Seems like something's installed on this.",
		client = {
		export = 'rahe-boosting.boostingtablet',
		}
	},
	['hackingdevice'] = {
		label = 'Hacking device',
		weight = 0,
		description = 'Will allow you to bypass vehicle security systems.',
		client = {
		export = 'rahe-boosting.hackingdevice',
		}
	},
	['gpshackingdevice'] = {
		label = 'GPS hacking device',
		weight = 0,
		description = 'If you wish to disable vehicle GPS systems.',
		client = {
		export = 'rahe-boosting.gpshackingdevice',
		}
	},

	--rahe racing--
	['racingtablet'] = {
		label = 'Racing tablet',
		weight = 500,
		description = 'Seems like something to do with cars.',
		stack = false,
		client = {
			export = 'rahe-racing.racingtablet',
		}
	},

	--lation detecting--
	['blue_metaldetector'] = {
		label = 'Beginner\'s Beacon',
		weight = 475
	},
	
	['green_metaldetector'] = {
		label = 'Lustrous Locator',
		weight = 475
	},
	
	['red_metaldetector'] = {
		label = 'Treasure Trove Tracker',
		weight = 475
	},
	
	['orange_metaldetector'] = {
		label = 'Goldseeker\'s Grail',
		weight = 475
	},
	
	['black_metaldetector'] = {
		label = 'Archaeo Ace',
		weight = 475
	},
	
	['md_shovel'] = {
		label = 'Shovel',
		weight = 55
	},
	
	['md_bottlecap'] = {
		label = 'Bottle Cap',
		weight = 25
	},
	
	['md_brokenjunk'] = {
		label = 'Broken Junk',
		weight = 25
	},
	
	['md_crushedcan'] = {
		label = 'Crushed Can',
		weight = 25
	},
	
	['md_lighter'] = {
		label = 'Lighter',
		weight = 25
	},
	
	['md_metalcan'] = {
		label = 'Metal Can',
		weight = 25
	},
	
	['md_nails'] = {
		label = 'Nails',
		weight = 25
	},
	
	['md_needle'] = {
		label = 'Needle',
		weight = 25
	},
	
	['md_nickle'] = {
		label = 'Nickle',
		weight = 25
	},
	
	['md_nut'] = {
		label = 'Nut',
		weight = 25
	},
	
	['md_oldshotgunshell'] = {
		label = 'Old Shotgun Shell',
		weight = 25
	},
	
	['md_paperclip'] = {
		label = 'Paper Clip',
		weight = 25
	},
	
	['md_pulltab'] = {
		label = 'Pull Tab',
		weight = 25
	},
	
	['md_quarter'] = {
		label = 'Quarter',
		weight = 25
	},
	
	['md_rustyball'] = {
		label = 'Rusty Ball',
		weight = 25
	},
	
	['md_rustyironball'] = {
		label = 'Rusty Iron Ball',
		weight = 25
	},
	
	['md_rustyjunk'] = {
		label = 'Rusty Junk',
		weight = 25
	},
	
	['md_rustynails'] = {
		label = 'Rusty Nails',
		weight = 25
	},
	
	['md_rustypliers'] = {
		label = 'Rusty Pliers',
		weight = 25
	},
	
	['md_rustyring'] = {
		label = 'Rusty Ring',
		weight = 25
	},
	
	['md_rustyscissors'] = {
		label = 'Rusty Scissors',
		weight = 25
	},
	
	['md_rustyscrewdriver'] = {
		label = 'Rusty Screwdriver',
		weight = 25
	},
	
	['md_rustyspring'] = {
		label = 'Rusty Spring',
		weight = 25
	},
	
	['md_screw'] = {
		label = 'Screw',
		weight = 25
	},
	
	['md_wheatpenny'] = {
		label = 'Wheat Penny',
		weight = 25
	},
	
	['md_ancientcoin'] = {
		label = 'Ancient Coin',
		weight = 25
	},
	
	['md_blackwatch'] = {
		label = 'Watch',
		weight = 25
	},
	
	['md_coppernugget'] = {
		label = 'Copper Nugget',
		weight = 25
	},
	
	['md_diamondearings'] = {
		label = 'Diamond Earings',
		weight = 25
	},
	
	['md_diamondnecklace'] = {
		label = 'Diamond Necklace',
		weight = 25
	},
	
	['md_diamondring'] = {
		label = 'Diamond Ring',
		weight = 25
	},
	
	['md_earpod'] = {
		label = 'Ear Pod',
		weight = 25
	},
	
	['md_golddollar'] = {
		label = 'Gold Dollar',
		weight = 25
	},
	
	['md_goldearings'] = {
		label = 'Gold Earings',
		weight = 25
	},
	
	['md_goldnecklace'] = {
		label = 'Gold Necklace',
		weight = 25
	},
	
	['md_goldnugget'] = {
		label = 'Gold Nugget',
		weight = 25
	},
	
	['md_goldounce'] = {
		label = '1oz Gold Bar',
		weight = 25
	},
	
	['md_goldring'] = {
		label = 'Gold Ring',
		weight = 25
	},
	
	['md_halfdollar'] = {
		label = 'Half Dollar',
		weight = 25
	},
	
	['md_ironnugget'] = {
		label = 'Iron Nugget',
		weight = 25
	},
	
	['md_platinumnugget'] = {
		label = 'Platinum Nugget',
		weight = 25
	},
	
	['md_presidentialwatch'] = {
		label = 'Presidential Watch',
		weight = 25
	},
	
	['md_relicrevolver'] = {
		label = 'Relic Revolver',
		weight = 25
	},
	
	['md_silverdime'] = {
		label = 'Silver Dime',
		weight = 25
	},
	
	['md_silverearings'] = {
		label = 'Silver Earings',
		weight = 25
	},
	
	['md_silverounce'] = {
		label = '1oz Silver Bar',
		weight = 25
	},
	
	['md_silverring'] = {
		label = 'Silver Ring',
		weight = 25
	},

	--rcore drunk--
	['vodka'] = {
		label = 'Vodka',
		weight = 250,
		close = true,
		consume = 0,
		client = {},
		server = {
			export = 'rcore_drunk.vodka',
		},
	},
	['beer'] = {
		label = 'beer',
		weight = 250,
		close = true,
		client = {},
		consume = 0,
		server = {
			export = 'rcore_drunk.beer',
		},
	},
	['wine'] = {
		label = 'wine',
		weight = 250,
		close = true,
		client = {},
		consume = 0,
		server = {
			export = 'rcore_drunk.wine',
		},
	},
	['whiskey'] = {
		label = 'whiskey',
		weight = 250,
		close = true,
		client = {},
		consume = 0,
		server = {
			export = 'rcore_drunk.whiskey',
		},
	},
	['breath_alcohol_tester'] = {
		label = 'breath_alcohol_tester',
		weight = 250,
		close = true,
		client = {},
		consume = 0,
		server = {
			export = 'rcore_drunk.breath_alcohol_tester',
		},
	},
	['supervodka'] = {
		label = 'supervodka',
		weight = 250,
		close = true,
		client = {},
		consume = 0,
		server = {
			export = 'rcore_drunk.supervodka',
		},
	},
 }