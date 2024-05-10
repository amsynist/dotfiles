local wezterm = require("wezterm")

local function font_with_fallback(name, params)
	local names = { name, "FiraCode Nerd Font" }
	return wezterm.font_with_fallback(names, params)
end

-- local SOLID_LEFT_ARROW = utf8.char(0xe0b2)
local SOLID_RIGHT_ARROW = utf8.char(0xe0b0)
local dimmer = { brightness = 0.1 }
local Grey = "#0f1419"
local LightGrey = "#191f26"

local TAB_BAR_BG = "Black"
local ACTIVE_TAB_BG = "Yellow"
local ACTIVE_TAB_FG = "Black"
local HOVER_TAB_BG = Grey
local HOVER_TAB_FG = "White"
local NORMAL_TAB_BG = LightGrey
local NORMAL_TAB_FG = "White"

local WALL_DIR = "/Users/zero/Desktop/WALLS/"

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	panes = panes
	config = config
	max_width = max_width

	local background = NORMAL_TAB_BG
	local foreground = NORMAL_TAB_FG

	local is_first = tab.tab_id == tabs[1].tab_id
	local is_last = tab.tab_id == tabs[#tabs].tab_id

	if tab.is_active then
		background = ACTIVE_TAB_BG
		foreground = ACTIVE_TAB_FG
	elseif hover then
		background = HOVER_TAB_BG
		foreground = HOVER_TAB_FG
	end

	local leading_fg = NORMAL_TAB_FG
	local leading_bg = background

	local trailing_fg = background
	local trailing_bg = NORMAL_TAB_BG

	if is_first then
		leading_fg = TAB_BAR_BG
	else
		leading_fg = NORMAL_TAB_BG
	end

	if is_last then
		trailing_bg = TAB_BAR_BG
	else
		trailing_bg = NORMAL_TAB_BG
	end

	local title = tab.active_pane.title
	-- broken?
	-- local title = " " .. wezterm.truncate_to_width(tab.active_pane.title, 30) .. " "

	return {
		{ Attribute = { Italic = true } },
		{ Attribute = { Intensity = hover and "Bold" or "Normal" } },
		{ Background = { Color = leading_bg } },
		{ Foreground = { Color = leading_fg } },
		{ Text = SOLID_RIGHT_ARROW },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = " " .. title .. " " },
		{ Background = { Color = trailing_bg } },
		{ Foreground = { Color = trailing_fg } },
		{ Text = SOLID_RIGHT_ARROW },
	}
end)

