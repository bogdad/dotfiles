local wezterm = require 'wezterm';

-- fish lives in /opt/homebrew on Apple Silicon, /usr/local on Intel
local function first_existing(paths)
  for _, p in ipairs(paths) do
    local f = io.open(p, "r")
    if f then f:close(); return p end
  end
end

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catpuccin Frappe"
  else
    return "Catppuccin Latte"
  end
end

return {
  automatically_reload_config = true,
  font = wezterm.font("JetBrains Mono"),
  font_size = 14.0,
  color_scheme = "Builtin Solarized Dark",
  default_prog = {first_existing({"/opt/homebrew/bin/fish", "/usr/local/bin/fish"}), "-l"},
  keys = {
    -- This will create a new split and run your default program inside it
    {key="d", mods="CMD|SHIFT",
      action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="d", mods="CMD",
      action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="Enter", mods="SHIFT", action=wezterm.action{SendString="\x1b\r"}}
  }
}
