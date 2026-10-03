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

local DB = {}

private.DB = DB

DB.points = {
	--[[ structure:
	[mapID] = { -- "_terrain1" etc will be stripped from attempts to fetch this
		[coord] = {
			label=[string], 		-- label: text that'll be the label, optional
			npc=[id], 				-- related npc id, used to display names in tooltip
			type = [string], 			-- the pre-define icon type which can be found in Constant.lua
			class = [CLASS NAME],		-- specified the class name so that this node will only be available for this class
			note=[string],			-- additional notes for this node
		},
	},
	--]]
	-- Krokuun
	[830] = {
		[63118106] = { portal=true, label=format(L["Portal to %s"], BZ["The Vindicaar"]), },
		[62348230] = { portal=true, label=format(L["Portal to %s"], BZ["Dalaran"]), },
	},
	-- Mac'Aree
	[882] = {
		[55468299] = { portal=true, label=format(L["Portal to %s"], BZ["The Vindicaar"]), },
	},
	-- Antoran Wastes
	[885] = {
	},
}

-- /////////////////////////////////
-- Treasure Chest
-- /////////////////////////////////
DB.treasures = {}
DB.treasures.Krokuun = {
	[55947421] = { label=L["Precious Augari Keepsakes"], object=277344, quest=49156, },
	[75186978] = { label=L["Long-Lost Augari Treasure"], object=277343, quest=49154, },

	-- Seven daily cache groups, rebuilt from the maintained Legion object data.
	-- All spawn points in a group share one object ID and hidden daily quest.
	-- Object 272771, hidden quest 48339
	[73503450] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[70503080] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[66003520] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[68503880] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[63104250] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[61306650] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[53906770] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[52906270] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[50106670] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[46206190] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[45805850] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[43605550] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[43505090] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[46504910] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[44904350] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },
	[47604200] = { label=L["Eredar War Supplies"], object=272771, quest=48339 },

	-- Object 272456, hidden quest 47999
	[46303630] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[47702890] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[49103350] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[49803670] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[51103210] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[52003670] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[53903050] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[55903680] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[57503270] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[58303630] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[59703950] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[59604420] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[62504160] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[62803800] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[61503590] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[59503280] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[62303210] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[60802870] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[57702620] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[60502370] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[59201880] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[62502580] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },
	[65902300] = { label=L["Eredar War Supplies"], object=272456, quest=47999 },

	-- Object 273222, hidden quest 48000
	[69805770] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[68806210] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[71906170] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[72806490] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[75106450] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[74106780] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[73507130] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[71807550] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[69807840] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[69208410] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[67907150] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },
	[63006820] = { label=L["Eredar War Supplies"], object=273222, quest=48000 },

	-- Object 271849, hidden quest 47753
	[52707610] = { label=L["Eredar War Supplies"], object=271849, quest=47753 },
	[53107310] = { label=L["Eredar War Supplies"], object=271849, quest=47753 },
	[55208110] = { label=L["Eredar War Supplies"], object=271849, quest=47753 },
	[58507980] = { label=L["Eredar War Supplies"], object=271849, quest=47753 },
	[60207600] = { label=L["Eredar War Supplies"], object=271849, quest=47753 },
	[59307330] = { label=L["Eredar War Supplies"], object=271849, quest=47753 },
	[58207180] = { label=L["Eredar War Supplies"], object=271849, quest=47753 },
	[56807220] = { label=L["Eredar War Supplies"], object=271849, quest=47753 },

	-- Object 272455, hidden quest 47752
	[59705220] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[58505060] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[57005470] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[55505230] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[55505850] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[53305100] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[52205420] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[50405130] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[52005960] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },
	[49605880] = { label=L["Eredar War Supplies"], object=272455, quest=47752 },

	-- Object 272770, hidden quest 48336
	[36907430] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[36506760] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[37106410] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[40606070] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[40505550] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[38905910] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[36605890] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[35405620] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[33605530] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[29605770] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[30306410] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[31906760] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[32107460] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[28307130] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },
	[26106810] = { label=L["Eredar War Supplies"], object=272770, quest=48336 },

	-- Object 271850, hidden quest 47997
	[49807580] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[48307370] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[45907300] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[45906790] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[43806970] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[43806700] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[40407400] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[42707550] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[45907750] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[41107990] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[44008130] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[46807980] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[46508520] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[44208640] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[42508770] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
	[41608380] = { label=L["Eredar War Supplies"], object=271850, quest=47997 },
}
for k, v in pairs(DB.treasures.Krokuun) do
	DB.points[830][k] = v
	DB.points[830][k]["treasure"] = true
