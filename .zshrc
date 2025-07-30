export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

### ZSH stuff
export ZSH_PLUGINS=~/.zsh_local_gitclones/plugins
export ZSH_THEMES=~/.zsh_local_gitclones/themes

setopt SHARE_HISTORY
export HISTFILE=~/.zsh_history
# How many commands zsh will load to memory.
export HISTSIZE=10000
# How many commands history will save on file.
export SAVEHIST=10000
setopt HIST_EXPIRE_DUPS_FIRST

# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS

# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS

### ---- PLUGINS & THEMES -----------------------------------
source $ZSH_THEMES/spaceship-prompt/spaceship.zsh-theme

source $ZSH_PLUGINS/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh

### ZSH Completions
# export ZSH_DISABLE_COMPFIX="true"
fpath=($ZSH_PLUGINS/zsh-completions/src $fpath)
# for brew zsh completions
# if type brew &>/dev/null; then
#     FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

#     autoload -Uz compinit
#     compinit
# fi

### --- Spaceship Config ------------------------------------

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  line_sep      # Line break
  # if needed vi_mode install https://github.com/spaceship-prompt/spaceship-vi-mode
  # vi_mode       # Vi-mode indicator
  # jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# aliases
[ -e $HOME/dotfiles/.zsh_aliases ] && source $HOME/dotfiles/.zsh_aliases
[ -e $HOME/dotfiles/.zsh_git_aliases ] && source $HOME/dotfiles/.zsh_git_aliases

# init tools
[ -e $HOME/.cargo/env ] && source "$HOME/.cargo/env"
[ -f '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc' ] && source '/opt/homebrew/share/google-cloud-sdk/path.zsh.inc'
[ -f '/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc' ] && source '/opt/homebrew/share/google-cloud-sdk/completion.zsh.inc'
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && source "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm