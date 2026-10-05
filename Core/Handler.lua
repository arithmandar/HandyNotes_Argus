-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
-- Libraries
local string = _G.string
local format = string.format
local next, pairs, select = next, pairs, select
local GameTooltip, UnitClass = _G.GameTooltip, _G.UnitClass
local issecretvalue = _G.issecretvalue
local C_QuestLog = _G.C_QuestLog
local IsQuestFlaggedCompleted = C_QuestLog.IsQuestFlaggedCompleted
local GetTitleForQuestID = C_QuestLog.GetTitleForQuestID
local C_Spell = _G.C_Spell
local GetSpellInfo = C_Spell.GetSpellInfo
local C_TooltipInfo = _G.C_TooltipInfo
local IsIndoors, IsOutdoors = _G.IsIndoors, _G.IsOutdoors

-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local LH = LibStub("AceLocale-3.0"):GetLocale("HandyNotes", false)
local AceDB = LibStub("AceDB-3.0")

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes")
local addon = LibStub("AceAddon-3.0"):NewAddon(private.addon_name, "AceEvent-3.0")
addon.constants = private.constants
addon.constants.addon_name = private.addon_name

addon.descName 		= private.descName
addon.description 	= private.description
addon.pluginName 	= private.pluginName

addon.Name = FOLDER_NAME
_G.HandyNotes_Argus = addon

local profile

-- //////////////////////////////////////////////////////////////////////////
-- Resolve a localized creature name without relying on a hidden tooltip frame.
local function getCreatureNameByID(id)
	local tooltipData = C_TooltipInfo.GetHyperlink(("unit:Creature-0-0-0-0-%d"):format(id))
	local firstLine = tooltipData and tooltipData.lines and tooltipData.lines[1]
	local name = firstLine and firstLine.leftText
	if name and (not issecretvalue or not issecretvalue(name)) then
		return name
	end
end

local function getSpellName(spellID)
	local spellInfo = GetSpellInfo(spellID)
	return spellInfo and spellInfo.name
end

local function getQuestTitlebyID(id)
	local questTitle = GetTitleForQuestID(id)
	return questTitle
end

-- //////////////////////////////////////////////////////////////////////////
local function work_out_texture(point)
	local icon_key

	if (point.entrance) then icon_key = "entrance" end
	if (point.ramp) then icon_key = "ramp" end
	if (point.rare) then icon_key = "rare" end
	if (point.treasure) then icon_key = "treasure" end
	if (point.felbloom) then icon_key = "greenButton" end
	if (point.portal and not point.icon) then icon_key = "portal" end

	if (icon_key and private.constants.icon_texture[icon_key]) then
		return private.constants.icon_texture[icon_key]
	elseif (point.type and private.constants.icon_texture[point.type]) then
		return private.constants.icon_texture[point.type]
	-- use the icon specified in point data
	elseif (point.icon) then
		if (private.constants.icon_texture[point.icon]) then
			return private.constants.icon_texture[point.icon]
		else
			return point.icon
		end
	else
		return private.constants.defaultIcon
	end
end

local get_point_info = function(point)
	if point then
		if (point.treasure) then
			if not point.label then point.label = L["Treasure Chest"] end
			if not point.scale then point.scale = 1.0 end
			if not point.alpha then point.alpha = 0.5 end
		end
		if (point.rare) then
			if not point.alpha then point.alpha = 0.6 end
		end
		if (point.entrance) then
			if not point.scale then point.scale = 0.8 end
			if not point.alpha then point.alpha = 0.8 end
		end
		if (point.netherPortal) then
			if not point.label then point.label = L["Unstable Nether Portal"] end
			if not point.scale then point.scale = 1.4 end
			if not point.alpha then point.alpha = 0.6 end
		end

		local label = point.label or UNKNOWN
		local icon = work_out_texture(point)

		return label, icon, point.scale, point.alpha
	end
end

local get_point_info_by_coord = function(uMapID, coord)
	return get_point_info(private.DB.points[uMapID] and private.DB.points[uMapID][coord])
end

