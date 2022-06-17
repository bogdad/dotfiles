mkdir -p $HOME/.cargo
target="$HOME/.cargo/env" original="$HOME/.dotfiles/cargo/.cargo/env"
backup="$HOME/.dotfiles/cargo/.cargo/env.orig"
if [[ ! -L "$target" ]]; then
  echo "installing link $target for $original\n"
  echo "backup is $bacup\n"
  mv -- "$target" "$backup" || true
  ln -s -- "$original" "$target"
fi
