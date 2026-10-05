local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "koKR", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - 아르거스"
L["Shows notable points of interest in Argus."] = "아르거스의 주요 관심 지점을 표시합니다."

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["Icon settings"] = "아이콘 설정"
L["Icon Scale"] = "아이콘 크기"
L["The scale of the icons."] = "아이콘의 크기를 조정합니다."
L["Icon Alpha"] = "아이콘 투명도"
L["The transparency of the icons."] = "아이콘의 투명도를 조정합니다."

-- What to Display
L["What to display"] = "표시할 항목"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "이 설정은 세계 지도와 미니맵에 표시할 아이콘 종류를 조정합니다."
L["Entrance"] = "입구"
L["Show the entrances to caves and other special locations."] = "동굴 입구와 기타 특별한 장소의 입구를 표시합니다."
L["Rare mobs"] = "희귀 몬스터"
L["Show rare creature locations even when they have not spawned yet."] = "희귀 생물이 아직 생성되지 않았어도 위치를 표시합니다."
L["Others"] = "기타"
L["Show all other miscellaneous nodes."] = "그 밖의 모든 기타 지점을 표시합니다."

-- AddOn Settings
L["AddOn Settings"] = "애드온 설정"
L["Query from server"] = "서버에서 조회"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "현지화된 이름을 가져오기 위해 서버에 조회 요청을 보냅니다. 처음 조회할 때는 다소 느릴 수 있지만, 이름을 찾은 후에는 캐시되어 이후 조회가 빨라집니다."
L["Show note"] = "메모 표시"
L["Show additional notes for a node when available."] = "사용 가능한 경우 지점의 추가 메모를 표시합니다."
L["Hide looted mobs"] = "전리품을 획득한 몬스터 숨기기"
L["Hide rare elite creatures that have been killed and looted today."] = "오늘 처치하고 전리품을 획득한 희귀 정예 생물을 숨깁니다."
L["Reset hidden nodes"] = "숨긴 지점 초기화"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "마우스 오른쪽 버튼을 클릭한 후 \"숨기기\"를 선택하여 직접 숨긴 모든 지점을 다시 표시합니다."
L["Show coordinates"] = "좌표 표시"
L["Show a node's coordinates."] = "지점의 좌표를 표시합니다."

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "귀중한 아우가리 유품"
L["Long-Lost Augari Treasure"] = "오래전에 잃어버린 아우가리 보물"
L["Eredar War Supplies"] = "에레다르 전쟁 보급품"
L["Legion War Supplies"] = "군단 전쟁 보급품"
L["Timeworn Fel Chest"] = "세월에 닳은 지옥 상자"
L["Ancient Legion War Cache"] = "고대 군단 전쟁 보관함"
L["Fel-Bound Chest"] = "지옥에 속박된 상자"
L["Forgotten Legion Supplies"] = "잊힌 군단 보급품"
L["Legion Treasure Hoard"] = "군단 보물 무더기"
L["Void-Seeped Cache"] = "공허에 물든 보관함"
L["Ancient Eredar Cache"] = "고대 에레다르 보관함"
L["Felbloom"] = "지옥꽃"
L["Hide completed rares and treasures"] = "완료한 희귀 생물 및 보물 숨기기"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "오늘 이미 전리품을 획득한 희귀 생물과 일일 보물 그룹을 숨깁니다."
L["Treasure Chest"] = "보물 상자"
L["Unstable Nether Portal"] = "불안정한 황천 차원문"
L["Add all treasure nodes to TomTom waypoints"] = "모든 보물 지점을 TomTom 경유지에 추가"
L["QuestID"] = "퀘스트 ID"
end
