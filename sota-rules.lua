-- SotA rules configuration: raid tiers and DKP gain table.

SOTA_RULES = {
	raid_tiers = {
		T1 = {
			"Molten Core",
			"Blackwing Lair",
			"Emerald Sanctum",
		},
		T2 = {
			"Naxxramas",
			"Ahn'Qiraj",
			"Kara40",
		},
	},

	raid_tier_by_name = {
		["Molten Core"] = "T1",
		["Blackwing Lair"] = "T1",
		["Emerald Sanctum"] = "T1",
		["Naxxramas"] = "T2",
		["Ahn'Qiraj"] = "T2",
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

-- Player tier import: populate sota_tier_import with { "Name", t1, t2 } rows.
-- Then run: /script SOTA_ApplyTierImport()
if not sota_tier_import then
	sota_tier_import = {
		  {"Bankasus",50,30},
  {"Allmightt",22,0},
  {"Alvaruccio",26,29},
  {"Arajjh",45,56},
  {"Ashbane",41,32},
  {"Astromantic",7,0},
  {"Autron",97,52},
  {"Azhan",35,21},
  {"Azok",23,43},
  {"Balthra",28,28},
  {"Balzaq",30,6},
  {"Battlew",138,24},
  {"Berlusconi",20,0},
  {"Biguglyhorny",30,17},
  {"Blastronout",12,12},
  {"Bloodogre",0,34},
  {"Boombaclaw",12,0},
  {"Borgo",3,0},
  {"Bullba",0,31},
  {"Burutus",48,19},
  {"Byczq",7,0},
  {"Calmtempest",81,75},
  {"Chekisto",5,0},
  {"Crowin",28,38},
  {"Deadnuts",45,37},
  {"Deadtooth",6,4},
  {"Delija",13,24},
  {"Deslock",74,74},
  {"Dixiaz",26,10},
  {"Dottorvu",7,0},
  {"Drauga",86,28},
  {"Dune",16,31},
  {"Eadenarius",0,29},
  {"Ebull",5,5},
  {"Ekoh",5,5},
  {"Endaevor",5,5},
  {"Erasu",115,170},
  {"Fatbeauty",25,15},
  {"Fifrak",46,36},
  {"Frilov",7,0},
  {"Fur",6,0},
  {"Gabii",79,79},
  {"Gaou",92,103},
  {"Garbmage",49,0},
  {"Gaweko",45,35},
  {"Geena",22,44},
  {"Gelid",0,7},
  {"Genoflex",12,0},
  {"Greyflower",35,42},
  {"Gromthrall",4,0},
  {"Harbatkin",61,73},
  {"Harcko",19,32},
  {"Hellgato",12,16},
  {"Hena",73,50},
  {"Herkko",5,0},
  {"Holmesio",16,16},
  {"Imreplica",7,0},
  {"Inatyra",82,17},
  {"Iradidio",144,155},
  {"Istarielle",5,0},
  {"Jawbbot",12,38},
  {"Jezzarah",3,0},
  {"Kassi",20,41},
  {"Keet",59,57},
  {"Kizginlik",35,32},
  {"Konj",0,5},
  {"Krutch",7,10},
  {"Kurotho",45,53},
  {"Kwanu",106,64},
  {"Layzee",33,18},
  {"Legendarks",35,28},
  {"Macabre",6,15},
  {"Makou",6,6},
  {"Mangus",7,7},
  {"Marasou",0,10},
  {"Marmaron",14,0},
  {"Mechanus",24,34},
  {"Mesc",0,6},
  {"Minami",0,38},
  {"Mirshanya",0,28},
  {"Mogrod",52,22},
  {"Mondro",14,8},
  {"Mooscito",32,85},
  {"Mootilate",47,21},
  {"Mortek",44,0},
  {"Moshh",7,0},
  {"Mostralata",12,0},
  {"Mystikar",20,20},
  {"Nabukanezar",13,24},
  {"Napits",38,38},
  {"Necrotanx",0,18},
  {"Nhexara",15,15},
  {"Niimu",33,24},
  {"Nkarielord",46,46},
  {"Nokni",0,28},
  {"Oblividus",8,21},
  {"Painx",5,21},
  {"Pawpatroler",74,59},
  {"Pikx",164,137},
  {"Pownzl",68,16},
  {"Preesta",11,11},
  {"Printf",21,9},
  {"Pulses",28,39},
  {"Punchcow",30,22},
  {"Raihkim",74,20},
  {"Ratchis",7,0},
  {"Reepeet",7,0},
  {"Relaeh",7,7},
  {"Revjin",22,19},
  {"Rhaar",76,85},
  {"Riiko",18,7},
  {"Robox",8,8},
  {"Rockywind",29,63},
  {"Sabay",13,13},
  {"Sanches",0,28},
  {"Saruorc",14,14},
  {"Schmier",16,16},
  {"Schmongo",6,6},
  {"Shadowe",32,22},
  {"Shattah",5,0},
  {"Skelethal",0,10},
  {"Skillgore",0,69},
  {"Smiksi",29,12},
  {"Snagga",22,10},
  {"Snakie",0,12},
  {"Stalebiscuit",5,0},
  {"Stavos",0,35},
  {"Stebsteb",21,21},
  {"Sticktoyou",8,7},
  {"Suhmayne",29,11},
  {"Supaka",29,12},
  {"Synthissima",291,315},
  {"Terasus",44,25},
  {"Thalixeur",21,39},
  {"Thegreenbast",5,0},
  {"Tifon",0,31},
  {"Togogrim",29,40},
  {"Torman",0,37},
  {"Torqess",0,30},
  {"Tratincica",61,54},
  {"Troyka",9,0},
  {"Truerd",14,30},
  {"Twistystabby",6,1},
  {"Valm",16,4},
  {"Veylith",25,7},
  {"Viken",7,0},
  {"Virviglazka",6,29},
  {"Vonlange",21,28},
  {"Voozo",6,29},
  {"Warjiv",5,19},
  {"Wenom",17,0},
  {"Whackjob",8,17},
  {"Whatsgoingon",40,9},
  {"Xappa",41,24},
  {"Xetsina",34,23},
  {"Xiaolingxi",19,0},
  {"Xiaoyue",7,0},
  {"Yxennor",50,63},
  {"Zail",54,35},
  {"Zaraena",4,4},
  {"Zelicko",13,14},
  {"Zerocooll",7,11},
  {"Zulzulkan",1,0},
  {"Zurlak",7,0},
  {"Zylam",5,12},
  {"Spriestess",36,16},
  {"Muatahu",0,1},
}

end

function SOTA_ApplyTierImport()
	if not SOTA_CanWriteNotes() then
		localEcho("You do not have access to change notes!");
		return false;
	end

	if not GetGuildRosterShowOffline() == 1 then
		localEcho("Enable 'Show Offline Members' in the guild roster to import all players.");
	end

	local total = 0;
	local updated = 0;
	local missing = 0;
	for n=1, table.getn(sota_tier_import), 1 do
		local row = sota_tier_import[n];
		if row and row[1] then
			total = total + 1;
			if SOTA_ApplyTierPoints(row[1], row[2], row[3], true) then
				updated = updated + 1;
			else
				missing = missing + 1;
			end
		end
	end

	SOTA_RequestUpdateGuildRoster();
	localEcho(string.format("Tier import done. Updated: %d, Missing: %d", updated, missing));
	return true;
end

-- Backup public/officer notes to SavedVariables.
-- Run: /script SOTA_BackupGuildNotes()
if not SOTA_NOTES_BACKUP then
	SOTA_NOTES_BACKUP = {};
end

function SOTA_BackupGuildNotes()
	local memberCount = GetNumGuildMembers();
	if memberCount == 0 then
		localEcho("No guild members found. Open the guild roster and try again.");
		return false;
	end

	if not GetGuildRosterShowOffline() == 1 then
		localEcho("Enable 'Show Offline Members' in the guild roster for a full backup.");
	end

	local canViewOfficer = CanViewOfficerNote();
	local snapshot = {
		timestamp = SOTA_GetDateTimestamp(),
		author = UnitName("player"),
		entries = {},
	};

	for n=1, memberCount, 1 do
		local name, rank, rankIndex, level, class, zone, publicnote, officernote, online = GetGuildRosterInfo(n);
		if name then
			snapshot.entries[name] = {
				public = publicnote or "",
				officer = canViewOfficer and (officernote or "") or nil,
				rank = rank,
				rankIndex = rankIndex,
				class = class,
				zone = zone,
				online = online and 1 or 0,
			};
		end
	end

	SOTA_NOTES_BACKUP[table.getn(SOTA_NOTES_BACKUP) + 1] = snapshot;

	localEcho(string.format("Notes backup saved (#%d). Members: %d", table.getn(SOTA_NOTES_BACKUP), memberCount));
	return true;
end
