local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font = wezterm.font_with_fallback {
    'Ac437 IBM VGA 8x16',
    'nonicons',
}

config.font_size = 14

config.use_fancy_tab_bar = false
config.enable_scroll_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

config.freetype_load_target = "HorizontalLcd"

return config
