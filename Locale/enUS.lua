-- $Id: enUS.lua 58 2017-05-20 07:01:08Z arith $

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("HandyNotes_Argus", "enUS", true, true);

if L then
--@do-not-package@
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Broken Shore"] = "HandyNotes - Argus"
L["Shows the POIs in Broken Shore"] = "Shows the POIs in Argus"

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the look and feel of the icon."] = "These settings control the look and feel of the icon."
L["Icon settings"] = "Icon settings"
L["Icon Scale"] = "Icon Scale"
L["The scale of the icons"] = "The scale of the icons"
L["Icon Alpha"] = "Icon Alpha"
L["The alpha transparency of the icons"] = "The alpha transparency of the icons"
-- What to Display
L["What to display"] = "What to display"
L["These settings control what type of icons to be displayed."] = "These settings control what type of icons to be displayed on the WorldMap and Minimap."
L["Show the entrance of specific cave or the entrance to special location."] = "Show the entrance of specific cave or the entrance to special location."
L["Rare mobs"] = "Rare mobs"
L["Show rare mobs' location even if any of them has not yet spawned."] = "Show rare mobs' location even if any of them has not yet spawned."
L["Others"] = "Others"
L["Show all the other misc nodes."] = "Show all the other misc nodes."
-- AddOn Settings
L["AddOn Settings"] = "AddOn Settings"
L["Query from server"] = "Query from server"
L["Send query request to server to lookup localized names. May be a little bit slower for the first time lookup but would be very fast once the name is found and cached."] = "Send query request to server to lookup localized names. May be a little bit slower for the first time lookup but would be very fast once the name is found and cached."
L["Show note"] = "Show note"
L["Show the node's additional notes when it's available."] = "Show the node's additional notes when it's available."
L["Hide looted mobs"] = "Hide looted mobs"
L["Hide the rare elite mobs which have been killed and looted today."] = "Hide the rare elite mobs which have been killed and looted today."
L["Reset hidden nodes"] = "Reset hidden nodes"
L["Show all nodes that you manually hid by right-clicking on them and choosing \"hide\"."] = "Show all nodes that you manually hid by right-clicking on them and choosing \"hide\"."
L["Show coordinate"] = "Show coordinate"
L["Show node's coordinate information."] = "Show node's coordinate information."

-- //////////////////////////
-- Common
-- //////////////////////////

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
--@end-do-not-package@
--@localization(locale="enUS", format="lua_additive_table", handle-subnamespaces="none", handle-unlocalized="ignore", namespace="")@
L["Hide completed rares and treasures"] = "Hide completed rares and treasures"
L["Hide rares and daily treasure groups which have already been looted today."] = "Hide rares and daily treasure groups which have already been looted today."
end
