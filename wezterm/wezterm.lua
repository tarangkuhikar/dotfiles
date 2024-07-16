local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
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

wezterm.on('update-right-status', function(window, pane)
  window:set_right_status(window:active_workspace())
end)

config.keys = {
  {
    key = '9',
    mods = 'ALT',
    action = act.ShowLauncherArgs { flags = 'FUZZY|WORKSPACES' },
  },
}

return config