return {

	window_padding = {
		left = 30,
		right = 10,
		top = 30,
		bottom = 20,
	},
	window_background_opacity = 0.6,
	macos_window_background_blur = 40,
	window_decorations = "RESIZE",
	native_macos_fullscreen_mode = false,
	hide_mouse_cursor_when_typing = true,
	pane_focus_follows_mouse = true,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
	enable_tab_bar = true,
	tab_max_width = 32,

	-- background = {
	--
	-- 	{
	-- 		source = {
	-- 			File = WALL_DIR .. "PLX_IMGS/mountains_back.png",
	-- 		},
	-- 		repeat_x = "Mirror",
	-- 		hsb = dimmer,
	-- 		attachment = { Parallax = 0.1 },
	-- 	},
	-- 	{
	-- 		source = {
	-- 			File = WALL_DIR .. "PLX_IMGS/moon.png",
	-- 		},
	-- 		repeat_x = "NoRepeat",
	-- 		width = "100%",
	-- 		vertical_align = "Bottom",
	-- 		repeat_y_size = "200%",
	-- 		hsb = dimmer,
	-- 		attachment = { Parallax = 0.2 },
	-- 	},
	-- 	{
	-- 		source = {
	-- 			File = WALL_DIR .. "PLX_IMGS/stars.png",
	-- 		},
	-- 		width = "100%",
	-- 		repeat_x = "NoRepeat",
	--
	-- 		-- start at 10% of the screen and repeat every 2 screens
	-- 		vertical_offset = "10%",
	-- 		repeat_y_size = "200%",
	-- 		hsb = dimmer,
	-- 		attachment = { Parallax = 0.3 },
	-- 	},
	-- 	{
	-- 		source = {
	-- 			File = WALL_DIR .. "PLX_IMGS/mountains_front.png",
	-- 		},
	-- 		width = "100%",
	-- 		repeat_x = "NoRepeat",
	--
	-- 		vertical_offset = "30%",
	-- 		repeat_y_size = "200%",
	-- 		hsb = dimmer,
	-- 		attachment = { Parallax = 0.4 },
	-- 	},
	-- },
	-- end- parallax bg config

	leader = { key = "b", mods = "CTRL", timeout_milliseconds = 1000 },

	inactive_pane_hsb = {
		saturation = 0.9,
		brightness = 0.9,
	},

	color_scheme = "Aura (Gogh)",
	colors = {
		background = "black",
		split = "#444444",
		tab_bar = {
			background = TAB_BAR_BG,
		},
	},

	tab_bar_style = {
		new_tab = wezterm.format({
			{ Background = { Color = HOVER_TAB_BG } },
			{ Foreground = { Color = TAB_BAR_BG } },
			{ Text = SOLID_RIGHT_ARROW },
			{ Background = { Color = HOVER_TAB_BG } },
			{ Foreground = { Color = HOVER_TAB_FG } },
			{ Text = " + " },
			{ Background = { Color = TAB_BAR_BG } },
			{ Foreground = { Color = HOVER_TAB_BG } },
			{ Text = SOLID_RIGHT_ARROW },
		}),
		new_tab_hover = wezterm.format({
			{ Attribute = { Italic = false } },
			{ Attribute = { Intensity = "Bold" } },
			{ Background = { Color = NORMAL_TAB_BG } },
			{ Foreground = { Color = TAB_BAR_BG } },
			{ Text = SOLID_RIGHT_ARROW },
			{ Background = { Color = NORMAL_TAB_BG } },
			{ Foreground = { Color = NORMAL_TAB_FG } },
			{ Text = " + " },
			{ Background = { Color = TAB_BAR_BG } },
			{ Foreground = { Color = NORMAL_TAB_BG } },
			{ Text = SOLID_RIGHT_ARROW },
		}),
	},

	keys = {
		{
			key = "y",
			mods = "CMD",
			action = wezterm.action.SpawnCommandInNewWindow({
				args = { "sunbeam" },
			}),
		},
		{
			key = "C",
			mods = "SUPER",
			action = wezterm.action.CopyTo("ClipboardAndPrimarySelection"),
		},
		{
			key = "'",
			mods = "SUPER",
			action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
		},
		{
			key = "\\",
			mods = "SUPER",
			action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
		},
		{ key = "LeftArrow",  mods = "SUPER", action = wezterm.action.AdjustPaneSize({ "Left", 4 }) },
		{ key = "DownArrow",  mods = "SUPER", action = wezterm.action.AdjustPaneSize({ "Down", 2 }) },
		{ key = "UpArrow",    mods = "SUPER", action = wezterm.action.AdjustPaneSize({ "Up", 2 }) },
		{ key = "RightArrow", mods = "SUPER", action = wezterm.action.AdjustPaneSize({ "Right", 4 }) },
		{ key = "LeftArrow",  mods = "CTRL",  action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "RightArrow", mods = "CTRL",  action = wezterm.action({ ActivatePaneDirection = "Right" }) },
		{ key = "DownArrow",  mods = "CTRL",  action = wezterm.action({ ActivatePaneDirection = "Down" }) },
		{ key = "UpArrow",    mods = "CTRL",  action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "w",          mods = "SUPER", action = wezterm.action({ CloseCurrentPane = { confirm = false } }) },
		{ key = ",",          mods = "SUPER", action = wezterm.action.TogglePaneZoomState },
		{
			key = "[",
			mods = "CTRL",
			action = wezterm.action.RotatePanes("CounterClockwise"),
		},
		{ key = "]", mods = "CTRL", action = wezterm.action.RotatePanes("Clockwise") },
	},
	font_size = 14,
	font = wezterm.font("ZeroCode"),
}
