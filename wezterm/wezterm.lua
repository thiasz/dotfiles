-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

local custom = wezterm.color.get_builtin_schemes()["Tokyo Night"]
custom.background = "#090B10"
custom.tab_bar.background = "#090B10"
custom.tab_bar.inactive_tab.bg_color = "#090B10"
custom.tab_bar.new_tab.bg_color = "#090B10"

custom.foreground = "#cdcdcd"

custom.cursor_bg = "#cdcdcd"
custom.cursor_fg = "#141415"
custom.cursor_border = "#cdcdcd"

custom.selection_fg = "#cdcdcd"
custom.selection_bg = "#252530"

custom.scrollbar_thumb = "#252530"
custom.split = "#252530"

custom.ansi = {
	"#252530",
	"#d8647e",
	"#7fa563",
	"#f3be7c",
	"#6e94b2",
	"#bb9dbd",
	"#aeaed1",
	"#cdcdcd",
}
custom.brights = {
	"#606079",
	"#e08398",
	"#99b782",
	"#f5cb96",
	"#8ba9c1",
	"#c9b1ca",
	"#bebeda",
	"#d7d7d7",
}

config.color_schemes = {
	["Custom Tokyo Night"] = custom,
}

config.color_scheme = "Custom Tokyo Night"
-- config.color_scheme = "Gruvbox Material (Gogh)"

config.font = wezterm.font("Hack Nerd Font", { weight = "Regular" })
config.font_size = 20
config.send_composed_key_when_left_alt_is_pressed = true

-- config.leader = { key = "s", mods = "CTRL" }
config.keys = {
	{
		mods = "CMD",
		key = "e",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "CMD",
		key = "o",
		action = wezterm.action.SplitPane({
			direction = "Down",
			size = { Percent = 20 },
		}),
	},
	{
		mods = "CMD",
		key = "t",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		mods = "CMD",
		key = "w",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "CMD",
		key = "LeftArrow",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		mods = "CMD",
		key = "RightArrow",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		mods = "CMD",
		key = "DownArrow",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		mods = "CMD",
		key = "UpArrow",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		mods = "CMD",
		key = "z",
		action = wezterm.action.TogglePaneZoomState,
	},
	{
		mods = "CMD",
		key = "s",
		action = wezterm.action.PaneSelect({
			mode = "SwapWithActive",
		}),
	},
	{
		mods = "CMD",
		key = "m",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

for i = 1, 5 do
	-- leader + number to activate that tab
	table.insert(config.keys, {
		key = tostring(i),
		mods = "CMD",
		-- minus 1 as tab starts at 0
		action = wezterm.action.ActivateTab(i - 1),
	})
end

-- tab bar
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = false

config.window_padding = {
	left = 4,
	right = 4,
	top = 4,
	bottom = 0,
}

config.inactive_pane_hsb = {
	saturation = 1,
	brightness = 1,
}

-- config.window_decorations = "RESIZE"
config.window_decorations = "TITLE | RESIZE"

return config
