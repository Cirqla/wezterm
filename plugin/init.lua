local wezterm = require 'wezterm'

-- Window frame configuration
local window_frame = {
	font = wezterm.font({ family = "JetBrainsMono Nerd Mono", weight = "Bold" }),
	font_size = 11.5,
	active_titlebar_bg = "#3A3E4B",
	inactive_titlebar_bg = "#1E1E24",
	active_titlebar_fg = "#C0D6E0",
	inactive_titlebar_fg = "#A1B1C4",
	inactive_titlebar_border_bottom = "#1E1E24",
	active_titlebar_border_bottom = "#3A3E4B",
	button_fg = "#f8f8f2",
	button_bg = "#44475a",
	button_hover_fg = "#ffffff",
	button_hover_bg = "#6272a4",
	border_left_width = '0cell',
	border_right_width = '0cell',
	border_bottom_height = '0cell',
	border_top_height = '0cell',
}

-- Define your Cirqla theme colors
local themes = {
	cirqla_x = {
		colors = {
			foreground = "#D6DBDF",
			background = "#1E1E24",
			cursor_bg = "#C25095",
			cursor_border = "#D55B71",
			cursor_fg = "#FFFFFF",
			selection_bg = "#5A9F5D",
			selection_fg = "#1E1E24",
			ansi = {
				"#1E1E24", -- Black
				"#D22B50", -- Red
				"#54C5E0", -- Green
				"#E27A4F", -- Yellow
				"#8E6D9B", -- Blue
				"#C25095", -- Magenta
				"#47B3D0", -- Cyan
				"#D6DBDF", -- White
			},
			brights = {
				"#C0D6E0", -- Bright Black
				"#D4A6C5", -- Bright Red
				"#B3E5D5", -- Bright Green
				"#E9C88B", -- Bright Yellow
				"#A1B1C4", -- Bright Blue
				"#D8B6FF", -- Bright Magenta
				"#F3F7F9", -- Bright Cyan
				"#F5A9D3", -- Bright White
			},
		},
		window_frame = window_frame
	},
}

-- Select the theme based on the environment variable
local theme_var = os.getenv("WEZTERM_THEME") or "cirqla_x"  -- Default to cirqla_x if not set
local selected_theme = themes[theme_var] or themes.cirqla_x -- Fallback to cirqla_x if invalid

-- WezTerm configuration
local config = {
	colors = selected_theme.colors,
	font = wezterm.font("JetbrainsMono Nerd Font"),
	window_frame = selected_theme.window_frame,
}

-- Set the config
return config
