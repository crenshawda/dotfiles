local wezterm = require 'wezterm'

local theme_names = {'kanagawabones', 
                     'Ayu Mirage', 
                     'Firewatch'}
local theme_name = theme_names[1]
local theme = wezterm.color.get_builtin_schemes()[theme_name]
theme.scrollbar_thumb = '#444444'

-- Windows powershell default override
local shell = default_prog
if wezterm.target_triple == 'x86_64-pc-windows-msvc' then
  shell = {'powershell.exe', '-NoLogo'}
end

return {
  -- shell
  default_prog = shell,  

  --theme
  color_schemes = {
    ['t'] = theme,
  },
  color_scheme = 't',

  --font
  font_size = 11,

  --opacity
  --window_background_opacity = 0.95,
  --text_background_opacity = 0.95,
  
  --scrollbar
  enable_scroll_bar = true,
  scrollback_lines = 3500,
}
