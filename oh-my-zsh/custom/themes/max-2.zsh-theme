local return_code="%(?..%F{196}%? ↵%F{4})"

local user='$(show_user)'
local host='$(show_host)'
local dir='─╼[%F{4}%~%F{8}]╾─'
local git='$(show_git)'
local ruby='$(show_ruby)'
local time='─╼[%F{14}%*%F{8}]'

RPROMPT="$return_code%{$reset_color%}"
PROMPT="%F{8}┌─$user$host$dir$git$ruby$time
└──╼ "
# Check if command exists in $PATH
_exists() {
  command -v $1 > /dev/null 2>&1
}
# Check if the current directory is in a Git repository.
_is_git() {
  command git rev-parse --is-inside-work-tree &>/dev/null
}
show_user() {
  if [[ $LOGNAME != $USER ]] || [[ $UID == 0 ]] || [[ -n $SSH_CONNECTION ]]; then
    local user_color

    if [[ $USER == 'root' ]]; then
      user_color=9
    else
      user_color=2
    fi
    echo -n "─╼[%F{${user_color}}%n%F{8}]╾─"
  fi
}
show_host() {
  [[ -n $SSH_CONNECTION ]] || return
  echo -n "─╼[%F{4}%m%F{8}]╾─"
}
show_git_status() {
  _is_git || return
  ZSH_THEME_GIT_PROMPT_UNTRACKED='?'
  ZSH_THEME_GIT_PROMPT_ADDED="+"
  ZSH_THEME_GIT_PROMPT_MODIFIED="!"
  ZSH_THEME_GIT_PROMPT_RENAMED="»"
  ZSH_THEME_GIT_PROMPT_DELETED="✘"
  ZSH_THEME_GIT_PROMPT_STASHED="$"
  ZSH_THEME_GIT_PROMPT_UNMERGED="="
  ZSH_THEME_GIT_PROMPT_AHEAD="⇡"
  ZSH_THEME_GIT_PROMPT_BEHIND="⇣"
  ZSH_THEME_GIT_PROMPT_DIVERGED="⇕"
  local git_status="$(git_prompt_status)"

  if [[ -n $git_status ]]; then
    echo -n "%F{5}|${git_status}"
  fi
}
show_git() {
  _is_git || return
  echo -n "─╼[%F{3}$(git_current_branch)$(show_git_status)%F{8}]╾─"
}
# RUBY
# Show current version of Ruby
show_ruby() {
  # Show versions only for Ruby-specific folders
  [[ -f Gemfile || -f Rakefile || -n *.rb(#qN^/) ]] || return

  local ruby_version

  if _exists rvm-prompt; then
    ruby_version=$(rvm-prompt i v g)
  elif _exists chruby; then
    ruby_version=$(chruby | sed -n -e 's/ \* //p')
  elif _exists rbenv; then
    ruby_version=$(rbenv version-name)
  else
    return
  fi

  [[ "${ruby_version}" == "system" ]] && return

  # Add 'v' before ruby version that starts with a number
  [[ "${ruby_version}" =~ ^[0-9].+$ ]] && ruby_version="v${ruby_version}"

  echo -n "─╼[%F{9}${ruby_version}%F{8}]╾─"
}