end

DB.treasures.AntoranWastes = {
	[75605266] = { label=L["Timeworn Fel Chest"], quest=49021 },

	[65903980] = { label=L["Ancient Legion War Cache"], quest=49018 },
	[52202720] = { label=L["Fel-Bound Chest"], quest=49019 },
	[58805920] = { label=L["Forgotten Legion Supplies"], quest=49017 },
	[49005930] = { label=L["Legion Treasure Hoard"], quest=49020 },

	-- Nine daily cache groups. Looting any spawn hides its complete group.
	[57806496] = { label=L["Legion War Supplies"], quest=48382 },
	[60897052] = { label=L["Legion War Supplies"], quest=48382 },
	[62106933] = { label=L["Legion War Supplies"], quest=48382 },
	[64475836] = { label=L["Legion War Supplies"], quest=48382 },
	[67516988] = { label=L["Legion War Supplies"], quest=48382 },
	[69406320] = { label=L["Legion War Supplies"], quest=48382 },

	[51693779] = { label=L["Legion War Supplies"], quest=48383 },
	[53763556] = { label=L["Legion War Supplies"], quest=48383 },
	[55103930] = { label=L["Legion War Supplies"], quest=48383 },
	[56393555] = { label=L["Legion War Supplies"], quest=48383 },
	[58403090] = { label=L["Legion War Supplies"], quest=48383 },
	[59883581] = { label=L["Legion War Supplies"], quest=48383 },

	[59101940] = { label=L["Legion War Supplies"], quest=48384 },
	[63702569] = { label=L["Legion War Supplies"], quest=48384 },
	[66581711] = { label=L["Legion War Supplies"], quest=48384 },
	[64062748] = { label=L["Legion War Supplies"], quest=48384 },

	[55544742] = { label=L["Legion War Supplies"], quest=48385 },
	[55925384] = { label=L["Legion War Supplies"], quest=48385 },
	[57735890] = { label=L["Legion War Supplies"], quest=48385 },
	[48225455] = { label=L["Legion War Supplies"], quest=48385 },

	[72404210] = { label=L["Legion War Supplies"], quest=48387 },
	[65522830] = { label=L["Legion War Supplies"], quest=48387 },
	[66603641] = { label=L["Legion War Supplies"], quest=48387 },
	[68993348] = { label=L["Legion War Supplies"], quest=48387 },
	[69503966] = { label=L["Legion War Supplies"], quest=48387 },
	[63703650] = { label=L["Legion War Supplies"], quest=48387 },
	[68004020] = { label=L["Legion War Supplies"], quest=48387 },
	[73504670] = { label=L["Legion War Supplies"], quest=48387 },

	[55991401] = { label=L["Legion War Supplies"], quest=48388 },
	[59581389] = { label=L["Legion War Supplies"], quest=48388 },
	[55402040] = { label=L["Legion War Supplies"], quest=48388 },
	[54202800] = { label=L["Legion War Supplies"], quest=48388 },
	[59301750] = { label=L["Legion War Supplies"], quest=48388 },
	[55901720] = { label=L["Legion War Supplies"], quest=48388 },
	[56002660] = { label=L["Legion War Supplies"], quest=48388 },
	[51502600] = { label=L["Legion War Supplies"], quest=48388 },

	[60344695] = { label=L["Legion War Supplies"], quest=48389 },
	[60684104] = { label=L["Legion War Supplies"], quest=48389 },
	[62965008] = { label=L["Legion War Supplies"], quest=48389 },
	[64315036] = { label=L["Legion War Supplies"], quest=48389 },
	[65225180] = { label=L["Legion War Supplies"], quest=48389 },
	[65484091] = { label=L["Legion War Supplies"], quest=48389 },
	[58704330] = { label=L["Legion War Supplies"], quest=48389 },
	[60204360] = { label=L["Legion War Supplies"], quest=48389 },
	[62104580] = { label=L["Legion War Supplies"], quest=48389 },
	[64204230] = { label=L["Legion War Supplies"], quest=48389 },
	[64604010] = { label=L["Legion War Supplies"], quest=48389 },
	[64204710] = { label=L["Legion War Supplies"], quest=48389 },

	[73306850] = { label=L["Legion War Supplies"], quest=48390 },
	[76465651] = { label=L["Legion War Supplies"], quest=48390 },
	[76565823] = { label=L["Legion War Supplies"], quest=48390 },
	[77955619] = { label=L["Legion War Supplies"], quest=48390 },
	[72205680] = { label=L["Legion War Supplies"], quest=48390 },
	[77205890] = { label=L["Legion War Supplies"], quest=48390 },
	[80506160] = { label=L["Legion War Supplies"], quest=48390 },
	[82606510] = { label=L["Legion War Supplies"], quest=48390 },
	[82506750] = { label=L["Legion War Supplies"], quest=48390 },
	[81306860] = { label=L["Legion War Supplies"], quest=48390 },
	[77207510] = { label=L["Legion War Supplies"], quest=48390 },
	[72607270] = { label=L["Legion War Supplies"], quest=48390 },
	[76506480] = { label=L["Legion War Supplies"], quest=48390 },
	[77306410] = { label=L["Legion War Supplies"], quest=48390 },

	[63075799] = { label=L["Legion War Supplies"], quest=48391 },
	[65215506] = { label=L["Legion War Supplies"], quest=48391 },
	[65224956] = { label=L["Legion War Supplies"], quest=48391 },
	[68005070] = { label=L["Legion War Supplies"], quest=48391 },
	[69785509] = { label=L["Legion War Supplies"], quest=48391 },
	[71205442] = { label=L["Legion War Supplies"], quest=48391 },
	[67404780] = { label=L["Legion War Supplies"], quest=48391 },
	[66604670] = { label=L["Legion War Supplies"], quest=48391 },
	[65105060] = { label=L["Legion War Supplies"], quest=48391 },
	[63505620] = { label=L["Legion War Supplies"], quest=48391 },
	[63105750] = { label=L["Legion War Supplies"], quest=48391 },
	[64105860] = { label=L["Legion War Supplies"], quest=48391 },
	[72185677] = { label=L["Legion War Supplies"], quest=48391 },
}
for k, v in pairs(DB.treasures.AntoranWastes) do
	DB.points[885][k] = v
	DB.points[885][k]["treasure"] = true
