-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.color_scheme = 'nightfox'

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.colors = {
  foreground = '#f9f9f5',
  background = '#131821',
  selection_fg = '#f9f9f5',
  selection_bg = '#FFFACD',
}

config.font_size = 11.0

config.window_background_opacity = 0.95

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false

config.tab_bar_style = {
}

-- and finally, return the configuration to wezterm
return config
