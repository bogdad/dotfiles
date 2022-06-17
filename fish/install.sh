#!/usr/bin/env bash
mkdir -p $HOME/.config/fish/
target="$HOME/.config/fish/config.fish" 
original="$HOME/.dotfiles/fish/config.fish"
backup="$HOME/.dotfiles/fish/config.fish.orig"
if [[ ! -L "$target" ]]; then
    echo "installing link $target for $original"
    echo "backup is $backup"
    mv -- "$target" "$backup" || true
    ln -s -- "$original" "$target"
fi


sudo ln -s /opt/homebrew/bin/fish /usr/local/bin/fish || true
