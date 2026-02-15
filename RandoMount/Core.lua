local button = CreateFrame("Button", "RandoMountButton", UIParent, "SecureActionButtonTemplate")

local mountDB = {
	{ ["spellID"] = 29059, ["name"] = "Naxxramas Deathcharger", ["fast"] = true, ["flying"] = false, ["swimming"] = false, ["zone"] = "Naxxramas" },
	{ ["spellID"] = 48778, ["name"] = "Acherus Deathcharger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 60025, ["name"] = "Albino Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 43688, ["name"] = "Amani War Bear", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 16056, ["name"] = "Ancient Frostsaber", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 66906, ["name"] = "Argent Charger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 63844, ["name"] = "Argent Hippogryph", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 67466, ["name"] = "Argent Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 66907, ["name"] = "Argent Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61230, ["name"] = "Armored Blue Wind Rider", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 60114, ["name"] = "Armored Brown Bear", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 60116, ["name"] = "Armored Brown Bear", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61229, ["name"] = "Armored Snowy Gryphon", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 40192, ["name"] = "Ashes of Al'ar", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 59567, ["name"] = "Azure Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 41514, ["name"] = "Azure Netherwing Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 51412, ["name"] = "Big Battle Bear", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 58983, ["name"] = "Big Blizzard Bear", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 71342, ["name"] = "Big Love Rocket", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 22719, ["name"] = "Black Battlestrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59650, ["name"] = "Black Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 35022, ["name"] = "Black Hawkstrider", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 16055, ["name"] = "Black Nightsaber", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59976, ["name"] = "Black Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 26656, ["name"] = "Black Qiraji Battle Tank", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 17461, ["name"] = "Black Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 64977, ["name"] = "Black Skeletal Horse", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 470, ["name"] = "Black Stallion", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 60118, ["name"] = "Black War Bear", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 60119, ["name"] = "Black War Bear", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 48027, ["name"] = "Black War Elekk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 22718, ["name"] = "Black War Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59785, ["name"] = "Black War Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59788, ["name"] = "Black War Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 22720, ["name"] = "Black War Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 22721, ["name"] = "Black War Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 22717, ["name"] = "Black War Steed", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 22723, ["name"] = "Black War Tiger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 22724, ["name"] = "Black War Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 64658, ["name"] = "Black Wolf", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 72808, ["name"] = "Bloodbathed Frostbrood Vanquisher", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 61996, ["name"] = "Blue Dragonhawk", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 59568, ["name"] = "Blue Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 35020, ["name"] = "Blue Hawkstrider", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 10969, ["name"] = "Blue Mechanostrider", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59996, ["name"] = "Blue Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 25953, ["name"] = "Blue Qiraji Battle Tank", ["fast"] = true, ["flying"] = false, ["swimming"] = false, ["zone"] = "Ahn'Qiraj" },
	{ ["spellID"] = 39803, ["name"] = "Blue Riding Nether Ray", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 17463, ["name"] = "Blue Skeletal Horse", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 64656, ["name"] = "Blue Skeletal Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32244, ["name"] = "Blue Wind Rider", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 50869, ["name"] = "Brewfest Kodo", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 43899, ["name"] = "Brewfest Ram", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59569, ["name"] = "Bronze Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 34406, ["name"] = "Brown Elekk", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 458, ["name"] = "Brown Horse", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 18990, ["name"] = "Brown Kodo", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 6899, ["name"] = "Brown Ram", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 17464, ["name"] = "Brown Skeletal Horse", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 6654, ["name"] = "Brown Wolf", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 58615, ["name"] = "Brutal Nether Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 43927, ["name"] = "Cenarion War Hippogryph", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 23214, ["name"] = "Charger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 6648, ["name"] = "Chestnut Mare", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 41515, ["name"] = "Cobalt Netherwing Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 39315, ["name"] = "Cobalt Riding Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 34896, ["name"] = "Cobalt War Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 73313, ["name"] = "Crimson Deathcharger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 68188, ["name"] = "Crusader's Black Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 68187, ["name"] = "Crusader's White Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 39316, ["name"] = "Dark Riding Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 34790, ["name"] = "Dark War Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 63635, ["name"] = "Darkspear Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 63637, ["name"] = "Darnassian Nightsaber", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 64927, ["name"] = "Deadly Gladiator's Frostwyrm", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 6653, ["name"] = "Dire Wolf", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23161, ["name"] = "Dreadsteed", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32239, ["name"] = "Ebon Gryphon", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 8395, ["name"] = "Emerald Raptor", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 63639, ["name"] = "Exodar Elekk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 5784, ["name"] = "Felsteed", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 36702, ["name"] = "Fiery Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 17458, ["name"] = "Flourescent Green Mechanostrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61451, ["name"] = "Flying Carpet", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 44153, ["name"] = "Flying Machine", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 63643, ["name"] = "Forsaken Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 17460, ["name"] = "Frost Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23509, ["name"] = "Frostwolf Howler", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65439, ["name"] = "Furious Gladiator's Frostwyrm", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 63638, ["name"] = "Gnomeregan Mechanostrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32235, ["name"] = "Golden Gryphon", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 61465, ["name"] = "Grand Black War Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61467, ["name"] = "Grand Black War Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61469, ["name"] = "Grand Ice Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61470, ["name"] = "Grand Ice Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 35710, ["name"] = "Gray Elekk", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 18989, ["name"] = "Gray Kodo", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 6777, ["name"] = "Gray Ram", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 35713, ["name"] = "Great Blue Elekk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 49379, ["name"] = "Great Brewfest Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23249, ["name"] = "Great Brown Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65641, ["name"] = "Great Golden Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23248, ["name"] = "Great Gray Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 35712, ["name"] = "Great Green Elekk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 35714, ["name"] = "Great Purple Elekk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65637, ["name"] = "Great Red Elekk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23247, ["name"] = "Great White Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 18991, ["name"] = "Green Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 17453, ["name"] = "Green Mechanostrider", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61294, ["name"] = "Green Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 26056, ["name"] = "Green Qiraji Battle Tank", ["fast"] = true, ["flying"] = false, ["swimming"] = false, ["zone"] = "Ahn'Qiraj" },
	{ ["spellID"] = 39798, ["name"] = "Green Riding Nether Ray", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 17465, ["name"] = "Green Skeletal Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32245, ["name"] = "Green Wind Rider", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 48025, ["name"] = "Headless Horseman's", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 59797, ["name"] = "Ice Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59799, ["name"] = "Ice Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 72807, ["name"] = "Icebound Frostbrood Vanquisher", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 17459, ["name"] = "Icy Blue Mechanostrider Mod A", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 72286, ["name"] = "Invincible", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 63956, ["name"] = "Ironbound Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 63636, ["name"] = "Ironforge Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 17450, ["name"] = "Ivory Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65917, ["name"] = "Magic Rooster", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61309, ["name"] = "Magnificent Flying Carpet", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 55531, ["name"] = "Mechano-hog", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 60424, ["name"] = "Mekgineer's Chopper", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 44744, ["name"] = "Merciless Nether Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 63796, ["name"] = "Mimiron's Head", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 16084, ["name"] = "Mottled Red Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 66846, ["name"] = "Ochre Skeletal Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 41513, ["name"] = "Onyx Netherwing Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 69395, ["name"] = "Onyxian Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 63640, ["name"] = "Orgrimmar Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 16082, ["name"] = "Palomino", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32345, ["name"] = "Peep the Phoenix", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 472, ["name"] = "Pinto", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 60021, ["name"] = "Plagued Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 35711, ["name"] = "Purple Elekk", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 35018, ["name"] = "Purple Hawkstrider", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 41516, ["name"] = "Purple Netherwing Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 39801, ["name"] = "Purple Riding Nether Ray", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 23246, ["name"] = "Purple Skeletal Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 66090, ["name"] = "Quel'dorei Steed", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 41252, ["name"] = "Raven Lord", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61997, ["name"] = "Red Dragonhawk", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 59570, ["name"] = "Red Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 34795, ["name"] = "Red Hawkstrider", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 10873, ["name"] = "Red Mechanostrider", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59961, ["name"] = "Red Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 26054, ["name"] = "Red Qiraji Battle Tank", ["fast"] = true, ["flying"] = false, ["swimming"] = false, ["zone"] = "Ahn'Qiraj" },
	{ ["spellID"] = 39800, ["name"] = "Red Riding Nether Ray", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 17462, ["name"] = "Red Skeletal Horse", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 22722, ["name"] = "Red Skeletal Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 16080, ["name"] = "Red Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 67336, ["name"] = "Relentless Gladiator's Frostwyrm", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 30174, ["name"] = "Riding Turtle", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 17481, ["name"] = "Rivendare's Deathcharger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 63963, ["name"] = "Rusted Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 64731, ["name"] = "Sea Turtle", ["fast"] = false, ["flying"] = false, ["swimming"] = true },
	{ ["spellID"] = 66087, ["name"] = "Silver Covenant Hippogryph", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 39802, ["name"] = "Silver Riding Nether Ray", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 39317, ["name"] = "Silver Riding Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 34898, ["name"] = "Silver War Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 63642, ["name"] = "Silvermoon Hawkstrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32240, ["name"] = "Snowy Gryphon", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 42776, ["name"] = "Spectral Tiger", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 10789, ["name"] = "Spotted Frostsaber", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23510, ["name"] = "Stormpike Battle Charger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 63232, ["name"] = "Stormwind Steed", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 66847, ["name"] = "Striped Dawnsaber", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 8394, ["name"] = "Striped Frostsaber", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 10793, ["name"] = "Striped Nightsaber", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 66088, ["name"] = "Sunreaver Dragonhawk", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 66091, ["name"] = "Sunreaver Hawkstrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 68057, ["name"] = "Swift Alliance Steed", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32242, ["name"] = "Swift Blue Gryphon", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 23241, ["name"] = "Swift Blue Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 43900, ["name"] = "Swift Brewfest Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23238, ["name"] = "Swift Brown Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23229, ["name"] = "Swift Brown Steed", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23250, ["name"] = "Swift Brown Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65646, ["name"] = "Swift Burgundy Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23221, ["name"] = "Swift Frostsaber", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23239, ["name"] = "Swift Gray Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65640, ["name"] = "Swift Gray Steed", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23252, ["name"] = "Swift Gray Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32290, ["name"] = "Swift Green Gryphon", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 35025, ["name"] = "Swift Green Hawkstrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23225, ["name"] = "Swift Green Mechanostrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32295, ["name"] = "Swift Green Wind Rider", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 68056, ["name"] = "Swift Horde Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23219, ["name"] = "Swift Mistsaber", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65638, ["name"] = "Swift Moonsaber", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 37015, ["name"] = "Swift Nether Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 23242, ["name"] = "Swift Olive Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23243, ["name"] = "Swift Orange Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23227, ["name"] = "Swift Palomino", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 33660, ["name"] = "Swift Pink Hawkstrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32292, ["name"] = "Swift Purple Gryphon", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 35027, ["name"] = "Swift Purple Hawkstrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65644, ["name"] = "Swift Purple Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32297, ["name"] = "Swift Purple Wind Rider", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 24242, ["name"] = "Swift Razzashi Raptor", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32289, ["name"] = "Swift Red Gryphon", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 65639, ["name"] = "Swift Red Hawkstrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32246, ["name"] = "Swift Red Wind Rider", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 42777, ["name"] = "Swift Spectral Tiger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23338, ["name"] = "Swift Stormsaber", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23251, ["name"] = "Swift Timber Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65643, ["name"] = "Swift Violet Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 35028, ["name"] = "Swift Warstrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 46628, ["name"] = "Swift White Hawkstrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23223, ["name"] = "Swift White Mechanostrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23240, ["name"] = "Swift White Ram", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23228, ["name"] = "Swift White Steed", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 23222, ["name"] = "Swift Yellow Mechanostrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32296, ["name"] = "Swift Yellow Wind Rider", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 49322, ["name"] = "Swift Zhevra", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 24252, ["name"] = "Swift Zulian Tiger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 39318, ["name"] = "Tan Riding Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 34899, ["name"] = "Tan War Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 32243, ["name"] = "Tawny Wind Rider", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 18992, ["name"] = "Teal Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 34767, ["name"] = "Thalassian Charger", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 34769, ["name"] = "Thalassian Warhorse", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 63641, ["name"] = "Thunder Bluff Kodo", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 580, ["name"] = "Timber Wolf", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 60002, ["name"] = "Time-Lost Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 61425, ["name"] = "Traveler's Tundra Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 61447, ["name"] = "Traveler's Tundra Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 44151, ["name"] = "Turbo-Charged Flying Machine", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 65642, ["name"] = "Turbostrider", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 10796, ["name"] = "Turquoise Raptor", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59571, ["name"] = "Twilight Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 17454, ["name"] = "Unpainted Mechanostrider", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 49193, ["name"] = "Vengeful Nether Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 64659, ["name"] = "Venomhide Ravasaur", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 41517, ["name"] = "Veridian Netherwing Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 41518, ["name"] = "Violet Netherwing Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 60024, ["name"] = "Violet Proto-Drake", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 10799, ["name"] = "Violet Raptor", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 13819, ["name"] = "Warhorse", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 64657, ["name"] = "White Kodo", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 15779, ["name"] = "White Mechanostrider Mod B", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 54753, ["name"] = "White Polar Bear", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 6898, ["name"] = "White Ram", ["fast"] = false, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 39319, ["name"] = "White Riding Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 65645, ["name"] = "White Skeletal Warhorse", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 16083, ["name"] = "White Stallion", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 34897, ["name"] = "White War Talbuk", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 54729, ["name"] = "Winged Steed of the Ebon Blade", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 16081, ["name"] = "Winter Wolf", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 17229, ["name"] = "Winterspring Frostsaber", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59791, ["name"] = "Wooly Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 59793, ["name"] = "Wooly Mammoth", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
	{ ["spellID"] = 71810, ["name"] = "Wrathful Gladiator's Frost Wyrm", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 46197, ["name"] = "X-51 Nether Rocket", ["fast"] = false, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 46199, ["name"] = "X-51 Nether Rocket X-TREME", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 26055, ["name"] = "Yellow Qiraji Battle Tank", ["fast"] = true, ["flying"] = false, ["swimming"] = false, ["zone"] = "Ahn'Qiraj" },
	{ ["spellID"] = 75596, ["name"] = "Frosty Flying Carpet", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 75614, ["name"] = "Celestial Steed", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 75973, ["name"] = "X-53 Touring Rocket", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 74856, ["name"] = "Blazing Hippogryph", ["fast"] = true, ["flying"] = true, ["swimming"] = false },
	{ ["spellID"] = 74918, ["name"] = "Wooly White Rhino", ["fast"] = true, ["flying"] = false, ["swimming"] = false },
}

local function CanReallyFly()
    if not IsFlyableArea() then return false end

    local canFly = true

    local zone = GetRealZoneText()
    if zone == "Dalaran" or zone == "Wintergrasp" then
    	canFly = false

    	local subzone = GetSubZoneText()
    	if subzone == "Krasus' Landing" then
    		canFly = true
    	end
    end

    local _, _, _, _, _, _, _, continentID = GetInstanceInfo()
    if continentID == 571 then
        --if not GetSpellInfo(54197) then
        if IsSpellKnown(54197) then
            return false
        end
    end

    return true
end

local function IsKnownMount(mount)
	if GetNumCompanions("MOUNT") == 0 then return false, nil end

	for i=1,GetNumCompanions("MOUNT"),1 do
		local creatureID, name, spellID, icon, isActive = GetCompanionInfo("MOUNT", i)

		if mount == spellID or mount == name then
			return true, i
		end
	end

	return false, nil
end

local function GetMountTexture(flying)
	if GetNumCompanions("MOUNT") == 0 then return end

	flying = flying or false

	for _, data in pairs(mountDB) do
		local isKnown, index = IsKnownMount(data.spellID)

		if isKnown and data.flying == flying then
			local icon = select(4, GetCompanionInfo("MOUNT", index))
			return icon
		end
	end

	return select(4, GetCompanionInfo("MOUNT", math.random(1, GetNumCompanions("MOUNT"))))
end

--[[
local function GetMountTexture()
	return select(4, GetCompanionInfo("MOUNT", math.random(1, GetNumCompanions("MOUNT"))))
end
]]

function button.CastRandomMount()
	if InCombatLockdown() then return end
	if GetNumCompanions("MOUNT") == 0 then return end

	--local canFly = IsFlyableArea()
	local canFly = CanReallyFly()
    local isSwimming = IsSwimming()
    local currentZone = GetRealZoneText()

    local mounts = { 
    	regular = {},
    	swift = {}
    }

	local swimMounts = {}

	local zoneMounts = {}

	for _, data in pairs(mountDB) do
		if IsKnownMount(data.spellID) then
			if data.zone and data.zone == currentZone then
				tinsert(zoneMounts, data.name)
			elseif data.swimming and isSwimming then
				tinsert(swimMounts, data.name)
			elseif canFly then
				if data.flying then
					if data.fast then
						tinsert(mounts['swift'], data.name)
					else
						tinsert(mounts['regular'], data.name)
					end
				end
			elseif not data.zone and not data.swimming and not data.flying then
				if data.fast then
					tinsert(mounts['swift'], data.name)
				else
					tinsert(mounts['regular'], data.name)
				end
			end
		end
	end

	local mount = 1

	if #zoneMounts > 0 then
		mount = zoneMounts[math.random(1, #zoneMounts)]
	elseif #swimMounts > 0 then
		mount = swimMounts[math.random(1, #swimMounts)]
	elseif #mounts['swift'] > 0 then
		mount = mounts['swift'][math.random(1, #mounts['swift'])]
	else
		mount = mounts['regular'][math.random(1, #mounts['regular'])]
	end

	CastSpellByName(mount)
end

button:SetSize(32, 32)
button:SetPoint("LEFT", UIParent, "LEFT", 0, 0)
button:SetMovable(true)
button:EnableMouse(true)
button:RegisterForDrag("LeftButton")
button:SetScript("OnDragStart", function(self) self:StartMoving() end)
button:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
button:SetAttribute("type", "macro")
button:SetAttribute("macrotext", "/run RandoMountButton.CastRandomMount()")

button:SetBackdrop({
    bgFile = "Interface\\Buttons\\WHITE8X8", 
    edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", 
    edgeSize = 12,
    insets = { left = 2, right = 2, top = 2, bottom = 2 }
})
button:SetBackdropColor(0, 0, 0, 0.8)

button.icon = button:CreateTexture(nil, "ARTWORK")
button.icon:SetSize(28, 28)
button.icon:SetPoint("CENTER", button, "CENTER", 0, 0)
button.icon:SetTexture(GetSpellTexture(54753))
button.icon:Show()

button:RegisterEvent("PLAYER_ENTERING_WORLD")
button:RegisterEvent("ZONE_CHANGED_NEW_AREA")
button:RegisterEvent("ZONE_CHANGED")
button:RegisterEvent("ZONE_CHANGED_INDOORS")

button:SetScript("OnEvent", function(self, event, ...)
	if GetNumCompanions("MOUNT") == 0 then
		self:Hide()
		return
	else
		self:Show()
	end

	if event == "PLAYER_ENTERING_WORLD" then
		SetBindingClick("F7", button:GetName())
		self.icon:SetTexture(GetMountTexture(CanReallyFly()))
	else
		self.icon:SetTexture(GetMountTexture(CanReallyFly()))
	end
end)
