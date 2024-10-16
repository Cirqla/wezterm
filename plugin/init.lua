local wezterm = require 'wezterm'
local main = {}

local main_palette = {
	["000000"] = '#1E1E24',
	["000001"] = '#2D2D35',
	["000010"] = '#3A3E4B',
	["000011"] = '#5E646D',
	["000100"] = '#4B3D5B',
	["000101"] = '#5C4A77',
	["000110"] = '#A6488D',
	["000111"] = '#D22B50',
	["001000"] = '#D76D31',
	["001001"] = '#B3A45E',
	["001010"] = '#7B8D1C',
	["001011"] = '#5A9F5D',
	["001100"] = '#47B3D0',
	["001101"] = '#B5B94D',
	["001110"] = '#C7A1B8',
	["001111"] = '#D2C0D1',
	["010000"] = '#C0D6E0',
	["010001"] = '#83B0C2',
	["010010"] = '#A8D8F6',
	["010011"] = '#4F5C5D',
	["010100"] = '#E4B38D',
	["010101"] = '#D4D8DB',
	["010110"] = '#D3C6FF',
	["010111"] = '#A1B1C4',
	["011000"] = '#E0E6EA',
	["011001"] = '#F2E0E0',
	["011010"] = '#FFE7A3',
	["011011"] = '#C0E6F4',
	["011100"] = '#C37EB5',
	["011101"] = '#B8C7D4',
	["011110"] = '#F5B4C7',
	["011111"] = '#ffffff',
}

local main_active_tab = {
	bg_color = main_palette["000001"],
	fg_color = main_palette["011111"],
}

local main_inactive_tab = {
	bg_color = main_palette["000000"],
	fg_color = main_palette["000011"],
}

function main.colors()
	return {
		foreground = main_palette["011111"],
		background = main_palette["000000"],
		cursor_bg = main_palette["010001"],
		cursor_border = main_palette["010001"],
		cursor_fg = main_palette["011111"],
		selection_bg = main_palette["000010"],
		selection_fg = main_palette["011111"],

		ansi = {
			main_palette["000000"],
			main_palette["000111"],
			main_palette["001100"],
			main_palette["001000"],
			main_palette["001011"],
			main_palette["000101"],
			main_palette["001110"],
			main_palette["011111"],
		},

		brights = {
			main_palette["001111"],
			main_palette["000111"],
			main_palette["001100"],
			main_palette["001000"],
			main_palette["001011"],
			main_palette["000101"],
			main_palette["001110"],
			main_palette["011111"],
		},

		tab_bar = {
			background = main_palette["000000"],
			active_tab = main_active_tab,
			inactive_tab = main_inactive_tab,
			inactive_tab_hover = main_active_tab,
			new_tab = main_inactive_tab,
			new_tab_hover = main_active_tab,
			inactive_tab_edge = main_palette["000011"], -- (Fancy tab bar only)
		},
	}
end

function main.window_frame() -- (Fancy tab bar only)
	return {
		font = wezterm.font({ family = "JetBrainsMono Nerd Mono", weight = "Bold" }),
		font_size = 11.5,
		active_titlebar_bg = main_palette["000000"],
		inactive_titlebar_bg = main_palette["000000"],
		active_titlebar_fg = main_palette["011000"],
		inactive_titlebar_fg = main_palette["010111"],
		inactive_titlebar_border_bottom = main_palette["000000"],
		active_titlebar_border_bottom = main_palette["000011"],
		button_fg = main_palette["011001"],
		button_bg = main_palette["000011"],
		button_hover_fg = main_palette["011111"],
		button_hover_bg = main_palette["010001"],
		border_left_width = '0cell',
		border_right_width = '0cell',
		border_bottom_height = '0cell',
		border_top_height = '0cell',
	}
end

return {
	cirqla_x = main
}