end

DB.treasures.MacAree = {
	-- Eight daily groups. Coordinates are de-duplicated from the maintained
	-- LegionTreasures data, the original Argus database and Wowhead object maps.
	-- South (48346), Wowhead object 273301.
	[47206250] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[48106150] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[50107590] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[50906720] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[51807140] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[52806170] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[52808250] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[53006650] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[53328003] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[54825759] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[54806700] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[55167767] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[55407350] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[57506170] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[57507510] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[59476392] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[59906980] = { label=L["Ancient Eredar Cache"], quest=48346 },
	[60907060] = { label=L["Ancient Eredar Cache"], quest=48346 },

	-- North East (48350), Wowhead object 273407.
	[53342741] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[53603410] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[53902320] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[54902500] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[55003520] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[58704082] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[59602090] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[60503200] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[60503350] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[62302630] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[63302250] = { label=L["Ancient Eredar Cache"], quest=48350 },
	[63311994] = { label=L["Ancient Eredar Cache"], quest=48350 },

	-- South West (48351), Wowhead object 273412.
	[33805550] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[34205750] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[34206560] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[34305920] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[35605710] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[35705620] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[36306640] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[37106100] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[37206270] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[37205550] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[37805870] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[38106360] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[38506440] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[38506700] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[39205920] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[40505550] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[40506280] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[41106890] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[41606330] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[42305750] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[42406150] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[42605380] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[43506010] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[43617138] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[43776836] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[44005650] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[44446871] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[46007220] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[46907330] = { label=L["Ancient Eredar Cache"], quest=48351 },
	[47507080] = { label=L["Ancient Eredar Cache"], quest=48351 },

	-- East (48362), Wowhead object 273414.
	[59804660] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[60904370] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[61505550] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[61904270] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[62013276] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[62204080] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[62805035] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[63804530] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[64505950] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[64605600] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[64902950] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[65303560] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[65504190] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[65906010] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[66004690] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[66502900] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[67202820] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[67204620] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[67205370] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[67205690] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[67803190] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[68404890] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[68504130] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[68505310] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[68803710] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[69503270] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[69504490] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[69604960] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[70103380] = { label=L["Ancient Eredar Cache"], quest=48362 },
	[70505110] = { label=L["Ancient Eredar Cache"], quest=48362 },

	-- North (48357), Wowhead object 273415.
	[42501790] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[44601860] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[45101350] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[45102480] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[46101320] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[46501510] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[47602190] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[47901970] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[48201210] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[48401290] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[48602110] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[49502410] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[50001420] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[50002950] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[51702860] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[52601630] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[53001690] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[53300850] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[53401290] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[55001740] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[57821057] = { label=L["Ancient Eredar Cache"], quest=48357 },
	[58701330] = { label=L["Ancient Eredar Cache"], quest=48357 },

	-- Central (48371), Wowhead object 273439.
	[19704210] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[24703860] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[25263016] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[29003380] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[32604700] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[47103660] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[48704980] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[49003950] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[49503580] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[49805510] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[49904160] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[50605600] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[51004770] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[53604200] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[54624483] = { label=L["Ancient Eredar Cache"], quest=48371 },
	[59505870] = { label=L["Ancient Eredar Cache"], quest=48371 },

	-- West Void (48361), Wowhead object 273443.
	[18804160] = { label=L["Void-Seeped Cache"], quest=48361 },
	[19904650] = { label=L["Void-Seeped Cache"], quest=48361 },
	[20804030] = { label=L["Void-Seeped Cache"], quest=48361 },
	[22604470] = { label=L["Void-Seeped Cache"], quest=48361 },
	[24305670] = { label=L["Void-Seeped Cache"], quest=48361 },
	[24604110] = { label=L["Void-Seeped Cache"], quest=48361 },
	[25403490] = { label=L["Void-Seeped Cache"], quest=48361 },
	[25834447] = { label=L["Void-Seeped Cache"], quest=48361 },
	[26405180] = { label=L["Void-Seeped Cache"], quest=48361 },
	[26604880] = { label=L["Void-Seeped Cache"], quest=48361 },
	[27503950] = { label=L["Void-Seeped Cache"], quest=48361 },
	[28904422] = { label=L["Void-Seeped Cache"], quest=48361 },
	[29305040] = { label=L["Void-Seeped Cache"], quest=48361 },
	[29404010] = { label=L["Void-Seeped Cache"], quest=48361 },
	[30304820] = { label=L["Void-Seeped Cache"], quest=48361 },
	[32503660] = { label=L["Void-Seeped Cache"], quest=48361 },
	[33304330] = { label=L["Void-Seeped Cache"], quest=48361 },
	[34004170] = { label=L["Void-Seeped Cache"], quest=48361 },
	[35303588] = { label=L["Void-Seeped Cache"], quest=48361 },
	[35404690] = { label=L["Void-Seeped Cache"], quest=48361 },
	[37704230] = { label=L["Void-Seeped Cache"], quest=48361 },
	[37804840] = { label=L["Void-Seeped Cache"], quest=48361 },
	[39304730] = { label=L["Void-Seeped Cache"], quest=48361 },
	[40404820] = { label=L["Void-Seeped Cache"], quest=48361 },

	-- North Void (49264), Wowhead object 277637.
	[31552541] = { label=L["Void-Seeped Cache"], quest=49264 },
	[32402140] = { label=L["Void-Seeped Cache"], quest=49264 },
	[32912386] = { label=L["Void-Seeped Cache"], quest=49264 },
	[33102940] = { label=L["Void-Seeped Cache"], quest=49264 },
	[33752371] = { label=L["Void-Seeped Cache"], quest=49264 },
	[34102070] = { label=L["Void-Seeped Cache"], quest=49264 },
	[34303580] = { label=L["Void-Seeped Cache"], quest=49264 },
	[35303830] = { label=L["Void-Seeped Cache"], quest=49264 },
	[37102010] = { label=L["Void-Seeped Cache"], quest=49264 },
	[37583619] = { label=L["Void-Seeped Cache"], quest=49264 },
	[37902340] = { label=L["Void-Seeped Cache"], quest=49264 },
	[38103990] = { label=L["Void-Seeped Cache"], quest=49264 },
}
for k, v in pairs(DB.treasures.MacAree) do
	DB.points[882][k] = v
	DB.points[882][k]["treasure"] = true
