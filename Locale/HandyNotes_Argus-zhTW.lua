local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "zhTW", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - 阿古斯"
L["Shows notable points of interest in Argus."] = "顯示阿古斯的重要地點。"

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "這些設定用於控制圖示的外觀。"
L["Icon settings"] = "圖示設定"
L["Icon Scale"] = "圖示大小"
L["The scale of the icons."] = "調整圖示的大小。"
L["Icon Alpha"] = "圖示透明度"
L["The transparency of the icons."] = "調整圖示的透明度。"

-- What to Display
L["What to display"] = "顯示內容"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "這些設定用於控制世界地圖和小地圖上顯示哪些類型的圖示。"
L["Entrance"] = "入口"
L["Show the entrances to caves and other special locations."] = "顯示洞穴入口和其他特殊地點的入口。"
L["Rare mobs"] = "稀有生物"
L["Show rare creature locations even when they have not spawned yet."] = "即使稀有生物尚未重生，也顯示其所在位置。"
L["Others"] = "其他"
L["Show all other miscellaneous nodes."] = "顯示所有其他雜項地點。"

-- AddOn Settings
L["AddOn Settings"] = "插件設定"
L["Query from server"] = "從伺服器查詢"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "向伺服器查詢本地化名稱。第一次查詢可能稍慢，但找到的名稱會被快取，以加快後續查詢。"
L["Show note"] = "顯示備註"
L["Show additional notes for a node when available."] = "如有額外備註，則顯示地點的補充說明。"
L["Hide looted mobs"] = "隱藏已拾取戰利品的生物"
L["Hide rare elite creatures that have been killed and looted today."] = "隱藏今天已擊殺並拾取戰利品的稀有精英生物。"
L["Reset hidden nodes"] = "重設隱藏地點"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "顯示所有以滑鼠右鍵點擊並選擇「隱藏」而手動隱藏的地點。"
L["Show coordinates"] = "顯示座標"
L["Show a node's coordinates."] = "顯示地點的座標資訊。"

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "珍貴的奧格里紀念品"
L["Long-Lost Augari Treasure"] = "失落已久的奧格里寶藏"
L["Eredar War Supplies"] = "艾瑞達戰爭補給品"
L["Legion War Supplies"] = "軍團戰爭補給品"
L["Timeworn Fel Chest"] = "飽經歲月的邪能寶箱"
L["Ancient Legion War Cache"] = "遠古軍團戰爭寶箱"
L["Fel-Bound Chest"] = "邪能束縛寶箱"
L["Forgotten Legion Supplies"] = "被遺忘的軍團補給品"
L["Legion Treasure Hoard"] = "軍團寶藏"
L["Void-Seeped Cache"] = "虛無浸染的寶箱"
L["Ancient Eredar Cache"] = "遠古艾瑞達寶箱"
L["Felbloom"] = "邪能花"
L["Hide completed rares and treasures"] = "隱藏已完成的稀有生物和寶藏"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "隱藏今天已拾取的稀有生物和每日寶藏群組。"
L["Treasure Chest"] = "寶箱"
L["Unstable Nether Portal"] = "不穩定的扭曲虛空傳送門"
L["Add all treasure nodes to TomTom waypoints"] = "將所有寶藏地點加入 TomTom 路徑點"
L["QuestID"] = "任務 ID"
end
