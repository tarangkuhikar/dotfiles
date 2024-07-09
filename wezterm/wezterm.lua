local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

wezterm.on('gui-startup', function()
  local tab, pane, window = mux.spawn_window {}
  window:gui_window():maximize()
end)

config.color_scheme = 'Tokyo Night'
config.font_size = 12
config.tab_bar_at_bottom = true
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.window_padding = { left = 3, right = 3, top = 3, bottom = 3 }

return config
