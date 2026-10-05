local _G = getfenv(0)
local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):NewLocale("HandyNotes_Argus", "ptBR", false)

if not L then return end

if L then
-- //////////////////////////
-- Addon
-- //////////////////////////
L["HandyNotes - Argus"] = "HandyNotes - Argus"
L["Shows notable points of interest in Argus."] = "Mostra pontos de interesse importantes em Argus."

-- //////////////////////////
-- Configs
-- //////////////////////////
-- Icon Settings
L["These settings control the appearance of the icons."] = "Estas configurações controlam a aparência dos ícones."
L["Icon settings"] = "Configurações de ícones"
L["Icon Scale"] = "Escala dos ícones"
L["The scale of the icons."] = "Controla o tamanho dos ícones."
L["Icon Alpha"] = "Transparência dos ícones"
L["The transparency of the icons."] = "Controla a transparência dos ícones."

-- What to Display
L["What to display"] = "O que mostrar"
L["These settings control which types of icons are displayed on the World Map and Minimap."] = "Estas configurações controlam quais tipos de ícones são mostrados no mapa-múndi e no minimapa."
L["Entrance"] = "Entrada"
L["Show the entrances to caves and other special locations."] = "Mostra as entradas de cavernas e de outros locais especiais."
L["Rare mobs"] = "Criaturas raras"
L["Show rare creature locations even when they have not spawned yet."] = "Mostra os locais de criaturas raras mesmo quando elas ainda não surgiram."
L["Others"] = "Outros"
L["Show all other miscellaneous nodes."] = "Mostra todos os outros pontos diversos."

-- AddOn Settings
L["AddOn Settings"] = "Configurações do AddOn"
L["Query from server"] = "Consultar o servidor"
L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."] = "Consulta o servidor para obter nomes localizados. A primeira consulta pode ser um pouco mais lenta, mas os nomes são armazenados em cache para pesquisas futuras mais rápidas."
L["Show note"] = "Mostrar nota"
L["Show additional notes for a node when available."] = "Mostra notas adicionais de um ponto quando disponíveis."
L["Hide looted mobs"] = "Ocultar criaturas saqueadas"
L["Hide rare elite creatures that have been killed and looted today."] = "Oculta criaturas de elite raras que foram derrotadas e saqueadas hoje."
L["Reset hidden nodes"] = "Redefinir pontos ocultos"
L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."] = "Mostra todos os pontos que você ocultou manualmente ao clicar com o botão direito e selecionar \"Ocultar\"."
L["Show coordinates"] = "Mostrar coordenadas"
L["Show a node's coordinates."] = "Mostra as coordenadas de um ponto."

-- //////////////////////////
-- Others
-- //////////////////////////
L["Precious Augari Keepsakes"] = "Lembranças preciosas dos augari"
L["Long-Lost Augari Treasure"] = "Tesouro augari há muito perdido"
L["Eredar War Supplies"] = "Suprimentos de guerra eredar"
L["Legion War Supplies"] = "Suprimentos de guerra da Legião"
L["Timeworn Fel Chest"] = "Baú vil desgastado pelo tempo"
L["Ancient Legion War Cache"] = "Esconderijo de guerra antigo da Legião"
L["Fel-Bound Chest"] = "Baú vinculado ao vil"
L["Forgotten Legion Supplies"] = "Suprimentos esquecidos da Legião"
L["Legion Treasure Hoard"] = "Acervo de tesouros da Legião"
L["Void-Seeped Cache"] = "Esconderijo impregnado pelo Caos"
L["Ancient Eredar Cache"] = "Esconderijo eredar antigo"
L["Felbloom"] = "Flor vil"
L["Hide completed rares and treasures"] = "Ocultar raros e tesouros concluídos"
L["Hide rare creatures and daily treasure groups that have already been looted today."] = "Oculta criaturas raras e grupos de tesouros diários que já foram saqueados hoje."
L["Treasure Chest"] = "Baú de tesouro"
L["Unstable Nether Portal"] = "Portal Instável do Caos"
L["Add all treasure nodes to TomTom waypoints"] = "Adicionar todos os pontos de tesouro aos pontos de navegação do TomTom"
L["QuestID"] = "ID da missão"
end
