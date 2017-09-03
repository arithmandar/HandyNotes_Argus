-- $Id: DB.lua 69 2017-07-02 14:44:27Z arith $
-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
local pairs = _G.pairs;
-- Libraries
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local FOLDER_NAME, private = ...
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name);

local function GetLocaleLibBabble(typ)
	local rettab = {}
	local tab = LibStub(typ):GetBaseLookupTable()
	local loctab = LibStub(typ):GetUnstrictLookupTable()
	for k,v in pairs(loctab) do
		rettab[k] = v;
	end
	for k,v in pairs(tab) do
		if not rettab[k] then
			rettab[k] = v;
		end
	end
	return rettab;
end
local BZ = GetLocaleLibBabble("LibBabble-SubZone-3.0")

local function mapFile(mapID)
	return HandyNotes:GetMapIDtoMapFile(mapID)
end

local DB = {}

private.DB = DB

DB.points = {
	--[[ structure:
	[mapFile] = { -- "_terrain1" etc will be stripped from attempts to fetch this
		[coord] = {
			label = [string], 		-- label: text that'll be the label, optional
			npc = [id], 				-- related npc id, used to display names in tooltip
			type = [string], 			-- the pre-define icon type which can be found in Constant.lua
			class = [CLASS NAME],		-- specified the class name so that this node will only be available for this class
			note=[string],			-- additional notes for this node
		},
	},
	--]]
	-- Krokuun 
	[mapFile(1135)] = { 
	},
	-- Mac'Aree
	[mapFile(1170)] = { 
	},
	-- Antoran Wastes
	[mapFile(1171)] = { 
	},
}

-- /////////////////////////////////
-- Treasure Chest
-- /////////////////////////////////
DB.treasures = {}
DB.treasures.Krokuun = {
	[55947421] = { label = L["Precious Augari Keepsakes"], object = 277344, },
	[75186978] = { label = L["Long-Lost Augari Treasure"], object = 277343, },
	[57506350] = { },
	[59267343] = { label = L["Eredar War Supplies"] },
	-- normal chests
	[33585432] = {},
	[29646574] = {},
	[43275452] = {},
	[45417236] = {},
	[46358258] = {},
	[55175071] = {},
	[69208359] = {},
	[72546514] = {},
	
}
for k, v in pairs(DB.treasures.Krokuun) do
	DB.points[mapFile(1135)][k] = v
	DB.points[mapFile(1135)][k]["treasure"] = true
end

DB.treasures.AntoranWastes = {
	[69013346] = {},
}
for k, v in pairs(DB.treasures.AntoranWastes) do
	DB.points[mapFile(1171)][k] = v
	DB.points[mapFile(1171)][k]["treasure"] = true
end

-- /////////////////////////////////
-- rare mobs
-- /////////////////////////////////
DB.rares = {}
-- Krokuun
DB.rares.Krokuun = {
	[58407610] = { npc = 120393, label = L["Siegemaster Voraan"], },
	[40704340] = { npc = 125824, label = L["Khazaduum"], },
	[45305890] = { npc = 124775, label = L["Commander Endaxis"], },
	[33307620] = { npc = 122912, label = L["Commander Sathrenael"], },
	[38305980] = { npc = 122911, label = L["Commander Vecaya"], },
	[70503370] = { npc = 126419, label = L["Naroua <King of the Forest>"], },
	[52803110] = { npc = 123464, label = L["Sister Subversia <Coven of Shivarra>"], },
	[54708120] = { npc = 123689, label = L["Talestra the Vile"], },
	[70108140] = { npc = 125479, label = L["Tar Spitter"], },
	--[69305940] = { npc = 1, label = L["Tereck the Selector - Entrance"], },
	[69205940] = { npc = 124804, quest = 48664, label = L["Tereck the Selector"], },
	[60901960] = { npc = 125388, label = L["Vagath the Betrayed"], },
	[42406990] = { npc = 125820, label = L["Imp Mother Laglath"], },
}
for k, v in pairs(DB.rares.Krokuun) do
	DB.points[mapFile(1135)][k] = v
	DB.points[mapFile(1135)][k]["rare"] = true
end
-- Antoran Wastes
DB.rares.AntoranWastes = {
	[73507200] = { npc = 127090, quest = 48832, label = L["Admiral Rel'var"], },
	[74905700] = { npc = 127096, quest = 48837, label = L["All-Seer Xanarian"], },
	[61703690] = { npc = 122958, quest = 47561, label = L["Blistermaw"], },
	[61402100] = { npc = 127376, quest = 48867, label = L["Chief Alchemist Munculus"], },
	[80506280] = { npc = 127084, quest = 48831, label = L["Commander Texlaz"], }, -- portal position
	[55704590] = { npc = 122999, quest = 47566, label = L["Gar'zoth"], },
	[63102520] = { npc = 127288, quest = 48835, label = L["Houndmaster Kerrax"], }, -- Entrance
	[61104570] = { npc = 126946, quest = 48830, label = L["Inquisitor Vethroz"], }, --Path Start
	[62305350] = { npc = 126254, quest = 48828, label = L["Lieutenant Xakaar"], },
	[57403290] = { npc = 122947, quest = 47552, label = L["Mistress Il'thendra"], }, -- Inside Building
	[65602660] = { npc = 127705, quest = 48777, label = L["Mother Rosula"], }, -- Same as Puscilla
	[65602660] = { npc = 126040, quest = 48467, label = L["Puscilla"], }, -- Cave Entrance
	[54703910] = { npc = 127581, quest = 48870, label = L["The Many-Faced Devourer"], }, -- Spot to Summon
	[64304820] = { npc = 126208, quest = 48827, label = L["Varga"], }, -- Cave Entrance
	[66005410] = { npc = 126115, quest = 48466, label = L["Ven'orn"], }, -- Cave Entrance
	[55702190] = { npc = 127300, quest = 48866, label = L["Void Warden Valsuran"], },
	[52903620] = { npc = 126199, quest = 48465, label = L["Vrax'thul"], },
	[52902940] = { npc = 127291, quest = 48836, label = L["Watcher Aival"], },
	[50905530] = { npc = 127118, quest = 48834, label = L["Worldsplitter Skuul"], },
	[61406510] = { npc = 126338, quest = 48829, label = L["Wrath-Lord Yarez"], },}
for k, v in pairs(DB.rares.AntoranWastes) do
	DB.points[mapFile(1171)][k] = v
	DB.points[mapFile(1171)][k]["rare"] = true
end

-- /////////////////////////////////
-- Entrance
-- /////////////////////////////////
--[[
DB.entrances = {
	[50201710] = { label = format(L["Entrance of %s"], L["Khazaduum"]), },
}

for k, v in pairs(DB.entrances) do
	DB.points[mapFile(1135)][k] = v
	DB.points[mapFile(1135)][k]["entrance"] = true
end
]]

-- /////////////////////////////////
-- Felbloom
-- /////////////////////////////////
DB.felbloom = {}
DB.felbloom.Krokuun = {
	[56365786] = {  },
}
for k, v in pairs(DB.felbloom.Krokuun) do
	DB.points[mapFile(1135)][k] = v
	DB.points[mapFile(1135)][k]["felbloom"] = true
	DB.points[mapFile(1135)][k]["label"] = L["Felbloom"]
end

DB.felbloom.AntoranWastes = {
	[69013346] = {},
}
for k, v in pairs(DB.felbloom.AntoranWastes) do
	DB.points[mapFile(1171)][k] = v
	DB.points[mapFile(1171)][k]["felbloom"] = true
	DB.points[mapFile(1171)][k]["label"] = L["Felbloom"]
end
