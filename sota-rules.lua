-- SotA rules configuration: raid tiers and DKP gain table.

SOTA_RULES = {
	raid_tiers = {
		T1 = {
			"MoltenCore",
			"BWL",
			"Emeral Sanctum",
		},
		T2 = {
			"Nax",
			"TempleOFQa",
			"Kara40",
		},
	},

	raid_tier_by_name = {
		["MoltenCore"] = "T1",
		["BWL"] = "T1",
		["Emeral Sanctum"] = "T1",
		["Nax"] = "T2",
		["TempleOFQa"] = "T2",
		["Kara40"] = "T2",
	},

	-- Inclusive ranges.
	gain_table = {
		{ min = 0, max = 10, gain = 7 },
		{ min = 11, max = 20, gain = 6 },
		{ min = 21, max = 40, gain = 5 },
		{ min = 41, max = 70, gain = 4 },
		{ min = 71, max = 130, gain = 3 },
		{ min = 131, max = 999, gain = 2 },
	},
}
