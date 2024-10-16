<<<<<<< HEAD
local cirqla = {}

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

return {
	cirqla_x = themes.cirqla_x
}
=======
local wezterm = require 'wezterm'

local M = {}

-- Load the theme specified by the user or use 'cirqla_x' as the default
local function load_theme(theme_name)
	local success, theme = pcall(require, "themes." .. theme_name)
	if not success then
		wezterm.log_error("Could not load theme '" .. theme_name .. "': " .. theme)
		return require("themes.cirqla_x") -- Fallback to the default theme
	end
	return theme
end

-- Default theme
M.variant = "cirqla_x"
M.colors = load_theme(M.variant).colors
M.window_frame = load_theme(M.variant).window_frame()

function M.setup(config)
	config.colors = M.colors
	config.window_frame = M.window_frame
	config.command_palette_bg_color = M.colors.background
	config.command_palette_fg_color = M.colors.foreground
end

return M
>>>>>>> e6312a3 (Fix not loading file | moved init.lua to plugin/init.lua)
