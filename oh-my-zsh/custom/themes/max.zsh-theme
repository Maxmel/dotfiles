local ret_status="%(?:%{$bg[brown]%}%{$fg[red]%}%*%{$reset_color%}%{$fg[green]%}%{$bg[black]%}⮀:%{$bg[red]%}%*%{$reset_color%}%{$fg[red]%}%{$bg[black]%}⮀%s)"
PROMPT='┌─${ret_status}%{$bg[black]%}%{$fg[cyan]%} %c %{$reset_color%}%{$fg[black]%}⮀%{$fg_bold[blue]%} $(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}
└─%B%b '
RPROMPT='%{$fg[blue]%}|$(~/.rvm/bin/rvm-prompt)%{$reset_color%}%s'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
