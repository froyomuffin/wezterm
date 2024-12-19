-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

wezterm.on('format-window-title', function () return 'Wezterm' end)

config.color_scheme = 'nightfox'

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.colors = {
  foreground = '#f9f9f5',
  background = '#131821',
  selection_fg = '#f9f9f5',
  selection_bg = '#FFFACD',
}

-- Don't confirm quit
config.window_close_confirmation = 'NeverPrompt'

config.font_size = 10.0
config.font = wezterm.font_with_fallback { 'Noto Sans Mono' }
-- config.warn_about_missing_glyphs = false

config.window_background_opacity = 0.95

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.tab_bar_style = {
}

-- and finally, return the configuration to wezterm
return config