local function handle_tooltip(tooltip, point, coord)
	if point then
		if (point.quest) then
			if (profile.query_server) then
				local questTitle = getQuestTitlebyID(point.quest)
				if (questTitle) then
					tooltip:AddLine(QUESTS_COLON..questTitle, 1, 1, 1)
					tooltip:SetHyperlink(("quest:%d[%%s]"):format(point.quest))
				end
			end
			tooltip:AddDoubleLine(L["QuestID"], point.quest or UNKNOWN, 0.5, 0.5, 1, 0.5, 0.5, 1)
			if (IsQuestFlaggedCompleted(point.quest)) then
				tooltip:AddLine(ERR_QUEST_ALREADY_DONE, 0, 1, 0)
			end
		end
		if (point.label) then
			if (point.npc and profile.query_server) then
				tooltip:AddLine(getCreatureNameByID(point.npc) or point.label)
			else
				tooltip:AddLine(point.label)
			end
		end
		if (point.spell) then
			local spellName = getSpellName(point.spell)
			if (spellName) then
				tooltip:AddLine(spellName, 1, 1, 1, true)
			end
		end
		if (point.note and profile.show_note) then
			tooltip:AddLine("("..point.note..")", nil, nil, nil, true)
		end
		if (profile.show_coords and coord) then
			local x, y = HandyNotes:getXY(coord)
			tooltip:AddLine(format("%.2f, %.2f", x*100, y*100), 1, 1, 1, true)
		end
	else
		tooltip:SetText(UNKNOWN)
	end
	tooltip:Show()
end

local handle_tooltip_by_coord = function(tooltip, uMapID, coord)
	return handle_tooltip(tooltip, private.DB.points[uMapID] and private.DB.points[uMapID][coord], coord)
end

-- //////////////////////////////////////////////////////////////////////////
local PluginHandler = {}

function PluginHandler:OnEnter(uMapID, coord)
	local tooltip = GameTooltip
	if ( self:GetCenter() > UIParent:GetCenter() ) then -- compare X coordinate
		tooltip:SetOwner(self, "ANCHOR_LEFT")
	else
		tooltip:SetOwner(self, "ANCHOR_RIGHT")
	end
	handle_tooltip_by_coord(tooltip, uMapID, coord)
end

function PluginHandler:OnLeave(uMapID, coord)
	GameTooltip:Hide()
end

local function hideNode(button, uMapID, coord)
	private.hidden[uMapID][coord] = true
	addon:Refresh()
end

local function addTomTomWaypoint(button, uMapID, coord)
	if TomTom then
		local x, y = HandyNotes:getXY(coord)
		TomTom:AddWaypoint(uMapID, x, y, {
			title = get_point_info_by_coord(uMapID, coord),
			persistent = nil,
			minimap = true,
			world = true
		})
	end
end

local function addAllTreasureToWayPoint(button, uMapID)
	local points = private.DB.points[uMapID]
	if TomTom and points then
		for coord, point in pairs(points) do
			if point.treasure and private:ShouldShow(coord, point, uMapID) then
				local x, y = HandyNotes:getXY(coord)
				TomTom:AddWaypoint(uMapID, x, y, {
					title = point.label or L["Treasure Chest"],
					persistent = nil,
					minimap = true,
					world = true
				})
			end
		end
	end
end

function PluginHandler:OnClick(button, down, uMapID, coord)
	if (button == "RightButton" and not down) then
		MenuUtil.CreateContextMenu(self, function(owner, rootDescription)
			rootDescription:CreateTitle("HandyNotes - " .. addon.pluginName)

			if TomTom then
				rootDescription:CreateButton(LH["Add this location to TomTom waypoints"], function()
					addTomTomWaypoint(nil, uMapID, coord)
				end)
				rootDescription:CreateButton(L["Add all treasure nodes to TomTom waypoints"], function()
					addAllTreasureToWayPoint(nil, uMapID)
				end)
			end

			rootDescription:CreateDivider()
			rootDescription:CreateButton(HIDE, function()
				hideNode(nil, uMapID, coord)
			end)
		end)
	end
end

do
--	local tablepool = setmetatable({}, {__mode = 'k'})

	-- This is a custom iterator we use to iterate over every node in a given zone
	local currentMapID = nil
	local function iter(t, prestate)
		if not t then return nil end
		local state, value = next(t, prestate)
		while state do -- Have we reached the end of this zone?
			if value and private:ShouldShow(state, value, currentMapID) then
				local label, icon, scale, alpha = get_point_info(value)
				scale = (scale or 1) * (icon and icon.scale or 1) * profile.icon_scale
				alpha = (alpha or 1) * (icon and icon.alpha or 1) * profile.icon_alpha
				return state, nil, icon, scale, alpha
			end
			state, value = next(t, state) -- Get next data
		end
		return nil, nil, nil, nil, nil, nil
	end
