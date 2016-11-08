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
alias pi='pod repo update && pod install'
alias fs='foreman start'
alias migrate='bundle exec rake db:migrate:reset db:seed_fu'
alias ip='curl http://ipv4.icanhazip.com'
alias whitelist='aws ec2 replace-network-acl-entry --network-acl-id acl-14d76071 --rule-number 118 --protocol 6 --rule-action allow --ingress --cidr-block "$(ip)/32" --port-range From=22,To=22'

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

function dock()
{
  dockstatus="$(docker-machine status)"
  if [ "$dockstatus" != "Running" ]; then
    docker-machine start
  fi
  eval "$(docker-machine env)"
}

function undock()
{
  dockstatus="$(docker-machine status)"
  if [[ "$dockstatus" == "Running" ]]; then
    docker-machine stop
  fi
}

function biotrack_version()
{
  url="$(curl -Ls -o /dev/null -w %{url_effective} http://biotrackthc.com/api/xml)"
  echo ${${url##*-}%.pdf}
}
