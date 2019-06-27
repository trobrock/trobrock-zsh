#!/usr/bin/env zsh
# Usage: todo

todo() {
  echo "$(ag --color --group 'TODO:')"
}

todo_prompt_info() {
  if [[ ! -z "$(git_prompt_info)" ]]; then
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(_todo_count)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

_todo_count() {
  echo "$(ag --stats-only 'TODO:' | head -1 | awk '{print $1}')"
}
