#!/usr/bin/env bash
set -ex
mkdir -p "$HOME/.config/alacritty"
target="$HOME/.config/alacritty/alacritty.yml"
original="$HOME/.dotfiles/alacritty/alacritty.yml"
backup="$HOME/.dotfiles/alacritty/alacritty.yml.orig"
if [[ ! -L "$target" ]]; then
    echo "installing link $target for $original"
    echo "backup is $backup"
    mv -- "$target" "$backup" || true
    ln -s -- "$original" "$target"
fi
