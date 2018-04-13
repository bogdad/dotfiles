#!/usr/bin/env bash
set -ex
target="$HOME/.config/alacritty/alacritty.yml"
original="$HOME/.dotfiles/alacritty/alacritty.yml"
backup="$HOME/.dotfiles/alacritty/alacritty.yml.orig"
if [[ ! -L "$target" ]]; then
    echo "installing link $target for $original"
    echo "backup is $bacup"
    mv -- "$target" "$backup"
    ln -s -- "$original" "$target"
fi
