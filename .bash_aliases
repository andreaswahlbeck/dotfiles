if [ -e $HOME/.bash_git_aliases ]; then
    source $HOME/.bash_git_aliases
fi

alias ga='gcloud auth login --update-adc'
alias tsnode='node --import=tsx'


# Website shortcuts
alias gcp='open "https://console.cloud.google.com/welcome?authuser=1"'