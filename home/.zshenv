# Put brew stuff first
export ANDROID_HOME=~/Library/Android/sdk
export PATH=/usr/local/bin:$PATH:$ANDROID_HOME/tools

ulimit -n 2048

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$($HOME/.chefvm/bin/chefvm init -)"
eval "$(hub alias -s)"
