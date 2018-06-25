#!/usr/bin/env bash
set -e -x 
target="$HOME/.pydistutils.cfg" original="$HOME/.dotfiles/python/.pydistutils.cfg"
backup="$HOME/.dotfiles/python/.pydistutils.cfg.orig"
if [[ ! -L "$target" ]]; then
  echo "installing link $target for $original\n"
  echo "backup is $bacup\n"
  mv -- "$target" "$backup"
  ln -s -- "$original" "$target"
fi
