-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
-- Functions
local _G = getfenv(0)
local pairs = _G.pairs
local table = _G.table
local wipe = table.wipe
-- Libraries
-- ----------------------------------------------------------------------------
-- AddOn namespace.
-- ----------------------------------------------------------------------------
local _, private = ...
local LibStub = _G.LibStub;
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name);

local config = {}
private.config = config

config.options = {
	type = "group",
	name = addon.pluginName,
	desc = addon.description,
	get = function(info) return private.db[info[#info]] end,
	set = function(info, v)
		private.db[info[#info]] = v
		addon:SendMessage("HandyNotes_NotifyUpdate", addon.pluginName)
	end,
	args = {
		icon = {
			type = "group",
			name = L["Icon settings"],
			inline = true,
			order = 10,
			args = {
				desc = {
					name = L["These settings control the appearance of the icons."],
					type = "description",
					order = 0,
				},
				icon_scale = {
					type = "range",
					name = L["Icon Scale"],
					desc = L["The scale of the icons."],
					min = 0.25, max = 2, step = 0.01,
					order = 20,
				},
				icon_alpha = {
					type = "range",
					name = L["Icon Alpha"],
					desc = L["The transparency of the icons."],
					min = 0, max = 1, step = 0.01,
					order = 30,
				},
			},
		},
		display = {
			type = "group",
			name = L["What to display"],
			inline = true,
			order = 20,
			args = {
				desc = {
					name = L["These settings control which types of icons are displayed on the World Map and Minimap."],
					type = "description",
					order = 0,
				},
				show_entrance = {
					type = "toggle",
					name = L["Entrance"],
					desc = L["Show the entrances to caves and other special locations."],
					order = 10,
				},
				show_rare = {
					type = "toggle",
					name = L["Rare mobs"],
					desc = L["Show rare creature locations even when they have not spawned yet."],
					order = 12,
				},
				show_others = {
					type = "toggle",
					name = L["Others"],
					desc = L["Show all other miscellaneous nodes."],
					order = 20,
				},
			},
		},
		plugin_config = {
			type = "group",
			name = L["AddOn Settings"],
			inline = true,
			order = 30,
			args = {
				query_server = {
					type = "toggle",
					name = L["Query from server"],
					desc = L["Query the server for localized names. The first lookup may be slightly slower, but names are cached for faster future lookups."],
					order = 10,
				},
				show_note = {
					type = "toggle",
					name = L["Show note"],
					desc = L["Show additional notes for a node when available."],
					order = 11,
				},
				hide_completed = {
					type = "toggle",
					name = L["Hide looted mobs"],
					desc = L["Hide rare elite creatures that have been killed and looted today."],
					order = 15,
				},
				show_coords = {
					type = "toggle",
					name = L["Show coordinates"],
					desc = L["Show a node's coordinates."],
					order = 16,
				},
				unhide = {
					type = "execute",
					name = L["Reset hidden nodes"],
					desc = L["Show all nodes that you manually hid by right-clicking them and selecting \"Hide\"."],
					func = function()
						for _, coords in pairs(private.hidden) do
							wipe(coords)
						end
						addon:Refresh()
					end,
					order = 50,
				},
			},
		},
	},
}

