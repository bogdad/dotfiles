function fish_user_key_bindings
  bind \eB backward-word
  bind \eF forward-word
end

alias pssh='pssh -X -A -x "-q -t -t -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"'
alias pscp='pscp -X -A -x "-q -t -t -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"'
alias ssh='ssh -A'
alias rr='reveal role'
alias dr='disco role'
alias gs='git status -s'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gd.='git diff -M --color-words="."'
alias gd='git diff -M'
alias gb='git branch'

alias gcm='git checkout master'
alias grv='git remote -v'
alias gcamend='git commit --amend --no-edit'

alias tailf='tail -f'

alias gitclearall="gs | rg --fixed-strings '??' | rg -v 'vscode' | cut -f2 -d' ' | xargs rm -rf"

alias urldecode='python -c "import sys; from urllib import unquote ; print(unquote(sys.stdin.read()))"'


export GOPATH="$HOME/go"

export PATH="$HOME/.cargo/bin:$HOME/bin:$PATH"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/dtracetoolkit"
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:$HOME/IdeaProjects/client-core/bin"

export PATH="$PATH:/Users/vladimirshakhov/yandex-cloud/bin/"

set PYTHONHOME "/usr/local/Cellar/python/2.7.13/Frameworks/Python.framework/Versions/2.7/"
export env JAVA_HOME=(/usr/libexec/java_home -v 1.8)
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

export env XDG_CONFIG_HOME="$HOME/.config"


export env LDFLAGS="-L/usr/local/opt/openssl/lib:$LDFLAGS"
export env CPPFLAGS="-I/usr/local/opt/openssl/include:$CPPFLAGS"
export env PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vladimirshakhov/.dotfiles/fish/google-cloud-sdk/path.fish.inc' ]; if type source > /dev/null; source '/Users/vladimirshakhov/.dotfiles/fish/google-cloud-sdk/path.fish.inc'; else; . '/Users/vladimirshakhov/.dotfiles/fish/google-cloud-sdk/path.fish.inc'; end; end

