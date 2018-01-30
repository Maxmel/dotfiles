# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="max-2"

# Set custom directory
ZSH_CUSTOM=$HOME/.dotfiles/oh-my-zsh/custom

alias railspry="pry -r ./config/environment"
alias gs="git status"
alias rs1="bundle exec rails server"
alias rs2="bundle exec rails server -p 3030"
alias rco="bundle exec rails console"
alias dbm="bundle exec rake db:migrate"
alias dbr="bundle exec rake db:reset db:fixtures:load"

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias nano='nvim'
alias notif='reattach-to-user-namespace terminal-notifier -message'
alias cat="pygmentize -g"
alias gls="gls --color=always "

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
case "${OSTYPE}" in
  linux*)
    plugins=(git bundler gem rails ruby colored-man colorize cp bower heroku postgres node npm rake rvm zsh-syntax-highlighting tmux thefuck zsh-autosuggestions)
    ;;
  darwin*)
    alias ctags="`brew --prefix`/bin/ctags"
    plugins=(git brew bundler gem rails ruby colored-man colorize cp bower heroku postgres node npm osx rake rvm zsh-syntax-highlighting tmux thefuck zsh-autosuggestions)
    ;;
esac

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$HOME/.rvm/gems/ruby-2.4.1/bin:$HOME/.rvm/gems/ruby-2.4.1@global/bin:$HOME/.rvm/rubies/ruby-2.4.1/bin:$HOME/.rvm/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/opt/curl/bin:$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e ~/.dircolors && \
  eval `dircolors -b ~/.dircolors`

alias ls="ls --color=always" 
alias grep="grep --color=always"
alias egrep="egrep --color=always" 

export EDITOR='nvim'
export VISUAL='nvim'

export LANG=en_US.UTF-8 LC_CTYPE="en_US.UTF-8"

# fasd
eval "$(fasd --init auto)"
# The FUCK
eval "$(thefuck --alias)"
#set TERM
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi

export NVM_DIR="/home/max/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

setopt hist_ignore_all_dups
export SAVEHIST=100000
export HISTSIZE=100000
export FZF_DEFAULT_COMMAND='ag -g ""'
export QT_QPA_PLATFORMTHEME=qt5ct
