local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "ruRU", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - Аргус"
L["Shows notable points of interest in Argus."] = "Отображает важные достопримечательности Аргуса."

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "Эти настройки управляют внешним видом значков."
L["Icon settings"] = "Настройки значков"
L["Icon Scale"] = "Размер значков"
L["The scale of the icons."] = "Управляет размером значков."
L["Icon Alpha"] = "Прозрачность значков"
L["The transparency of the icons."] = "Управляет прозрачностью значков."

-- What to Display
L["What to display"] = "Что отображать"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "Эти настройки определяют, какие типы значков отображаются на карте мира и мини-карте."
L["Entrance"] = "Вход"
L["Show the entrances to caves and other special locations."] = "Отображает входы в пещеры и другие особые места."
L["Rare mobs"] = "Редкие существа"
L["Show rare creature locations even when they have not spawned yet."] = "Отображает места появления редких существ, даже если они ещё не появились."
L["Others"] = "Прочее"
L["Show all other miscellaneous nodes."] = "Отображает все остальные различные точки."

-- AddOn Settings
L["AddOn Settings"] = "Настройки аддона"
L["Query from server"] = "Запрашивать с сервера"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "Запрашивает у сервера локализованные названия. Первый поиск может быть немного медленнее, но найденные названия кэшируются для ускорения последующих поисков."
L["Show note"] = "Показывать примечание"
L["Show additional notes for a node when available."] = "Отображает дополнительные примечания к точке, если они доступны."
L["Hide looted mobs"] = "Скрывать обобранных существ"
L["Hide rare elite creatures that have been killed and looted today."] = "Скрывает редких элитных существ, убитых и обобранных сегодня."
L["Reset hidden nodes"] = "Сбросить скрытые точки"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "Показывает все точки, которые вы вручную скрыли щелчком правой кнопкой мыши и выбором «Скрыть»."
L["Show coordinates"] = "Показывать координаты"
L["Show a node's coordinates."] = "Отображает координаты точки."

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "Драгоценные реликвии аугари"
L["Long-Lost Augari Treasure"] = "Давно потерянное сокровище аугари"
L["Eredar War Supplies"] = "Военные припасы эредаров"
L["Legion War Supplies"] = "Военные припасы Легиона"
L["Timeworn Fel Chest"] = "Осквернённый сундук, потрёпанный временем"
L["Ancient Legion War Cache"] = "Древний военный тайник Легиона"
L["Fel-Bound Chest"] = "Сундук, связанный со Скверной"
L["Forgotten Legion Supplies"] = "Забытые припасы Легиона"
L["Legion Treasure Hoard"] = "Сокровищница Легиона"
L["Void-Seeped Cache"] = "Тайник, пропитанный Бездной"
L["Ancient Eredar Cache"] = "Древний тайник эредаров"
L["Felbloom"] = "Скверноцвет"
L["Hide completed rares and treasures"] = "Скрывать завершённых редких существ и сокровища"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "Скрывает редких существ и группы ежедневных сокровищ, уже собранные сегодня."
L["Treasure Chest"] = "Сундук с сокровищами"
L["Unstable Nether Portal"] = "Нестабильный портал в Круговерть Пустоты"
L["Add all treasure nodes to TomTom waypoints"] = "Добавить все точки сокровищ в маршрутные точки TomTom"
L["QuestID"] = "ID задания"
end
