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
  {"Allmightt",22,0},
  {"Alvaruccio",40,27},
  {"Arajjh",56,60},
  {"Ashbane",41,32},
  {"Astromantic",7,0},
  {"Autron",97,31},
  {"Azhan",35,24},
  {"Azok",28,43},
  {"Balthra",28,28},
  {"Balzaq",35,13},
  {"Battlew",138,24},
  {"Berlusconi",13,0},
  {"Biguglyhorny",30,10},
  {"Blastronout",12,12},
  {"Bloodogre",0,34},
  {"Boda",7,1},
  {"Boombaclaw",12,0},
  {"Borgo",3,0},
  {"Bullba",0,31},
  {"Burutus",47,23},
  {"Byczq",9,0},
  {"Calmtempest",89,71},
  {"Chekisto",5,0},
  {"Crowin",28,41},
  {"Deadnuts",45,42},
  {"Deadtooth",6,4},
  {"Delija",13,26},
  {"Deslock",74,77},
  {"Dixiaz",26,10},
  {"Dottorvu",7,0},
  {"Drauga",92,33},
  {"Dune",16,31},
  {"Eadenarius",0,29},
  {"Ebull",5,5},
  {"Ekoh",5,5},
  {"Endaevor",5,5},
  {"Erasu",122,149},
  {"Fatbeauty",25,15},
  {"Fifrak",54,34},
  {"Frilov",14,0},
  {"Fur",6,0},
  {"Gabii",79,79},
  {"Gaou",92,103},
  {"Garbmage",45,0},
  {"Gaweko",45,35},
  {"Geena",22,48},
  {"Gelid",0,7},
  {"Genoflex",12,0},
  {"Greyflower",41,43},
  {"Gromthrall",4,0},
  {"Harbatkin",61,73},
  {"Harcko",19,9},
  {"Hellgato",12,16},
  {"Hena",77,47},
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
  {"Kizginlik",19,32},
  {"Konj",0,5},
  {"Krutch",20,11},
  {"Kurotho",45,53},
  {"Kwanu",109,66},
  {"Layzee",33,18},
  {"Legendarks",35,28},
  {"Macabre",18,9},
  {"Makou",6,6},
  {"Mangus",7,7},
  {"Marasou",0,10},
  {"Marmaron",14,0},
  {"Mechanus",27,39},
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
  {"Muatahu",0,1},
  {"Mystikar",20,20},
  {"Nabukanezar",18,24},
  {"Napits",47,38},
  {"Necrotanx",0,18},
  {"Nhexara",15,15},
  {"Niimu",44,11},
  {"Nkarielord",46,46},
  {"Nokni",0,28},
  {"Oblividus",8,21},
  {"Painx",5,21},
  {"Pawpatroler",80,66},
  {"Pikx",166,137},
  {"Pownzl",68,16},
  {"Preesta",11,11},
  {"Printf",20,9},
  {"Pulses",28,39},
  {"Punchcow",30,22},
  {"Raihkim",8,29},
  {"Ratchis",12,0},
  {"Reepeet",7,0},
  {"Relaeh",7,7},
  {"Revjin",27,18},
  {"Rhaar",82,79},
  {"Riiko",18,7},
  {"Robox",8,8},
  {"Rockywind",29,64},
  {"Sabay",13,13},
  {"Sanches",0,28},
  {"Saruorc",14,14},
  {"Schmier",16,16},
  {"Schmongo",6,6},
  {"Shadowe",32,9},
  {"Shattah",5,0},
  {"Skelethal",0,10},
  {"Skillgore",0,69},
  {"Smiksi",33,18},
  {"Snagga",31,10},
  {"Snakie",0,12},
  {"Spriestess",36,16},
  {"Stalebiscuit",5,0},
  {"Stavos",0,35},
  {"Stebsteb",21,21},
  {"Sticktoyou",8,7},
  {"Suhmayne",33,11},
  {"Supaka",29,12},
  {"Synthissima",291,315},
  {"Terasus",51,25},
  {"Thalixeur",21,35},
  {"Thegreenbast",5,0},
  {"Tifon",0,31},
  {"Togogrim",29,40},
  {"Torman",0,37},
  {"Torqess",0,30},
  {"Tratincica",61,54},
  {"Troyka",9,0},
  {"Truerd",14,30},
  {"Twistystabby",11,1},
  {"Valm",16,4},
  {"Veylith",25,7},
  {"Viken",7,0},
  {"Virviglazka",6,29},
  {"Vonlange",33,28},
  {"Voozo",6,29},
  {"Warjiv",5,19},
  {"Wenom",23,0},
  {"Whackjob",19,17},
  {"Whatsgoingon",48,16},
  {"Xappa",25,17},
  {"Xetsina",34,27},
  {"Xiaolingxi",19,0},
  {"Xiaoyue",7,0},
  {"Yxennor",50,63},
  {"Zail",61,9},
  {"Zaraena",4,4},
  {"Zelicko",19,10},
  {"Zerocooll",7,11},
  {"Zulzulkan",1,0},
  {"Zurlak",9,0},
  {"Zylam",21,12},
  {"Grimdog",7,0},
  {"Sneakysquid",7,0},
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
