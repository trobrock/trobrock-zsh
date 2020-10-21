PROMPT=$'%F{10}[%F{14}%~%F{10}]%{$reset_color%} $(git_prompt_info)\
 %#%{$reset_color%} '

RPROMPT='$(rvm_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{10}[%F{4}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{10}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
