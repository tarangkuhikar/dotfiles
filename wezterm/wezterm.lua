local wezterm = require 'wezterm'
local mux = wezterm.mux
local act = wezterm.action
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

wezterm.on('gui-startup', function()
  local _, _, window = mux.spawn_window {}
  window:gui_window():maximize()
end)

config.color_scheme = 'Tokyo Night'
config.tab_bar_at_bottom = true
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }

wezterm.on('update-right-status', function(window, _)
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
