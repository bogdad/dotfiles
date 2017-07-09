#!/usr/bin/env bash
target="$HOME/Library/Application Support/Code/User/settings.json" original="$HOME/.dotfiles/vscode/settings.json"
backup="$HOME/.dotfiles/vscode/settings.json.orig"
if [[ ! -L "$target" ]]; then
    echo "installing link $target for $original\n"
    echo "backup is $bacup\n"
    mv -- "$target" "$backup"
    ln -s -- "$original" "$target"
fi

code --install-extension julialang.language-julia
code --install-extension kalitaalexey.vscode-rust
code --install-extension gerane.solarized-dark

