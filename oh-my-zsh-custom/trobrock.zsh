alias reload='exec $SHELL -l'
alias vrc='$EDITOR ~/.vimrc'
alias zrc='$EDITOR ~/.zshrc'
alias zrcc='$EDITOR ~/.oh-my-zsh/custom/trobrock.zsh'

alias gdc='git diff --cached'
alias gm='git merge --no-ff'
alias gmff='git merge'
alias gaa='git add -A'
alias gpq='git pull-request'
alias gm='git merge --no-ff'
alias gmff='git merge'
alias gf='git fetch -p'
alias grand='git log --color --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit | grep -ve "Merge pull request" -e "Merge branch" | gshuf -n 1'
alias clean='find ./**/*.orig | xargs rm'

alias b='bundle install'
alias pi='pod repo update && pod install'
alias migrate='SKIP_PUSHER=1 bundle exec rake db:migrate:reset db:seed_fu'
alias ip='curl http://ipv4.icanhazip.com'
alias yaml2js="python -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin), sys.stdout, indent=4)'"

alias vpn="sudo route change default -interface en8 && sudo route add -host github.secureserver.net -interface gpd0"

alias vim=nvim

alias verify_copy="find . \\( -name '*.MP4' -o -name '*.MOV' -o -name '*.RW2' \\) -exec md5 -q {} \\; | sort | md5"

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
