local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "esMX", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - Argus"
L["Shows notable points of interest in Argus."] = "Muestra puntos de interés destacados en Argus."

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "Estas opciones controlan la apariencia de los iconos."
L["Icon settings"] = "Opciones de iconos"
L["Icon Scale"] = "Escala de iconos"
L["The scale of the icons."] = "Controla el tamaño de los iconos."
L["Icon Alpha"] = "Transparencia de iconos"
L["The transparency of the icons."] = "Controla la transparencia de los iconos."

-- What to Display
L["What to display"] = "Qué mostrar"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "Estas opciones controlan qué tipos de iconos se muestran en el mapa del mundo y el minimapa."
L["Entrance"] = "Entrada"
L["Show the entrances to caves and other special locations."] = "Muestra las entradas a cuevas y otros lugares especiales."
L["Rare mobs"] = "Criaturas raras"
L["Show rare creature locations even when they have not spawned yet."] = "Muestra las ubicaciones de criaturas raras incluso si aún no han aparecido."
L["Others"] = "Otros"
L["Show all other miscellaneous nodes."] = "Muestra todos los demás puntos diversos."

-- AddOn Settings
L["AddOn Settings"] = "Opciones del AddOn"
L["Query from server"] = "Consultar al servidor"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "Consulta al servidor los nombres localizados. La primera consulta puede ser un poco más lenta, pero los nombres se guardan en caché para futuras consultas más rápidas."
L["Show note"] = "Mostrar nota"
L["Show additional notes for a node when available."] = "Muestra notas adicionales de un punto cuando estén disponibles."
L["Hide looted mobs"] = "Ocultar criaturas saqueadas"
L["Hide rare elite creatures that have been killed and looted today."] = "Oculta las criaturas élite raras que se hayan matado y saqueado hoy."
L["Reset hidden nodes"] = "Restablecer puntos ocultos"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "Muestra todos los puntos que ocultaste manualmente al hacer clic derecho y seleccionar «Ocultar»."
L["Show coordinates"] = "Mostrar coordenadas"
L["Show a node's coordinates."] = "Muestra las coordenadas de un punto."

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "Recuerdos preciados de los augari"
L["Long-Lost Augari Treasure"] = "Tesoro augari perdido hace mucho"
L["Eredar War Supplies"] = "Suministros de guerra eredar"
L["Legion War Supplies"] = "Suministros de guerra de la Legión"
L["Timeworn Fel Chest"] = "Cofre vil desgastado por el tiempo"
L["Ancient Legion War Cache"] = "Alijo de guerra antiguo de la Legión"
L["Fel-Bound Chest"] = "Cofre vinculado a lo vil"
L["Forgotten Legion Supplies"] = "Suministros olvidados de la Legión"
L["Legion Treasure Hoard"] = "Tesoro acumulado de la Legión"
L["Void-Seeped Cache"] = "Alijo impregnado del Vacío"
L["Ancient Eredar Cache"] = "Alijo antiguo de los eredar"
L["Felbloom"] = "Flor vil"
L["Hide completed rares and treasures"] = "Ocultar raros y tesoros completados"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "Oculta las criaturas raras y los grupos de tesoros diarios que ya se hayan saqueado hoy."
L["Treasure Chest"] = "Cofre del tesoro"
L["Unstable Nether Portal"] = "Portal inestable del Vacío"
L["Add all treasure nodes to TomTom waypoints"] = "Agregar todos los puntos de tesoro a los puntos de ruta de TomTom"
L["QuestID"] = "ID de misión"
end
