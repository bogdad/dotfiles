#!/usr/bin/env sh
target="/usr/local/bin/subl"
if [[ ! -L "$target" ]]; then
ln -s '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' "$target"
fi
