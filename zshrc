# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
 DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(rails rails4 ruby rbenv git git-flow vagrant brew capistrano heroku node osx coffee postgres powder sublime python pip virtualenv)

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

setopt interactivecomments
# HISTORY
#unsetopt inc_append_history
unsetopt share_history
unsetopt correct_all

# aliases
alias ql='qlmanage -p 2>/dev/null'
alias pywebsrv='python -m SimpleHTTPServer'
alias se='. ~/.env'

#[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm
#[[ -s ~/.nvm/nvm.sh ]] && source ~/.nvm/nvm.sh # This loads NVM

#export GOROOT="/usr/local/Cellar/go/1.4.2"
export GOPATH="$HOME/projects/go"

PATH=$HOME/bin:$HOME/scripts
#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#PATH=$PATH:./node_modules/.bin:$HOME/node_modules/.bin
PATH=$HOME/.ndenv/bin:$PATH
PATH=$PATH:/usr/local/bin
PATH=$PATH:/usr/local/heroku/bin
PATH=$PATH:$GOPATH/bin
PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin
PATH=$PATH:/usr/local/share/python

export PATH


eval "$(rbenv init -)"
eval "$(ndenv init -)"