end

-- /////////////////////////////////
-- rare mobs
-- /////////////////////////////////
DB.rares = {}
-- Krokuun
DB.rares.Krokuun = {
	[58407610] = { npc=120393, quest=48627, label=L["Siegemaster Voraan"], },
	[40704340] = { npc=125824, quest=48561, label=L["Khazaduum"], },
	[45305890] = { npc=124775, quest=48564, label=L["Commander Endaxis"], },
	[33307620] = { npc=122912, quest=48562, label=L["Commander Sathrenael"], },
	[38305980] = { npc=122911, quest=48563, label=L["Commander Vecaya"], },
	[70503370] = { npc=126419, quest=48667, label=L["Naroua <King of the Forest>"], },
	[52803110] = { npc=123464, quest=48565, label=L["Sister Subversia <Coven of Shivarra>"], },
	[54708120] = { npc=123689, quest=48628, label=L["Talestra the Vile"], },
	[70108140] = { npc=125479, quest=48665, label=L["Tar Spitter"], },
	--[69305940] = { npc=1, label=L["Tereck the Selector - Entrance"], },
	[69205940] = { npc=124804, quest=48664, label=L["Tereck the Selector"], },
	[60901960] = { npc=125388, quest=48091, label=L["Vagath the Betrayed"], },
	[42406990] = { npc=125820, quest=48666, label=L["Imp Mother Laglath"], },
}
for k, v in pairs(DB.rares.Krokuun) do
	DB.points[830][k] = v
	DB.points[830][k]["rare"] = true
