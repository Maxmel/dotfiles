# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="max-2"

# Set custom directory
ZSH_CUSTOM=$HOME/dotfiles/oh-my-zsh/custom

alias railspry="pry -r ./config/environment"
alias gs="git status"
alias rs1="bundle exec rails server"
alias rs2="bundle exec rails server -p 3030"
alias dbm="bundle exec rake db:migrate"
alias dbr="bundle exec rake db:reset db:fixtures:load"

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
#alias nvim='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew bundler gem rails ruby colored-man colorize cp bower heroku postgres node npm rake rvm osx zsh-syntax-highlighting)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:/Users/Max/.rvm/gems/ruby-1.9.3-p327/bin:/Users/Max/.rvm/gems/ruby-1.9.3-p327@global/bin:/Users/Max/.rvm/rubies/ruby-1.9.3-p327/bin:/Users/Max/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/Max/Dev/android-sdk-macosx/tools:/Users/Max/Dev/android-sdk-macosx/platform-tools"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='v'

# Base16 Shell
#BASE16_SCHEME="tomorrow"
#BASE16_SHELL="$HOME/.config/base16-shell/base16-$BASE16_SCHEME.dark.sh"
#[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# z 
. `brew --prefix`/etc/profile.d/z.sh
#set TERM
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
