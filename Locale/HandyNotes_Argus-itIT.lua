local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "itIT", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - Argus"
L["Shows notable points of interest in Argus."] = "Mostra punti di interesse importanti su Argus."

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "Queste impostazioni controllano l’aspetto delle icone."
L["Icon settings"] = "Impostazioni icone"
L["Icon Scale"] = "Dimensione icone"
L["The scale of the icons."] = "Controlla la dimensione delle icone."
L["Icon Alpha"] = "Trasparenza icone"
L["The transparency of the icons."] = "Controlla la trasparenza delle icone."

-- What to Display
L["What to display"] = "Cosa visualizzare"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "Queste impostazioni controllano quali tipi di icone vengono mostrati sulla mappa del mondo e sulla minimappa."
L["Entrance"] = "Ingresso"
L["Show the entrances to caves and other special locations."] = "Mostra gli ingressi alle caverne e ad altre posizioni speciali."
L["Rare mobs"] = "Creature rare"
L["Show rare creature locations even when they have not spawned yet."] = "Mostra le posizioni delle creature rare anche quando non sono ancora apparse."
L["Others"] = "Altro"
L["Show all other miscellaneous nodes."] = "Mostra tutti gli altri punti vari."

-- AddOn Settings
L["AddOn Settings"] = "Impostazioni AddOn"
L["Query from server"] = "Interroga il server"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "Interroga il server per i nomi localizzati. La prima ricerca potrebbe essere leggermente più lenta, ma i nomi vengono memorizzati nella cache per velocizzare le ricerche future."
L["Show note"] = "Mostra nota"
L["Show additional notes for a node when available."] = "Mostra note aggiuntive per un punto, quando disponibili."
L["Hide looted mobs"] = "Nascondi creature saccheggiate"
L["Hide rare elite creatures that have been killed and looted today."] = "Nasconde le creature élite rare uccise e saccheggiate oggi."
L["Reset hidden nodes"] = "Ripristina punti nascosti"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "Mostra tutti i punti che hai nascosto manualmente facendo clic con il pulsante destro e selezionando «Nascondi»."
L["Show coordinates"] = "Mostra coordinate"
L["Show a node's coordinates."] = "Mostra le coordinate di un punto."

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "Preziosi ricordi augari"
L["Long-Lost Augari Treasure"] = "Tesoro augari perduto da tempo"
L["Eredar War Supplies"] = "Rifornimenti di guerra eredar"
L["Legion War Supplies"] = "Rifornimenti di guerra della Legione"
L["Timeworn Fel Chest"] = "Forziere vile consumato dal tempo"
L["Ancient Legion War Cache"] = "Deposito di guerra antico della Legione"
L["Fel-Bound Chest"] = "Forziere legato al vile"
L["Forgotten Legion Supplies"] = "Rifornimenti dimenticati della Legione"
L["Legion Treasure Hoard"] = "Bottino del tesoro della Legione"
L["Void-Seeped Cache"] = "Deposito intriso del Vuoto"
L["Ancient Eredar Cache"] = "Deposito eredar antico"
L["Felbloom"] = "Fiore vile"
L["Hide completed rares and treasures"] = "Nascondi rari e tesori completati"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "Nasconde le creature rare e i gruppi di tesori giornalieri già saccheggiati oggi."
L["Treasure Chest"] = "Scrigno del tesoro"
L["Unstable Nether Portal"] = "Portale Instabile del Vuoto"
L["Add all treasure nodes to TomTom waypoints"] = "Aggiungi tutti i punti dei tesori ai punti di navigazione di TomTom"
L["QuestID"] = "ID missione"
end
