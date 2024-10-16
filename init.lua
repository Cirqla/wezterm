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
