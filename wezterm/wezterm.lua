local wezterm = require('wezterm')
local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.font_size = 9
config.default_prog = { 'pwsh' }
config.tab_bar_at_bottom = true
config.enable_scroll_bar = false
config.use_fancy_tab_bar = false
config.window_padding = { left = 3, right = 3, top = 3, bottom = 3 }

config.background = {
    {
        source = {
            File = 'D:/anime/Ninja.jpg'
        },
        hsb = {
            brightness = 0.01,
        },
    },
}

config.launch_menu = {
    {
        label = 'Git Bash',
        domain = { DomainName = 'local' },
        args = {
            'cmd.exe',
            '/c',
            'bash',
        },
    },
    {
        label = 'Developer Command Prompt for VS ',
        domain = { DomainName = 'local' },
        args = {
            'cmd.exe',
            '/c',
            'C:/Program Files/Microsoft Visual Studio/2022/Community/Common7/Tools/VsDevCmd.bat',
            '-arch=x64',
        },
    },
    {
        label = 'Developer PowerShell Prompt for VS ',
        domain = { DomainName = 'local' },
        args = {
            'powershell.exe',
            '-noe ',
            '-c',
            '&{Import-Module "C:/Program Files/Microsoft Visual Studio/2022/Community/Common7/Tools/Microsoft.VisualStudio.DevShell.dll"; Enter-VsDevShell f3980827}',
            '-arch=x64',
        },
    }
}

return config