--[[
	local function iterCont(t, prestate)
		if not t then return end
		local zone = t.C[t.Z]
		local data = private.DB.points[zone]
		local state, value

		while zone do
			if data then -- only if there is data for this zone
				state, value = next(data, prestate)
				while state do -- have we reached the end of this zone?
					if value and private:ShouldShow(state, value, currentMapID) then
						local label, icon, scale, alpha = get_point_info(value)
						scale = (scale or 1) * (icon and icon.scale or 1) * profile.icon_scale
						alpha = (alpha or 1) * (icon and icon.alpha or 1) * profile.icon_alpha
						return state, mapFile, icon, scale, alpha
					end
					state, value = next(data, state) -- get next data
				end
			end
			-- get next zone
			t.Z = next(t.C, t.Z)
			zone = t.C[t.Z]
			data = private.DB.points[zone]
			prestate = nil
		end
		wipe(t)
		tablepool[t] = true
	end
]]
	function PluginHandler:GetNodes2(uMapID, minimap)
--[[		local C = HandyNotes:GetContinentZoneList(uMapID) -- Is this a continent?
		if C and profile.showNodesOnContinentMap then -- Once we added a config section in config panel, user will be able to toggle this
			local tbl = next(tablepool) or {}
			tablepool[tbl] = nil
			tbl.C = C
			tbl.Z = next(C)
			tbl.contId = uMapID
			return iterCont, tbl, nil
		else
			local tbl = next(tablepool) or {}
			tablepool[tbl] = nil
			tbl.data = private.DB.points[uMapID]
			currentMapID = uMapID
			return iter, tbl, nil
		end
]]
		currentMapID = uMapID
		return iter, private.DB.points[uMapID], nil
	end

	function private:ShouldShow(coord, point, currentMapID)
		if (private.hidden[currentMapID] and private.hidden[currentMapID][coord]) then
			return false
		end
		if (point.entrance and not profile.show_entrance) then
			return false
		end
		if (point.ramp and not profile.show_ramp) then
			return false
		end
		if (point.rare and not profile.show_rare) then
			return false
		end
		if (point.others and not profile.show_others) then
			return false
		end
		if (point.treasure and not profile.show_treasure) then
			return false
		end
		if (point.shrine and not profile.show_shrine) then
			return false
		end
		if (point.infernalCore and not profile.show_infernalCores) then
			return false
		end
		if (point.tamer and not profile.show_tamer) then
			return false
		end
		if (point.netherPortal and not profile.show_netherPortals) then
			return false
		end
		if (point.dungeonLevel and point.dungeonLevel ~= currentLevel) then
			return false
		end
		if (point.hide_indoor and not profile.ignore_InOutDoor and IsIndoors()) then
			return false
		end
		if (point.hide_outdoor and not profile.ignore_InOutDoor and IsOutdoors()) then
			return false
		end
		if (point.rare and point.quest and profile.hide_completed and IsQuestFlaggedCompleted(point.quest)) then
			return false
		end
		-- Argus supply caches are grouped by hidden daily quests. Every possible
		-- spawn point in a group shares the same quest, so looting one cache hides
		-- the whole group until Blizzard resets the flag the following day.
		if (point.treasure and point.quest and profile.hide_completed and IsQuestFlaggedCompleted(point.quest)) then
			return false
		end
		-- this will check if any node is for specific class
		if (point.class and point.class ~= select(2, UnitClass("player"))) then
			return false
		end
		return true
	end
end

-- //////////////////////////////////////////////////////////////////////////
function addon:OnInitialize()
	self.db = AceDB:New(private.addon_name.."DB", private.constants.defaults)

	profile = self.db.profile
	private.db = profile
	private.hidden = self.db.char.hidden

	-- Initialize database with HandyNotes
	HandyNotes:RegisterPluginDB(addon.pluginName, PluginHandler, private.config.options)
end

function addon:OnEnable()
	for _, value in pairs( addon.constants.events ) do
		self:RegisterEvent( value );
	end
end

function addon:Refresh()
	self:SendMessage("HandyNotes_NotifyUpdate", addon.pluginName)
end

function addon:ZONE_CHANGED()
	addon:Refresh()
end

function addon:ZONE_CHANGED_INDOORS()
	addon:Refresh()
end

function addon:NEW_WMO_CHUNK()
	addon:Refresh()
end

function addon:ENCOUNTER_LOOT_RECEIVED()
	addon:Refresh()
end

function addon:LOOT_CLOSED()
	addon:Refresh()
end
--[[
function addon:CLOSE_WORLD_MAP()
	closeAllDropdowns()
end
]]
-- //////////////////////////////////////////////////////////////////////////
