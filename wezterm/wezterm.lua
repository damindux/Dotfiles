local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.colors = {
    foreground = "#FFFFFF",
    background = "#2E6357",
    cursor_bg = "#6BB56C",
    cursor_border = "#6BB56C",
    cursor_fg = "#FFFFFF",
    selection_bg = "#6BB56C",
    selection_fg = "#FFFFFF",

    ansi = {
        "#2E6357", "#6BB56C", "#6BB56C", "#6BB56C",
        "#6BB56C", "#6BB56C", "#6BB56C", "#FFFFFF"
    },
    brights = {
        "#6BB56C", "#6BB56C", "#6BB56C", "#6BB56C",
        "#6BB56C", "#6BB56C", "#6BB56C", "#FFFFFF"
    },
    tab_bar = {
        background = "#FFFFFF",
        active_tab = {
            bg_color = "#2E6357",
            fg_color = "#FFFFFF",
        },
        inactive_tab = {
            bg_color = "#FFFFFF",
            fg_color = "#2E6357",
            italic = true,
        },
        inactive_tab_hover = {
            bg_color = "#FFFFFF",
            fg_color = "#6BB56C",
        },
        new_tab = {
            bg_color = "#FFFFFF",
            fg_color = "#2E6357",
        },
        new_tab_hover = {
            bg_color = "#6BB56C",
            fg_color = "#FFFFFF",
        },
    }
}


config.font = wezterm.font_with_fallback {
    'RecMonoDuotone Nerd Font',
    'nonicons',
}

config.use_fancy_tab_bar = false
config.enable_scroll_bar = false
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.85

config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

config.freetype_load_target = "HorizontalLcd"

return config
