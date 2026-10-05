local _G = getfenv(0)
local LibStub = _G.LibStub
local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("HandyNotes_Argus", "enUS", true, true);

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - Argus"
L["Shows notable points of interest in Argus."] = "Shows notable points of interest in Argus."

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "These settings control the appearance of the icons."
L["Icon settings"] = "Icon settings"
L["Icon Scale"] = "Icon Scale"
L["The scale of the icons."] = "The scale of the icons."
L["Icon Alpha"] = "Icon Alpha"
L["The transparency of the icons."] = "The transparency of the icons."

-- What to Display
L["What to display"] = "What to display"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "These settings control which types of icons are displayed on the World Map and Minimap."
L["Entrance"] = "Entrance"
L["Show the entrances to caves and other special locations."] = "Show the entrances to caves and other special locations."
L["Rare mobs"] = "Rare mobs"
L["Show rare creature locations even when they have not spawned yet."] = "Show rare creature locations even when they have not spawned yet."
L["Others"] = "Others"
L["Show all other miscellaneous nodes."] = "Show all other miscellaneous nodes."

-- AddOn Settings
L["AddOn Settings"] = "AddOn Settings"
L["Query from server"] = "Query from server"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."
L["Show note"] = "Show note"
L["Show additional notes for a node when available."] = "Show additional notes for a node when available."
L["Hide looted mobs"] = "Hide looted mobs"
L["Hide rare elite creatures that have been killed and looted today."] = "Hide rare elite creatures that have been killed and looted today."
L["Reset hidden nodes"] = "Reset hidden nodes"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."
L["Show coordinates"] = "Show coordinates"
L["Show a node's coordinates."] = "Show a node's coordinates."

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "Precious Augari Keepsakes"
L["Long-Lost Augari Treasure"] = "Long-Lost Augari Treasure"
L["Eredar War Supplies"] = "Eredar War Supplies"
L["Legion War Supplies"] = "Legion War Supplies"
L["Timeworn Fel Chest"] = "Timeworn Fel Chest"
L["Ancient Legion War Cache"] = "Ancient Legion War Cache"
L["Fel-Bound Chest"] = "Fel-Bound Chest"
L["Forgotten Legion Supplies"] = "Forgotten Legion Supplies"
L["Legion Treasure Hoard"] = "Legion Treasure Hoard"
L["Void-Seeped Cache"] = "Void-Seeped Cache"
L["Ancient Eredar Cache"] = "Ancient Eredar Cache"
L["Felbloom"] = "Felbloom"
L["Hide completed rares and treasures"] = "Hide completed rares and treasures"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "Hide rare creatures and daily treasure groups that have already been looted today."
L["Treasure Chest"] = "Treasure Chest"
L["Unstable Nether Portal"] = "Unstable Nether Portal"
L["Add all treasure nodes to TomTom waypoints"] = "Add all treasure nodes to TomTom waypoints"
L["QuestID"] = "Quest ID"
end
