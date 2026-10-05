local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "zhCN", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - 阿古斯"
L["Shows notable points of interest in Argus."] = "显示阿古斯的重要地点。"

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "这些设置用于控制图标的外观。"
L["Icon settings"] = "图标设置"
L["Icon Scale"] = "图标大小"
L["The scale of the icons."] = "调整图标的大小。"
L["Icon Alpha"] = "图标透明度"
L["The transparency of the icons."] = "调整图标的透明度。"

-- What to Display
L["What to display"] = "显示内容"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "这些设置用于控制世界地图和小地图上显示哪些类型的图标。"
L["Entrance"] = "入口"
L["Show the entrances to caves and other special locations."] = "显示洞穴入口和其他特殊地点的入口。"
L["Rare mobs"] = "稀有生物"
L["Show rare creature locations even when they have not spawned yet."] = "即使稀有生物尚未刷新，也显示其所在位置。"
L["Others"] = "其他"
L["Show all other miscellaneous nodes."] = "显示所有其他杂项地点。"

-- AddOn Settings
L["AddOn Settings"] = "插件设置"
L["Query from server"] = "从服务器查询"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "向服务器查询本地化名称。首次查询可能稍慢，但找到的名称会被缓存，以加快后续查询。"
L["Show note"] = "显示备注"
L["Show additional notes for a node when available."] = "如果有额外备注，则显示地点的额外说明。"
L["Hide looted mobs"] = "隐藏已拾取战利品的生物"
L["Hide rare elite creatures that have been killed and looted today."] = "隐藏今天已经击杀并拾取过战利品的稀有精英生物。"
L["Reset hidden nodes"] = "重置隐藏地点"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "显示所有通过右键点击并选择“隐藏”而手动隐藏的地点。"
L["Show coordinates"] = "显示坐标"
L["Show a node's coordinates."] = "显示地点的坐标信息。"

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "珍贵的奥格里遗物"
L["Long-Lost Augari Treasure"] = "失落已久的奥格里宝藏"
L["Eredar War Supplies"] = "艾瑞达战争补给"
L["Legion War Supplies"] = "军团战争补给"
L["Timeworn Fel Chest"] = "历经岁月的邪能宝箱"
L["Ancient Legion War Cache"] = "远古军团战争宝箱"
L["Fel-Bound Chest"] = "邪能束缚宝箱"
L["Forgotten Legion Supplies"] = "被遗忘的军团补给"
L["Legion Treasure Hoard"] = "军团宝藏"
L["Void-Seeped Cache"] = "虚空浸染的宝箱"
L["Ancient Eredar Cache"] = "远古艾瑞达宝箱"
L["Felbloom"] = "邪能花"
L["Hide completed rares and treasures"] = "隐藏已完成的稀有生物和宝藏"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "隐藏今天已经拾取过的稀有生物和每日宝藏组。"
L["Treasure Chest"] = "宝箱"
L["Unstable Nether Portal"] = "不稳定的虚空传送门"
L["Add all treasure nodes to TomTom waypoints"] = "将所有宝藏地点添加到 TomTom 路径点"
L["QuestID"] = "任务 ID"
end
