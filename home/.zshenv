# Put brew stuff first
export PATH=/usr/local/bin:$PATH

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
eval "$($HOME/.chefvm/bin/chefvm init -)"

[[ -s "$HOME/.tmuxifier/init.sh" ]] && source "$HOME/.tmuxifier/init.sh" # Load tmuxifier
. $HOME/nvm/nvm.sh
