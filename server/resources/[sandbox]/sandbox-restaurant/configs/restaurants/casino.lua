table.insert(Config.Restaurants, {
	Name = "Casino",
	Job = "casino",
	Benches = {
		bar = {
			label = "Bar",
			targeting = {
				actionString = "Making",
				icon = "martini-glass-citrus",
				poly = {
					coords = vector3(979.53, 23.84, 71.46),
					l = 2.2,
					w = 2.2,
					options = {
						heading = 0,
						--debugPoly=true,
						minZ = 70.86,
						maxZ = 72.86,
					},
				},
			},
			recipes = {
				_cocktailRecipies.raspberry_mimosa,
				_cocktailRecipies.pina_colada,
				_cocktailRecipies.bloody_mary,
				_cocktailRecipies.vodka_shot,
				_cocktailRecipies.whiskey_glass,
				--_cocktailRecipies.jaeger_bomb,
				_genericRecipies.glass_cock,
				_genericRecipies.lemonade,
				_genericRecipies.sandwich,
				_genericRecipies.sandwich_turkey,
				_genericRecipies.sandwich_beef,
				_genericRecipies.sandwich_blt,
				_genericRecipies.salad,
				{
					result = { name = "diamond_drink", count = 6 },
					items = {
						{ name = "vodka", count = 1 },
						{ name = "orange", count = 3 },
						{ name = "raspberry", count = 1 },
						{ name = "raspberry_liqueur", count = 1 },
					},
					time = 2000,
				},
			},
		},
		bar2 = {
			label = "Bar",
			targeting = {
				actionString = "Making",
				icon = "martini-glass-citrus",
				poly = {
					coords = vector3(944.85, 13.95, 116.16),
					w = 1.0,
					l = 2.0,
					options = {
						heading = 57,
						--debugPoly=true,
						minZ = 115.56,
						maxZ = 117.36,
					},
				},
			},
			recipes = {
				_cocktailRecipies.raspberry_mimosa,
				_cocktailRecipies.pina_colada,
				_cocktailRecipies.bloody_mary,
				_cocktailRecipies.vodka_shot,
				_cocktailRecipies.whiskey_glass,
				--_cocktailRecipies.jaeger_bomb,
				_genericRecipies.glass_cock,
				_genericRecipies.lemonade,
				{
					result = { name = "diamond_drink", count = 6 },
					items = {
						{ name = "vodka", count = 1 },
						{ name = "orange", count = 3 },
						{ name = "raspberry", count = 1 },
						{ name = "raspberry_liqueur", count = 1 },
					},
					time = 2000,
				},
			},
		},
		bar3 = {
			label = "Bar",
			targeting = {
				actionString = "Making",
				icon = "martini-glass-citrus",
				poly = {
					coords = vector3(983.77, 76.5, -76.01),
					w = 3.4,
					l = 0.6,
					options = {
						heading = 235,
						--debugPoly=true,
						minZ = -75.86,
						maxZ = -74.86,
					},
				},
			},
			recipes = {
				_cocktailRecipies.raspberry_mimosa,
				_cocktailRecipies.pina_colada,
				_cocktailRecipies.bloody_mary,
				_cocktailRecipies.vodka_shot,
				_cocktailRecipies.whiskey_glass,
				--_cocktailRecipies.jaeger_bomb,
				_genericRecipies.glass_cock,
				_genericRecipies.lemonade,
				{
					result = { name = "diamond_drink", count = 6 },
					items = {
						{ name = "vodka", count = 1 },
						{ name = "orange", count = 3 },
						{ name = "raspberry", count = 1 },
						{ name = "raspberry_liqueur", count = 1 },
					},
					time = 2000,
				},
			},
		},
	},
	Storage = {
		{
			id = "casino-storage",
			type = "box",
			coords = vector3(1008.64, 72.07, 75.06),
			width = 1.8,
			length = 1.8,
			options = {
				heading = 328,
				--debugPoly=true,
				minZ = 74.06,
				maxZ = 76.66,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 125,
					owner = "casino-storage",
				},
			},
		},
		{
			id = "casino-storage2",
			type = "box",
			coords = vector3(991.05, 24.74, 71.46),
			width = 1.8,
			length = 1.8,
			options = {
				heading = 328,
				--debugPoly=true,
				minZ = 70.46,
				maxZ = 73.06,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 182,
					owner = "casino-storage2",
				},
			},
		},
		{
			id = "casino-storage3",
			type = "box",
			coords = vector3(971.52, 68.73, 116.16),
			width = 1.4,
			length = 2.2,
			options = {
				heading = 238,
				--debugPoly=true,
				minZ = 115.16,
				maxZ = 117.36,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 183,
					owner = "casino-storage3",
				},
			},
		},
		{
			id = "casino-storage4",
			type = "box",
			coords = vector3(984.24, 74.78, -76.01),
			width = 1.4,
			length = 1.0,
			options = {
				heading = 235,
				--debugPoly=true,
				minZ = -77.01,
				maxZ = -74.81,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 184,
					owner = "casino-storage4",
				},
			},
		},
	},
	Pickups = {
		{
			id = "casino-pickup-1",
			coords = vector3(976.83, 23.73, 71.46),
			width = 1.2,
			length = 1.2,
			options = {
				heading = 4,
				--debugPoly=true,
				minZ = 71.26,
				maxZ = 72.46,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 175,
					owner = "casino-pickup-1",
				},
			},
		},
		{
			id = "casino-pickup-2",
			coords = vector3(981.32, 21.82, 71.46),
			width = 1.2,
			length = 1.2,
			options = {
				heading = 314,
				--debugPoly=true,
				minZ = 71.26,
				maxZ = 72.46,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 176,
					owner = "casino-pickup-2",
				},
			},
		},
		{
			id = "casino-pickup-3",
			coords = vector3(980.92, 26.13, 71.46),
			width = 1.2,
			length = 1.2,
			options = {
				heading = 328,
				--debugPoly=true,
				minZ = 71.26,
				maxZ = 72.46,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 177,
					owner = "casino-pickup-3",
				},
			},
		},
		{
			id = "casino-pickup-4",
			coords = vector3(946.51, 16.47, 116.16),
			width = 1.2,
			length = 1.2,
			options = {
				heading = 328,
				--debugPoly=true,
				minZ = 115.96,
				maxZ = 117.16,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 178,
					owner = "casino-pickup-4",
				},
			},
		},
		-- nightclub
		{
			id = "casino-pickup-5",
			coords = vector3(984.24, 72.33, -76.01),
			width = 1.2,
			length = 1.4,
			options = {
				heading = 17,
				--debugPoly=true,
				minZ = -77.81,
				maxZ = -75.41,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 179,
					owner = "casino-pickup-5",
				},
			},
		},
		{
			id = "casino-pickup-6",
			coords = vector3(981.25, 73.27, -76.01),
			width = 1.2,
			length = 2.4,
			options = {
				heading = 324,
				--debugPoly=true,
				minZ = -77.81,
				maxZ = -75.41,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 180,
					owner = "casino-pickup-6",
				},
			},
		},

		{
			id = "casino-pickup-7",
			coords = vector3(978.59, 76.18, -76.01),
			width = 1.2,
			length = 1.2,
			options = {
				heading = 273,
				--debugPoly=true,
				minZ = -77.81,
				maxZ = -75.41,
			},
			data = {
				business = "casino",
				inventory = {
					invType = 181,
					owner = "casino-pickup-7",
				},
			},
		},
	},
	Warmers = {
		{
			fridge = true,
			id = "casino-1",
			coords = vector3(948.9, 17.21, 116.16),
			width = 1.2,
			length = 2.2,
			options = {
				heading = 328,
				--debugPoly=true,
				minZ = 115.16,
				maxZ = 116.96,
			},
			restrict = {
				jobs = { "casino" },
			},
			data = {
				business = "casino",
				inventory = {
					invType = 126,
					owner = "casino-1",
				},
			},
		},
		{
			fridge = true,
			id = "casino-2",
			coords = vector3(978.32, 21.99, 71.46),
			width = 1.2,
			length = 2.2,
			options = {
				heading = 328,
				--debugPoly=true,
				minZ = 70.46,
				maxZ = 72.26,
			},
			restrict = {
				jobs = { "casino" },
			},
			data = {
				business = "casino",
				inventory = {
					invType = 185,
					owner = "casino-2",
				},
			},
		},
		{
			fridge = true,
			id = "casino-3",
			coords = vector3(1003.71, 56.35, 75.06),
			width = 1.2,
			length = 2.2,
			options = {
				heading = 238,
				--debugPoly=true,
				minZ = 74.06,
				maxZ = 75.86,
			},
			restrict = {
				jobs = { "casino" },
			},
			data = {
				business = "casino",
				inventory = {
					invType = 186,
					owner = "casino-3",
				},
			},
		},
		{
			fridge = true,
			id = "casino-4",
			coords = vector3(984.03, 75.97, -76.01),
			width = 2.8,
			length = 0.6,
			options = {
				heading = 235,
				--debugPoly=true,
				minZ = -77.01,
				maxZ = -76.01,
			},
			restrict = {
				jobs = { "casino" },
			},
			data = {
				business = "casino",
				inventory = {
					invType = 187,
					owner = "casino-4",
				},
			},
		},
	},
})
