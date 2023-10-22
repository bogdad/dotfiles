#!/usr/bin/env bash
set -x
set -e
mkdir -p $HOME/.config/wezterm/
target="$HOME/.config/wezterm/wezterm.lua" 
original="$HOME/.dotfiles/wezterm/wezterm.lua"
backup="$HOME/.dotfiles/wezterm/wezterm.lua.orig"
if [[ ! -L "$target" ]]; then
    echo "installing link $target for $original"
    echo "backup is $backup"
    mv -- "$target" "$backup" || true
    ln -s -- "$original" "$target"
fi

