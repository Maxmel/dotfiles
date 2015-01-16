local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$fg[green]%}%n «» %M%{$reset_color%}'
local current_dir='%{$fg[blue]%}%~%{$reset_color%}'

local git_branch='$(git_prompt_info)%{$reset_color%}'
local ruby_version='%{$fg[blue]%}$(rvm-prompt i v)%{$reset_color%}'

RPROMPT="[%{$fg[green]%}%*%{$reset_color%}][${ruby_version}] ${return_code}%{$reset_color%}"
PROMPT="┌─[${user_host}]——————————————————————————————————[${current_dir}]${git_branch}
└─ "

ZSH_THEME_GIT_PROMPT_SUFFIX=""

# Git Prompt
function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "—[%{$fg[yellow]%}${ref#refs/heads/}%{$reset_color%}]"
}