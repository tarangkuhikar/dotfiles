local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.enable_wayland = false
config.font_size = 9
config.default_prog = { 'zsh' }

config.tab_bar_at_bottom = true
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.window_padding = { left = 3, right = 3, top = 3, bottom = 3 }

return config
