local M = {}

local colors = {
	foreground = "#D6DBDF",
	background = "#1E1E24",

	cursor_bg = "#C25095",
	cursor_border = "#D55B71",
	cursor_fg = "#FFFFFF",

	selection_bg = "#5A9F5D",
	selection_fg = "#1E1E24",

	ansi = {
		"#1E1E24",
		"#D22B50",
		"#54C5E0",
		"#E27A4F",
		"#8E6D9B",
		"#C25095",
		"#47B3D0",
		"#D6DBDF",
	},
	brights = {
		"#C0D6E0",
		"#D4A6C5",
		"#B3E5D5",
		"#E9C88B",
		"#A1B1C4",
		"#D8B6FF",
		"#F3F7F9",
		"#F5A9D3",
	},
}


M.window_frame = {
	-- Font for the window title bar
	font = wezterm.font({ family = "JetBrainsMono Nerd Mono", weight = "Bold" }),
	font_size = 11.5,

	-- Colors for the window frame
	active_titlebar_bg = "#3A3E4B",           -- Background color when the window is focused
	inactive_titlebar_bg = "#1E1E24",         -- Background color when the window is unfocused
	active_titlebar_fg = "#C0D6E0",           -- Foreground (text) color when the window is focused
	inactive_titlebar_fg = "#A1B1C4",         -- Foreground (text) color when the window is unfocused
	inactive_titlebar_border_bottom = "#1E1E24", -- Border color for the titlebar when inactive
	active_titlebar_border_bottom = "#3A3E4B", -- Border color for the titlebar when active

	-- Buttons and window decorations
	button_fg = "#f8f8f2",    -- Color of buttons (close, minimize, etc.)
	button_bg = "#44475a",    -- Background color for buttons
	button_hover_fg = "#ffffff", -- Color of buttons on hover
	button_hover_bg = "#6272a4", -- Button background color on hover

	-- Window border appearance
	border_left_width = '0cell',
	border_right_width = '0cell',
	border_bottom_height = '0cell',
	border_top_height = '0cell',
}

return M
