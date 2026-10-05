local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "frFR", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - Argus"
L["Shows notable points of interest in Argus."] = "Affiche les points d’intérêt remarquables d’Argus."

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "Ces paramètres contrôlent l’apparence des icônes."
L["Icon settings"] = "Paramètres des icônes"
L["Icon Scale"] = "Taille des icônes"
L["The scale of the icons."] = "Contrôle la taille des icônes."
L["Icon Alpha"] = "Transparence des icônes"
L["The transparency of the icons."] = "Contrôle la transparence des icônes."

-- What to Display
L["What to display"] = "Éléments à afficher"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "Ces paramètres contrôlent les types d’icônes affichés sur la carte du monde et la minicarte."
L["Entrance"] = "Entrée"
L["Show the entrances to caves and other special locations."] = "Affiche les entrées des grottes et d’autres lieux particuliers."
L["Rare mobs"] = "Créatures rares"
L["Show rare creature locations even when they have not spawned yet."] = "Affiche les emplacements des créatures rares même lorsqu’elles ne sont pas encore apparues."
L["Others"] = "Autres"
L["Show all other miscellaneous nodes."] = "Affiche tous les autres points divers."

-- AddOn Settings
L["AddOn Settings"] = "Paramètres de l’AddOn"
L["Query from server"] = "Interroger le serveur"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "Interroge le serveur pour obtenir les noms localisés. La première recherche peut être légèrement plus lente, mais les noms sont mis en cache pour accélérer les recherches suivantes."
L["Show note"] = "Afficher la note"
L["Show additional notes for a node when available."] = "Affiche les notes supplémentaires d’un point lorsqu’elles sont disponibles."
L["Hide looted mobs"] = "Masquer les créatures pillées"
L["Hide rare elite creatures that have been killed and looted today."] = "Masque les créatures élites rares tuées et pillées aujourd’hui."
L["Reset hidden nodes"] = "Réinitialiser les points masqués"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "Affiche tous les points que vous avez masqués manuellement en faisant un clic droit puis en sélectionnant « Masquer »."
L["Show coordinates"] = "Afficher les coordonnées"
L["Show a node's coordinates."] = "Affiche les coordonnées d’un point."

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "Précieux souvenirs augari"
L["Long-Lost Augari Treasure"] = "Trésor augari perdu depuis longtemps"
L["Eredar War Supplies"] = "Fournitures de guerre érédar"
L["Legion War Supplies"] = "Fournitures de guerre de la Légion"
L["Timeworn Fel Chest"] = "Coffre gangrené usé par le temps"
L["Ancient Legion War Cache"] = "Cache de guerre antique de la Légion"
L["Fel-Bound Chest"] = "Coffre lié à la gangrène"
L["Forgotten Legion Supplies"] = "Fournitures oubliées de la Légion"
L["Legion Treasure Hoard"] = "Butin de trésors de la Légion"
L["Void-Seeped Cache"] = "Cache imprégnée du Vide"
L["Ancient Eredar Cache"] = "Cache érédar antique"
L["Felbloom"] = "Gangrefleur"
L["Hide completed rares and treasures"] = "Masquer les rares et trésors terminés"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "Masque les créatures rares et les groupes de trésors journaliers déjà pillés aujourd’hui."
L["Treasure Chest"] = "Coffre au trésor"
L["Unstable Nether Portal"] = "Portail du Néant instable"
L["Add all treasure nodes to TomTom waypoints"] = "Ajouter tous les points de trésor aux points de navigation TomTom"
L["QuestID"] = "ID de quête"
end
