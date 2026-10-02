# init according to man page; skip when rbenv manages no rubies (init costs ~0.8s)
rbenv_rubies=( ${RBENV_ROOT:-$HOME/.rbenv}/versions/*(N) )
if (( $+commands[rbenv] && $#rbenv_rubies ))
then
  eval "$(rbenv init - --no-rehash zsh)"
fi
unset rbenv_rubies
