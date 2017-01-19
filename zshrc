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
alias dbm="bundle exec rake db:migrate"
alias dbr="bundle exec rake db:reset db:fixtures:load"

alias v='NVIM_TUI_ENABLE_TRUE_COLOR=1 nvim'
alias nano='nvim'

# Uncomment following line if you want red dots to be displayed while waiting for completion
 COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew bundler gem rails ruby colored-man colorize cp bower heroku postgres node npm rake rvm osx zsh-syntax-highlighting tmux thefuck zsh-autosuggestions)

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:$HOME/.rvm/gems/ruby-1.9.3-p327/bin:$HOME/.rvm/gems/ruby-1.9.3-p327@global/bin:$HOME/.rvm/rubies/ruby-1.9.3-p327/bin:$HOME/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='nvim'
export VISUAL='nvim'


# z 
# if [[ `uname` == 'Darwin' ]]; then . `brew --prefix`/etc/profile.d/z.sh; fi
# fasd
eval "$(fasd --init auto)"
#set TERM
if [[ $TERM == xterm ]]; then TERM=xterm-256color; fi
