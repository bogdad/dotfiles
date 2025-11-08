#function sdk
#    bash -c "source '$HOME/.sdkman/bin/sdkman-init.sh'; sdk $argv[1..]"
#end

#fish_add_path (find $HOME/.sdkman/candidates/*/current/bin -maxdepth 0)

function fish_user_key_bindings
    bind \eB backward-word
    bind \eF forward-word
end

source "$HOME/.cargo/env.fish"

alias pssh='pssh -X -A -x "-q -t -t -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"'
alias pscp='pscp -X -A -x "-q -t -t -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null"'
alias ssh='ssh -A'
alias gs='git status -s'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gd.='git diff -M --color-words="."'
alias gd='git diff -M'
alias gb='git branch'
alias grbi='git rebase -i'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias grba='git rebase --abort'
alias gco='git checkout '
alias gf='git fetch '
alias gl='git log '
alias cninja='echo \n\n\n\n\n\n\n\n\n\n; and ninja'

#alias cmakecoreiossimulator='cmake -G Ninja .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -DCORE_BUILD_HOST_TOOLS=ON -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchains/iphone-core.cmake -DIOS_PLATFORM=SIMULATOR'

alias gcm='git checkout master'
alias grv='git remote -v'
alias gcamend='git commit --amend --no-edit'

alias tailf='tail -f'

alias gitclearall="gs | rg --fixed-strings '??' | rg -v 'vscode' | cut -f2 -d' ' | xargs rm -rf"

alias urldecode='python -c "import sys; from urllib import unquote ; print(unquote(sys.stdin.read()))"'

export GOPATH="$HOME/go"

export PATH="$HOME/.cargo/bin:$HOME/bin:$PATH"
export PATH="$PATH;/usr/local/opt/ruby/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:$HOME/dtracetoolkit/Bin"
export PATH="$GOPATH/bin:$PATH"

export USE_GKE_GCLOUD_AUTH_PLUGIN="True"

export PATH="$PATH:$HOME/bin/"
export PATH="$PATH:$HOME/yandex-cloud/bin/"
export PATH="$PATH:$HOME/go/bin/"
export PATH="/usr/local/opt/ruby/bin:$PATH"
#export PATH="/usr/local/opt/ccache/libexec:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/gems/xcpretty-0.3.0/bin/:$PATH"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools/"
export PATH="/usr/local/opt/node@12/bin:$PATH"
#export PATH="/usr/local/anaconda3/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

#set pyenvroot (pyenv root)
#export PATH="$pyenvroot/shims:$PATH"

export PATH="$PATH:$HOME/google-cloud-sdk/bin"
export PATH="$PATH:$HOME/.local/bin"

#export JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home"
set -g fish_user_paths /usr/local/sbin $fish_user_paths

export env XDG_CONFIG_HOME="$HOME/.config"

export env PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '$HOME/.dotfiles/fish/google-cloud-sdk/path.fish.inc' ]
    if type source >/dev/null
        source '$HOME/.dotfiles/fish/google-cloud-sdk/path.fish.inc'
    else
        . '$HOME/.dotfiles/fish/google-cloud-sdk/path.fish.inc'
    end
end

export env GEMINI_API_KEY="AIzaSyCDXi09lPYuWJFgLuhds5bLZPSiytCtqtk"

fish_add_path /opt/homebrew/sbin
fish_add_path /opt/homebrew/opt/lld@19/bin
fish_add_path $HOME/.nvm

fish_add_path /opt/homebrew/Cellar/llvm/20.1.2/bin/

fish_add_path $HOME/yandex-cloud/bin/yc

export VCPKG_ROOT="$HOME/vcpkg"
#status --is-interactive; and source (jenv init -|psub)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" hook $argv | source
# <<< conda initialize <<<

#export env FLYTECTL_CONFIG="$HOME/.flyte/config.yaml"
#export env JAVA_HOME="/Library/Java/JavaVirtualMachines/amazon-corretto-11.jdk/Contents/Home"

alias claude="/Users/vladimir/.claude/local/claude"

# opencode
fish_add_path /Users/vladimir/.opencode/bin
