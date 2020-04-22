export ANDROID_HOME=~/Library/Android/sdk
export PATH=/usr/local/opt/python/libexec/bin:/usr/local/bin:/usr/local/sbin:$PATH:$ANDROID_HOME/tools

export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"

export LIBRARY_PATH="/usr/local/opt/openssl/lib:$LIBRARY_PATH"

ulimit -n 2048

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

eval "$(hub alias -s)"
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"
eval "$(direnv hook zsh)"
