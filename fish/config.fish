function fish_user_key_bindings
  bind \eB backward-word
  bind \eF forward-word
end

alias pssh='pssh -X -A -x "-q -t -t -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"'
alias ssh='ssh -A'
alias dr='disco role'
alias gs='git status -s'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gd.='git diff -M --color-words="."'
alias gd='git diff -M'

export PATH="$HOME/.cargo/bin:$PATH"
set JAVA_HOME (/usr/libexec/java_home -v 1.8)
