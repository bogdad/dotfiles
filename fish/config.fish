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

alias make-list-targets="make -qp | awk -F':' '/^[a-zA-Z0-9][^$#\/\t=]*:([^=]|$)/ {split($1,A,/ /);for(i in A)print A[i]}' | sort -u"

alias gitclearall="gs | rg --fixed-strings '??' | rg -v 'vscode' | cut -f2 -d' ' | xargs rm -rf"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:/usr/local/bin"

set PYTHONHOME "/usr/local/Cellar/python/2.7.13/Frameworks/Python.framework/Versions/2.7/"
set JAVA_HOME (/usr/libexec/java_home -v 1.8)
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vladimirshakhov/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/vladimirshakhov/google-cloud-sdk/path.fish.inc'; else; . '/Users/vladimirshakhov/google-cloud-sdk/path.fish.inc'; end; end
