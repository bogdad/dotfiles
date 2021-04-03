local wezterm = require 'wezterm';
return {
  font = wezterm.font("JetBrains Mono"),
  color_scheme = "Builtin Solarized Light",
  default_prog = {"/usr/local/bin/fish", "-l"},
  keys = {
    -- This will create a new split and run your default program inside it
    {key="d", mods="CMD|SHIFT",
      action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="d", mods="CMD",
      action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
  }
}
