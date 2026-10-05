local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "deDE", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - Argus"
L["Shows notable points of interest in Argus."] = "Zeigt bemerkenswerte Orte auf Argus an."

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "Diese Einstellungen bestimmen das Erscheinungsbild der Symbole."
L["Icon settings"] = "Symboleinstellungen"
L["Icon Scale"] = "Symbolgröße"
L["The scale of the icons."] = "Bestimmt die Größe der Symbole."
L["Icon Alpha"] = "Symboltransparenz"
L["The transparency of the icons."] = "Bestimmt die Transparenz der Symbole."

-- What to Display
L["What to display"] = "Anzuzeigende Elemente"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "Diese Einstellungen bestimmen, welche Arten von Symbolen auf der Weltkarte und Minikarte angezeigt werden."
L["Entrance"] = "Eingang"
L["Show the entrances to caves and other special locations."] = "Zeigt die Eingänge zu Höhlen und anderen besonderen Orten an."
L["Rare mobs"] = "Seltene Kreaturen"
L["Show rare creature locations even when they have not spawned yet."] = "Zeigt Fundorte seltener Kreaturen an, auch wenn sie noch nicht erschienen sind."
L["Others"] = "Andere"
L["Show all other miscellaneous nodes."] = "Zeigt alle anderen verschiedenen Kartenpunkte an."

-- AddOn Settings
L["AddOn Settings"] = "AddOn-Einstellungen"
L["Query from server"] = "Vom Server abfragen"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "Fragt lokalisierte Namen beim Server ab. Die erste Abfrage kann etwas langsamer sein, danach werden die Namen für schnellere Abfragen zwischengespeichert."
L["Show note"] = "Notiz anzeigen"
L["Show additional notes for a node when available."] = "Zeigt zusätzliche Notizen zu einem Kartenpunkt an, sofern verfügbar."
L["Hide looted mobs"] = "Geplünderte Kreaturen ausblenden"
L["Hide rare elite creatures that have been killed and looted today."] = "Blendet seltene Elitekreaturen aus, die heute getötet und geplündert wurden."
L["Reset hidden nodes"] = "Ausgeblendete Kartenpunkte zurücksetzen"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "Zeigt alle Kartenpunkte an, die du durch Rechtsklick und Auswahl von „Ausblenden“ manuell verborgen hast."
L["Show coordinates"] = "Koordinaten anzeigen"
L["Show a node's coordinates."] = "Zeigt die Koordinaten eines Kartenpunkts an."

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "Kostbare Erinnerungsstücke der Augari"
L["Long-Lost Augari Treasure"] = "Lange verlorener Schatz der Augari"
L["Eredar War Supplies"] = "Eredar-Kriegsvorräte"
L["Legion War Supplies"] = "Kriegsvorräte der Legion"
L["Timeworn Fel Chest"] = "Zeitgezeichnete Teufelstruhe"
L["Ancient Legion War Cache"] = "Uraltes Kriegslager der Legion"
L["Fel-Bound Chest"] = "Teufelsgebundene Truhe"
L["Forgotten Legion Supplies"] = "Vergessene Vorräte der Legion"
L["Legion Treasure Hoard"] = "Schatzhort der Legion"
L["Void-Seeped Cache"] = "Leerendurchtränktes Versteck"
L["Ancient Eredar Cache"] = "Uraltes Versteck der Eredar"
L["Felbloom"] = "Teufelsblüte"
L["Hide completed rares and treasures"] = "Abgeschlossene Seltene und Schätze ausblenden"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "Blendet seltene Kreaturen und tägliche Schatzgruppen aus, die heute bereits geplündert wurden."
L["Treasure Chest"] = "Schatztruhe"
L["Unstable Nether Portal"] = "Instabiles Netherportal"
L["Add all treasure nodes to TomTom waypoints"] = "Alle Schatzpunkte zu TomTom-Wegpunkten hinzufügen"
L["QuestID"] = "Quest-ID"
end
