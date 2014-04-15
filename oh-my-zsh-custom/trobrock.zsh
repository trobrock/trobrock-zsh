alias reload='exec $SHELL -l'
alias vrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'

alias gdc='git diff --cached'
alias gm='git merge --no-ff'
alias gmff='git merge'
alias gaa='git add -A'
alias gpq='git pull-request'
alias gld="gl | grep Updating | cut -d ' ' -f2 | xargs git diff"
alias gm='git merge --no-ff'
alias gmff='git merge'
alias gf='git fetch -p'
alias clean='find ./**/*.orig | xargs rm'

alias b='bundle install'
alias fs='foreman start'

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
