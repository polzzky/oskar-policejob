ESX = exports['es_extended']:getSharedObject()

local canSwat = false
function checkSwat()
    ESX.TriggerServerCallback("police:canUseSwat", function(dt)
        canSwat = dt
    end)
end

return {
	General = {
		name = 'Sklep Spożywczy',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'human_vial', price = 15 },
			{ name = 'burger', price = 2 },
			{ name = 'water', price = 2 },
			{ name = 'coffee', price = 5 },
			{ name = 'phone', price = 300 },
		}, locations = {
			vec3(25.51185, -1347.296, 29.60827),
			vec3(-3038.71, 585.9, 7.9),
			vec3(-3241.47, 1001.14, 12.83),
			vec3(1728.66, 6414.16, 35.03),
			vec3(1697.99, 4924.4, 42.06),
			vec3(1961.48, 3739.96, 32.34),
			vec3(547.79, 2671.79, 42.15),
			vec3(2679.25, 3280.12, 55.24),
			vec3(2557.94, 382.05, 108.62),
			vec3(373.55, 325.56, 103.56),
		}, targets = {
			{ loc = vec3(25.58, -1346.73, 29.5), length = 4.0, width = 0.8, heading = 0.0, minZ = 28.5, maxZ = 30.0, distance = 1.5 },
			{ loc = vec3(-3039.87, 585.36, 7.91), length = 4.0, width = 0.8, heading = 287.0, minZ = 6.91, maxZ = 8.41, distance = 1.5 },
			{ loc = vec3(-3242.75, 1001.11, 12.83), length = 4.0, width = 0.8, heading = 265.0, minZ = 11.83, maxZ = 13.33, distance = 1.5 },
			{ loc = vec3(1729.09, 6415.27, 35.04), length = 4.0, width = 0.8, heading = 153.0, minZ = 34.04, maxZ = 35.54, distance = 1.5 },
			{ loc = vec3(1698.0, 4923.69, 42.06), length = 4.0, width = 0.8, heading = 55.0, minZ = 41.06, maxZ = 42.46, distance = 1.5 },
			{ loc = vec3(1960.72, 3741.07, 32.34), length = 4.0, width = 0.8, heading = 30.0, minZ = 31.34, maxZ = 32.84, distance = 1.5 },
			{ loc = vec3(548.06, 2670.65, 42.16), length = 4.0, width = 0.8, heading = 7.0, minZ = 41.16, maxZ = 42.66, distance = 1.5 },
			{ loc = vec3(2678.09, 3280.63, 55.24), length = 4.0, width = 0.8, heading = 61.0, minZ = 54.24, maxZ = 55.74, distance = 1.5 },
			{ loc = vec3(2556.69, 381.92, 108.62), length = 4.0, width = 0.8, heading = 87.0, minZ = 107.62, maxZ = 109.12, distance = 1.5 },
			{ loc = vec3(373.74, 326.71, 103.57), length = 4.0, width = 0.8, heading = 165.0, minZ = 102.57, maxZ = 104.07, distance = 1.5 },
		}
	},

	Liquor = {
		name = 'Sklep Spożywczy',
		blip = {
			id = 59, colour = 69, scale = 0.8
		}, inventory = {
			{ name = 'human_vial', price = 15 },
			{ name = 'burger', price = 2 },
			{ name = 'water', price = 2 },
			{ name = 'coffee', price = 5 },
			{ name = 'phone', price = 300 },
		}, locations = {
			vec3(1135.01, -982.67, 46.42),
			vec3(-1222.09, -907.52, 12.33),
			vec3(-1487.02, -378.33, 40.16),
			vec3(-2967.15, 391.26, 15.04),
			vec3(1165.62, 2710.07, 38.16),
			vec3(1392.68, 3605.73, 34.98)
		}, targets = {
			{ loc = vec3(1135.01, -982.67, 46.42), length = 0.95, width = 5.2, heading = 278.0, minZ = 45.47, maxZ = 46.87, distance = 1.5 },
			{ loc = vec3(-1222.09, -907.52, 12.33), length = 0.95, width = 5.2, heading = 213.0, minZ = 11.38, maxZ = 12.78, distance = 1.5 },
			{ loc = vec3(-1487.02, -378.33, 40.16), length = 0.95, width = 5.2, heading = 315.00, minZ = 39.21, maxZ = 40.61, distance = 1.5 },
			{ loc = vec3(-2967.15, 391.26, 15.04), length = 0.95, width = 5.2, heading = 266.0, minZ = 14.09, maxZ = 15.49, distance = 1.5 },
			{ loc = vec3(1165.62, 2710.07, 38.16), length = 0.95, width = 5.2, heading = 0.0, minZ = 37.21, maxZ = 38.61, distance = 1.5 },
			{ loc = vec3(1392.68, 3605.73, 34.98), length = 0.75, width = 5.2, heading = 20.0, minZ = 34.03, maxZ = 35.43, distance = 1.5 }
		}
	},

	Gasoline = {
		name = 'Sklep Spożywczy',
		blip = {
			id = 59, colour = 69, scale = 0.5},
		inventory = {
			{ name = 'human_vial', price = 15 },
			{ name = 'burger', price = 2 },
			{ name = 'water', price = 2 },
			{ name = 'coffee', price = 5 },
			{ name = 'phone', price = 300 },
		}, locations = {
			vec3(-47.45, -1757.85, 29.42),
			vec3(1164.17, -323.21, 69.21),
			vec3(-706.73, -913.98, 19.22),
			vec3(-1820.35, 793.59, 138.12),
			vec3(1698.16, 4923.58, 42.06)
		}, targets = {
			{ loc = vec3(-47.45, -1757.85, 29.42), length = 4.0, width = 0.8, heading = 140.0, minZ = 28.42, maxZ = 29.87, distance = 1.5 },
			{ loc = vec3(1164.17, -323.21, 69.21), length = 4.0, width = 0.8, heading = 190.0, minZ = 68.21, maxZ = 69.66, distance = 1.5 },
			{ loc = vec3(-706.73, -913.98, 19.22), length = 4.0, width = 0.8, heading = 180.0, minZ = 18.22, maxZ = 19.67, distance = 1.5 },
			{ loc = vec3(-1820.35, 793.59, 138.12), length = 4.0, width = 0.8, heading = 222.0, minZ = 137.12, maxZ = 138.57, distance = 1.5 },
			{ loc = vec3(1698.16, 4923.58, 42.06), length = 4.0, width = 0.8, heading = 235.0, minZ = 41.06, maxZ = 42.51, distance = 1.5 }
		}
	},


	YouTool = {
		name = 'Techniczny',
		blip = {
			id = 402, colour = 69, scale = 1.1
		}, inventory = {
			{ name = 'WEAPON_CROWBAR', price = 500},
			{ name = 'WEAPON_HAMMER', price = 500},
			{ name = 'bag', price = 1500},
			{ name = 'fixkit', price = 3000},
			{ name = 'metalrope', price = 300},
		}, locations = {
			vec3(46.56, -1749.77, 29.58),
		}, targets = {
			{ loc = vec3(46.56, -1749.77, 29.58), length = 1.0, width = 0.8, heading = 50.0, minZ = 26.58, maxZ = 30.58, distance = 2.0 }
		}
	},

	Lifeinvader = {
		name = 'Lifeinvader',
		blip = {
			id = 459, colour = 30, scale = 0.8
		}, inventory = {
			{ name = 'phone', price = 150 },
			{ name = 'sim_card', price = 50 },
		}, locations = {
			vec3(2748.0, 3473.0, 55.67),
		}, targets = {
			{ loc = vec3(-1083.0, -246.41, 37.76), length = 1.0, width = 2.4, heading = 300.0, minZ = 34.76, maxZ = 38.76, distance = 3.0 }
		}
	},

	
	CarZone = {
		name = 'CarZone Sklep',
		groups = {
			['mecano'] = 1
		},
		inventory = {
			{ name = 'weapon_stungun', price = 1500 },
			{ name = 'lockpick', price = 300 },
			{ name = 'burger', price = 1 },
			{ name = 'water', price = 1 }
		}, locations = {
			vec3(138.88, -3051.2, 7.04),
		}, targets = {
			{ loc = vec3(138.88, -3051.2, 7.04), length = 1, width = 2.4, heading = 0.0, minZ = 3.44, maxZ = 7.44, distance = 2.5 }
		}
	},

	Ammunation = {
		name = 'Sklep z bronią',
		blip = {
			id = 110, colour = 4, scale = 0.7
		}, inventory = {
			{ name = 'WEAPON_KNIFE', price = 1500 },
			{ name = 'WEAPON_MACHETE', price = 1500 },
			{ name = 'WEAPON_KNUCKLE', price = 750 },
			{ name = 'WEAPON_BAT', price = 750 },
			{ name = 'WEAPON_FLASHLIGHT', price = 100 },
		}, locations = {
			vec3(-662.180, -934.961, 21.829),
			vec3(812.985, -2154.286, 30.03845),
			vec3(1693.44, 3760.16, 34.71),
			vec3(-330.24, 6083.88, 31.45),
			vec3(252.63, -50.00, 69.94),
			vec3(22.56, -1109.89, 29.80),
			vec3(2567.69, 294.38, 108.73),
			vec3(-1117.58, 2698.61, 18.55),
			vec3(842.44, -1033.42, 28.19),
			vec3(-3166.51, 1085.95, 20.84),
			vec3(-1311.45, -393.38, 36.7)
		}, targets = {
			{ loc = vec3(-659.903, -940.4493, 22.29709), length = 0.6, width = 0.55, heading = 133.0, minZ = 21.8, maxZ = 22.2, distance = 2.0 },
			{ loc = vec3(812.885, -2154.186, 30.03845), length = 0.6, width = 0.55, heading = 360.0, minZ = 29.7, maxZ = 30.2, distance = 2.0 },
			{ loc = vec3(1698.1, 3756.3, 35.21037), length = 0.6, width = 0.55, heading = 0.0, minZ = 34.7, maxZ = 35.4, distance = 2.0 },
			{ loc = vec3(-325.9707, 6080.069, 31.9602), length = 0.6, width = 0.55, heading = 180.0, minZ = 31.4, maxZ = 32.2, distance = 2.0 },
			{ loc = vec3(246.5637, -50.49439, 70.40826), length = 0.6, width = 0.57, heading = 25.0, minZ = 69.9, maxZ = 70.6, distance = 2.0 },
			{ loc = vec3(18.40003, -1109.085, 30.24582), length = 0.6, width = 0.6, heading = 160.0, minZ = 29.8, maxZ = 30.5, distance = 2.0 },
			{ loc = vec3(2565.512, 299.3707, 109.1768), length = 0.6, width = 0.55, heading = 315.0, minZ = 108.7, maxZ = 109.4, distance = 2.0 },
			{ loc = vec3(-1112.671, 2696.282, 19.03302), length = 0.6, width = 0.55, heading = 170.82, minZ = 18.5, maxZ = 19.1, distance = 2.0 },
			{ loc = vec3(841.8538, -1027.908, 28.65623), length = 0.6, width = 0.55, heading = 315.1902, minZ = 28.2, maxZ = 28.9, distance = 2.0 },
			{ loc = vec3(-3166.51, 1085.95, 20.84), length = 0.6, width = 0.55, heading = 21.0, minZ = 20.94, maxZ = 21.39, distance = 2.0 },
			{ loc = vec3(-1311.45, -393.38, 36.7), length = 0.6, width = 0.55, heading = 28.0, minZ = 36.8, maxZ = 37.25, distance = 2.0 }
		}
	},





























	



	PoliceArmoury = {
		name = 'Zbrojownia',
		groups = {
			['police'] = 0
		},
		inventory = {
			{ name = "gps", price = 0 },
			{ name = 'radio', price = 0 },
			{ name = "handcuffs", price = 0, metadata = { registered = true, serial = 'POL' }},
			{ name = 'WEAPON_NIGHTSTICK', price = 0, metadata = { registered = true, serial = 'POL' }},
			{ name = 'WEAPON_STUNGUN', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'WEAPON_GLOCK', price = 0, metadata = { registered = true, serial = 'POL' }},
			{ name = 'WEAPON_HEAVYPISTOL', price = 0, metadata = { registered = true, serial = 'POL' }},
			{ name = 'WEAPON_SPECIALCARBINE_MK2', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'WEAPON_SMG', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'WEAPON_PUMPSHOTGUN_MK2', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'ammo-9', price = 0 },
			{ name = 'ammo-45', price = 0 },
			{ name = 'ammo-rifle', price = 0 },
			{ name = 'WEAPON_KNIFE', price = 0 },
			{ name = 'ammo-rubber', price = 0 },
			{ name = 'bulletproof_vest', price = 0 },
			{ name = 'bulletproof_vest_reinforced', price = 0 },
			{ name = 'bulletproof_vest_police', price = 0 },
			{ name = 'WEAPON_FLASHBANG', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'WEAPON_SMOK2GRENADE', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'megaphone', price = 0 },
			{ name = "binoculars", price = 0 },
			{ name = 'WEAPON_FLASHLIGHT', price = 0 },
			{ name = "policedivingsuit", price = 0 },
			{ name = "spray_remover", price = 0},
			{ name = "police_camera", price = 0 },
			{ name = "evidence_bag", price = 0 },
			{ name = "evidence_case", price = 0 },
			{ name = "evidence_paper", price = 0 },
			{ name = "swab", price = 0 },
			{ name = "phone", price = 150 },
		}, locations = {
			vec3(481.62, -995.08, 30.69),
		}, targets = {
			{ loc = vec3(481.62, -995.08, 30.69), length = 1.0, width = 3.6, heading = 0, minZ = 28.49, maxZ = 32.49, distance = 2.0 },
		}
	},







	PoliceArmoury6 = {
		name = 'Zbrojownia SWAT',
		groups = {
			['police'] = 0
		},
		canInteract = function()
				checkSwat()
				Wait(20)
					return canSwat
		end,
		inventory = {
			{ name = "gps", price = 0 },
			{ name = 'radio', price = 0 },
			{ name = "handcuffs", price = 0, metadata = { registered = true, serial = 'POL' }},
			{ name = 'WEAPON_NIGHTSTICK', price = 0, metadata = { registered = true, serial = 'POL' }},
			{ name = 'WEAPON_STUNGUN', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'WEAPON_GLOCK', price = 0, metadata = { registered = true, serial = 'POL' }},
			{ name = 'WEAPON_HEAVYPISTOL', price = 0, metadata = { registered = true, serial = 'POL' }},
			{ name = 'WEAPON_SPECIALCARBINE_MK2', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'WEAPON_SMG', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'WEAPON_PUMPSHOTGUN_MK2', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'ammo-9', price = 0 },
			{ name = 'ammo-45', price = 0 },
			{ name = 'ammo-rifle', price = 0 },
			{ name = 'WEAPON_KNIFE', price = 0 },
			{ name = 'ammo-rubber', price = 0 },
			{ name = 'bulletproof_vest', price = 0 },
			{ name = 'bulletproof_vest_reinforced', price = 0 },
			{ name = 'bulletproof_vest_police', price = 0 },
			{ name = 'WEAPON_FLASHBANG', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'WEAPON_SMOK2GRENADE', price = 0, metadata = { registered = true, serial = 'POL'}},
			{ name = 'megaphone', price = 0 },
			{ name = "binoculars", price = 0 },
			{ name = 'WEAPON_FLASHLIGHT', price = 0 },
			{ name = "policedivingsuit", price = 0 },
			{ name = "spray_remover", price = 0},
			{ name = "police_camera", price = 0 },
			{ name = "evidence_bag", price = 0 },
			{ name = "evidence_case", price = 0 },
			{ name = "evidence_paper", price = 0 },
			{ name = "swab", price = 0 },
			{ name = "phone", price = 150 },
		}, locations = {
			vec3(486.01, -994.74, 30.69),
		}, targets = {
			{ loc = vec3(486.01, -994.74, 30.69), length = 1.0, width = 4.4, heading = 0, minZ = 28.69, maxZ=32.69, distance = 2.0 },
		}
	},










































	Medicine = {
		name = 'Szafkę',
		groups = {
			['ambulance'] = 0
		},
		--blip = {
		--	id = 403, colour = 69, scale = 0.8
		--}, 
		inventory = {
			{ name = 'medkit', price = 0 },
			{ name = 'stress_tabs', price = 0 },
			{ name = "policedivingsuit", price = 0 },
			{ name = "gps", price = 0 },
			{ name = 'WEAPON_FLASHLIGHT', price = 0 },
		}, locations = {
			vector3(306.68, -602.15, 43.28),
		}, targets = {
			{ loc = vec3(306.68, -602.15, 43.28), length = 1.0, width = 1.8, heading = 160.0, minZ = 40.48, maxZ = 44.48, distance = 2 },

		},
		checkCoords = false
	},

	Mechanics = {
		name = "Sklep z częściami",
		canInteract = function()
			return exports["fc-mechanics"]:IsMechanic()
		end,
		inventory = {
			{ name = "fixpart_basic", price = 35 },
		}, locations = {
			vec3(913.72, -1273.27, 27.1),
		}, targets = {
			{ loc = vec3(913.72, -1273.27, 27.1), length = 1.0, width = 1.0, heading = 35.0, minZ = 26.1, maxZ = 28.1, distance = 3.0 },
		}
	},
	Hurtownia = {
		name = 'Hurtownia',
		blip = {
			id = 478, colour = 13, scale = 0.9
		}, inventory = {
			{ name = 'roll', price = 5 },
            { name = 'meat', price = 5},
            { name = 'ketchup', price = 5},
            { name = 'cheese', price = 5},
            { name = 'ice', price = 5},
            { name = 'sugar', price = 5},
            { name = 'restaurant_water', price = 5},
            { name = 'restaurant_nachos', price = 5},
            { name = 'tomato_sauce', price = 5},
            { name = 'flour', price = 5},
            { name = 'restaurant_tea', price = 5},
		}, locations = {
			vec3(-419.3486, -2741.944, 5.000218)
		}, targets = {
			{ loc = vec3(-419.34, -2742.09, 6.0), length = 1.4, width = 1.2, heading = 0.0, minZ = 4.8, maxZ = 7.0, distance = 3.0 }
		}
	},

	Arcade = {
		   name = 'Sklep Arcade',
		   inventory = {
			{ name = 'arcade_token', price = 500 },
		}, locations = {
			vec3(740.27, -825.65, 22.69)
		}, targets = {
			{ loc = vec3(740.27, -825.65, 22.69), length = 1.0, width = 0.6, heading = 180.0, minZ = 19.69, maxZ = 23.69, distance = 3.0 }
		}
	},

	VendingMachineDrinks = {
		name = 'Automat z jedzeniem',
		inventory = {
			{ name = 'water', price = 3 },
			{ name = 'burger', price = 3 },
			{ name = 'coffee', price = 3 },
		},
		model = {
			`prop_vend_soda_02`, `prop_vend_fridge01`, `prop_vend_water_01`, `prop_vend_soda_01`, `prop_vend_snak_01`,  `prop_vend_snak_01_tu`,
		}
	},
	WaterDispensers = {
		name = 'Dystrybutor wody',
		inventory = {
			{ name = 'water', price = 3 },
		},
		model = {
			-742198632, -1691644768
		}
	}
}
