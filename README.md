# Cirqla WezTerm Theme
# BETA

The **Cirqla WezTerm Theme** provides a collection of themes for WezTerm, enhancing your terminal experience with beautiful color palettes and window frame configurations.

## Features

- Multiple themes available:
  - Cirqla X
  -- coming soon options are:
  - Cirqla X Light
  - Cirqla Dot
  - Cirqla Dot Light
  - Cirqla Tri
  - Cirqla Tri Light
  - Cirqla Hex
  - Cirqla Hex Light
- Easy to switch themes by modifying your configuration.
- Customizable window frame options for a personalized look.

## Installation

To install the Cirqla theme for Wezterm, follow these steps:

1. Include the plugin in your Wezterm configuration.

## Configuration

You can configure the theme in your Wezterm configuration file (`wezterm.lua`) by using the `wezterm.plugin.require` method. Here’s a sample configuration:

```lua
-- Wezterm.lua
local theme = require('theme')
local config = {}
theme.setup(config)
return config

```

``` lua
-- theme.lua
local wezterm = require("wezterm")
local cirqla = wezterm.plugin.require("https://github.com/Cirqla/wezterm")
local colors = cirqla.colors()

local M = {}

cirqla.variant = "cirqla_x"

function M.setup(config)
	config.colors = colors
	config.window_frame = cirqla.window_frame()
	config.command_palette_bg_color = colors.background
	config.command_palette_fg_color = colors.foreground
end

return M
```

## Usage

To change the theme, modify the `theme_name` variable in the configuration file to any of the available themes (e.g., `"cirqla_dot"`).

## Window Frame Options

Customize your window frame by modifying the `window_frame` property in your configuration. Each theme provides its unique frame styling.

## Contributing

Contributions are welcome! Feel free to submit a pull request or open an issue if you have suggestions or find bugs.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

Thank you for using Cirqla themes. Enjoy a beautifully themed terminal experience!
