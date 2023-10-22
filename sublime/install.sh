#!/usr/bin/env bash

set -ex -o pipefail

target="/usr/local/bin/subl"
if [[ ! -L "$target" ]]; then
sudo ln -s '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' "$target"
fi


replace_with_symlink() {
	target=$1
	original=$2

	suff=".orig"
	backup="$original$suff"

    if [[ ! -f $original ]]; then
        if [[ -f $target ]]; then
	        cp "$target" "$original"
        fi
    fi

    if [[ ! -L "$target" ]]; then
        echo "installing link $target for $original\n"
        echo "backup is $backup\n"
        mv -- "$target" "$backup" || true
        ln -s -- "$original" "$target"
    fi
}


target="$HOME/Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings" 
original="$HOME/.dotfiles/sublime/Preferences.sublime-settings"
replace_with_symlink "$target" "$original"

target="$HOME/Library/Application Support/Sublime Text/Packages/User/RustEnhanced.sublime-settings" 
original="$HOME/.dotfiles/sublime/RustEnhanced.sublime-settings"
replace_with_symlink "$target" "$original"

target="$HOME/Library/Application Support/Sublime Text/Packages/User/Package Control.sublime-settings" 
original="$HOME/.dotfiles/sublime/Package Control.sublime-settings"
replace_with_symlink "$target" "$original"


#git clone git@github.com:sublimelsp/LSP.git ~/Library/Application\ Support/Sublime\ Text/Packages/LSP || true
