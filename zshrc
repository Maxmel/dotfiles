#
# User configuration sourced by interactive shells
#
#
# Powerlevel9k prompt theme config
#
POWERLEVEL9K_INSTALLATION_PATH=~/.zim/modules/prompt/external-themes/powerlevel9k/powerlevel9k.zsh-theme
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir vi_mode rbenv vcs)
DEFAULT_USER="Max"
POWERLEVEL9K_HOME_ICON='\ufb9f'
POWERLEVEL9K_HOME_SUB_ICON='\uf115'
POWERLEVEL9K_FOLDER_ICON='\uf114'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_VCS_BRANCH_ICON='\uf7a1 '
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON='\uf171'
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uf113'
POWERLEVEL9K_VCS_GIT_GITLAB_ICON='\uf296'
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs load disk_usage ram battery time)
POWERLEVEL9K_STATUS_CROSS=true
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_RUBY_ICON='\ue21e'
POWERLEVEL9K_DISK_ICON='\ufaed'
POWERLEVEL9K_BATTERY_STAGES=($'\uf579 ' $'\uf57a ' $'\uf57b ' $'\uf57c ' $'\uf57d ' $'\uf57e ' $'\uf57f ' $'\uf580 ' $'\uf581 ' $'\uf578 ')
#
# ZIM Zsh framework config
#
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
#
# aliases
#
# Git aliases
alias gs="git status"
# Rails aliases
alias railspry="pry -r ./config/environment"
alias rs1="bundle exec rails server"
alias rs2="bundle exec rails server -p 3030"
alias rco="bundle exec rails console"
alias dbm="bundle exec rake db:migrate"
alias dbr="bundle exec rake db:reset db:fixtures:load"
# utilities aliases
alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias notif='reattach-to-user-namespace terminal-notifier -message'
# alias cat="pygmentize -g"
alias gls="gls --color=always "
alias egrep="egrep --color=always"
#
# ZSH Path configuration
#
typeset -U path
path=(
  $HOME/.rbenv/bin 
  /usr/local/opt/coreutils/libexec/gnubin 
  /usr/local/opt/curl/bin 
  $HOME/.local/bin 
  $path[@] 
  /usr/local/bin 
  /usr/local/sbin 
  /usr/bin 
  /bin 
  /usr/sbin 
  /sbin)

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e ~/.dircolors && \
   eval `dircolors -b ~/.dircolors`

# rbenv init
eval "$(rbenv init -)"
# fasd
eval "$(fasd --init auto)"
#set TERM
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
#
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#
setopt hist_ignore_all_dups
setopt hist_ignore_space
export SAVEHIST=100000
export HISTSIZE=100000
export FZF_DEFAULT_COMMAND='ag -g ""'
export QT_QPA_PLATFORMTHEME=qt5ct
