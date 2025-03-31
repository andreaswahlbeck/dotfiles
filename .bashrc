function parse_git_dirty {
  [[ $(git status --porcelain 2>/dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2>/dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

# bash stuff
HISTSIZE=10000
HISTFILESIZE=10000

if [ -e $HOME/.bash_aliases ]; then
  . $HOME/.bash_aliases
fi

export BASH_SILENCE_DEPRECATION_WARNING=1

# brew stuff
eval "$(/opt/homebrew/bin/brew shellenv)"

if [ -f $(/opt/homebrew/bin/brew --prefix)/etc/bash_completion ]; then
  . $(/opt/homebrew/bin/brew --prefix)/etc/bash_completion
fi

# nvm stuff
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
# probably don't need this
#[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# git stuff
#export PS1="\n\t \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1="\n \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
#export PS1='\u@\h \[\e[32m\]\w \[\e[91m\]$(__git_ps1)\[\e[00m\]$ '
export PS1='\[\e[32m\]\w \[\e[91m\]$(__git_ps1)\[\e[00m\]$ '

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/andreas.wahlbeck/opt/google-cloud-sdk/path.bash.inc' ]; then . '/Users/andreas.wahlbeck/opt/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/opt/homebrew/share/google-cloud-sdk/path.bash.inc' ]; then
  . '/opt/homebrew/share/google-cloud-sdk/path.bash.inc'
fi
# The next line enables shell command completion for gcloud.
# probably don't need this
# if [ -f '/Users/andreas.wahlbeck/opt/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/andreas.wahlbeck/opt/google-cloud-sdk/completion.bash.inc'; fi

# miscc
# eval $(sf autocomplete script bash)
