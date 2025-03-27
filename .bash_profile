HISTSIZE=10000
HISTFILESIZE=10000

if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

export BASH_SILENCE_DEPRECATION_WARNING=1


if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# eval $(sf autocomplete script bash)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm


# function parse_git_dirty {
#   [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
# }
# function parse_git_branch {
#   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
# }

#export PS1="\n\t \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1="\n \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1='\u@\h \[\e[32m\]\w \[\e[91m\]$(__git_ps1)\[\e[00m\]$ '
#export PS1='\[\e[32m\]\w \[\e[91m\]$(__git_ps1)\[\e[00m\]$ '

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/andreas.wahlbeck/opt/google-cloud-sdk/path.bash.inc' ]; then . '/Users/andreas.wahlbeck/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/andreas.wahlbeck/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/andreas.wahlbeck/opt/google-cloud-sdk/completion.bash.inc'; fi