end
-- Antoran Wastes
DB.rares.AntoranWastes = {
	[73507200] = { npc=127090, quest=48817, label=L["Admiral Rel'var"], },
	[74905700] = { npc=127096, quest=48818, label=L["All-Seer Xanarian"], },
	[61703690] = { npc=122958, quest=49183, label=L["Blistermaw"], },
	[61402100] = { npc=127376, quest=48865, label=L["Chief Alchemist Munculus"], },
	[80506280] = { npc=127084, quest=48816, label=L["Commander Texlaz"], }, -- portal position
	[55704590] = { npc=122999, quest=49241, label=L["Gar'zoth"], },
	[63102520] = { npc=127288, quest=48821, label=L["Houndmaster Kerrax"], }, -- Entrance
	[61104570] = { npc=126946, quest=48815, label=L["Inquisitor Vethroz"], }, --Path Start
	[62305350] = { npc=126254, quest=48813, label=L["Lieutenant Xakaar"], },
	[57403290] = { npc=122947, quest=49240, label=L["Mistress Il'thendra"], }, -- Inside Building
	[65602660] = { npc=127705, quest=48970, label=L["Mother Rosula"], }, -- Same as Puscilla
	[65602660] = { npc=126040, quest=48809, label=L["Puscilla"], }, -- Cave Entrance
	[54703910] = { npc=127581, quest=48966, label=L["The Many-Faced Devourer"], }, -- Spot to Summon
	[64304820] = { npc=126208, quest=48812, label=L["Varga"], }, -- Cave Entrance
	[66005410] = { npc=126115, quest=48811, label=L["Ven'orn"], }, -- Cave Entrance
	[55702190] = { npc=127300, quest=48824, label=L["Void Warden Valsuran"], },
	[52903620] = { npc=126199, quest=48810, label=L["Vrax'thul"], },
	[52902940] = { npc=127291, quest=48822, label=L["Watcher Aival"], },
	[50905530] = { npc=127118, quest=48820, label=L["Worldsplitter Skuul"], },
	[61406510] = { npc=126338, quest=48814, label=L["Wrath-Lord Yarez"], },}
for k, v in pairs(DB.rares.AntoranWastes) do
	DB.points[885][k] = v
	DB.points[885][k]["rare"] = true
end
-- Mac'Aree
DB.rares.MacAree = {
	[62695006] = { npc=126900, quest=48718, label=L["Instructor Tarahna"], },
	[33754831] = { npc=126867, quest=48705, label=L["Venomtail Skyfin"], },
	[41331224] = { npc=126864, quest=48702, label=L["Feasel the Muffin Thief"], },
}
for k, v in pairs(DB.rares.MacAree) do
	DB.points[882][k] = v
	DB.points[882][k]["rare"] = true
end

-- /////////////////////////////////
-- Entrance
-- /////////////////////////////////
--[[
DB.entrances = {
	[50201710] = { label=format(L["Entrance of %s"], L["Khazaduum"]), },
}

for k, v in pairs(DB.entrances) do
	DB.points[830][k] = v
	DB.points[830][k]["entrance"] = true
end
]]

-- /////////////////////////////////
-- Felbloom
-- /////////////////////////////////
DB.felbloom = {}
DB.felbloom.Krokuun = {
	[56365786] = {  },
	[54635520] = {  },
}
for k, v in pairs(DB.felbloom.Krokuun) do
	DB.points[830][k] = v
	DB.points[830][k]["felbloom"] = true
	DB.points[830][k]["label"] = L["Felbloom"]
end

DB.felbloom.AntoranWastes = {
	[69013346] = {},
}
for k, v in pairs(DB.felbloom.AntoranWastes) do
	DB.points[885][k] = v
	DB.points[885][k]["felbloom"] = true
	DB.points[885][k]["label"] = L["Felbloom"]
end

-- Fallen Soldier, Blessing if the Righteous
--[[
	[32847339] = {},
	[33846858] = {},
	[38646658] = {},
	[40247046] = {},
	[36376909] = {},
]]