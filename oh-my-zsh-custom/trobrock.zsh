alias reload='exec $SHELL -l'
alias vrc='$EDITOR ~/.vimrc'
alias zrc='$EDITOR ~/.zshrc'
alias zrcc='$EDITOR ~/.oh-my-zsh/custom/trobrock.zsh'

export THOR_MERGE="opendiff"
export AWS_PAGER=""

alias gdc='git diff --cached'
alias gm='git merge --no-ff'
alias gmff='git merge'
alias gaa='git add -A'
alias gpq='git pull-request'
alias gm='git merge --no-ff'
alias gmff='git merge'
alias gf='git fetch -p'
alias grand='git log --color --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit | grep -ve "Merge pull request" -e "Merge branch" | gshuf -n 1'
alias gbc='git branch --merged | grep -v master | xargs git branch -d'
alias clean='find ./**/*.orig | xargs rm'

alias ghpr='gh pr create -r akatz1 --fill'
alias ghm='gh pr merge -m -d ; gl'

alias b='bundle install'
alias pi='pod repo update && pod install'
alias ip='curl http://ipv4.icanhazip.com'
alias yaml2js="python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)'"
alias ds="docker-sync start --foreground"
alias dc="docker-compose"
alias cov="open coverage/index.html"
alias fs="foreman start"

alias vpn="sudo route change default -interface en0 && sudo route add -host github.secureserver.net -interface gpd0 && sudo route add -host artifactory.secureserver.net -interface gpd0"

alias vim=nvim

function gbisect() {
  good=$1
  bad=${2:-"HEAD"}
  git bisect start ;
  git bisect bad $bad ;
  git bisect good $good ;
  git bisect run ~/git-bisect.sh ;
}

function explain()
{
  cmd=$@
  open http://explainshell.com/explain\?cmd\=$(perl -e "use URI::Escape; print uri_escape('$cmd');")
}
