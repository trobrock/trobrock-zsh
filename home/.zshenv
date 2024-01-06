export LANG="en_US.UTF-8"
export ANDROID_HOME=~/Library/Android/sdk
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:$PATH:$ANDROID_HOME/tools

export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"

export LIBRARY_PATH="/usr/local/opt/openssl/lib:$LIBRARY_PATH"

ulimit -n 2048

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

eval "$(hub alias -s)"
eval "$(direnv hook zsh)"

export PATH=./bin:./.bin:$HOME/bin:/usr/local/opt/python/libexec/bin:/usr/local/heroku/bin:/usr/local/mysql/bin:$PATH
typeset -U PATH

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
