#!/usr/bin/env bash
target="$HOME/.config/fish/config.fish" 
original="$HOME/.dotfiles/fish/config.fish"
backup="$HOME/.dotfiles/fish/config.fish.orig"
if [[ ! -L "$target" ]]; then
    echo "installing link $target for $original"
    echo "backup is $bacup"
    mv -- "$target" "$backup"
    ln -s -- "$original" "$target"
fi

