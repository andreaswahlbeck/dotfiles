#!/usr/bin/env bash
set -e

DOTFILES="$HOME/dotfiles"

# --- git ----------------------------------------------------
# Use --personal to link the personal gitconfig instead of the work one.
if [ "$1" = "--personal" ]; then
  ln -sfv "$DOTFILES/gitconfig.mm" "$HOME/.gitconfig"
else
  ln -sfv "$DOTFILES/gitconfig.bn" "$HOME/.gitconfig"
fi
ln -sfv "$DOTFILES/.gitignore_global" "$HOME/.gitignore_global"

# --- zsh (default shell) ------------------------------------
ln -sfv "$DOTFILES/.zshrc" "$HOME/.zshrc"
[ -f "$HOME/.zsh_history" ] || touch "$HOME/.zsh_history"

# themes and plugins sourced from .zshrc
mkdir -p "$HOME/.zsh_local_gitclones/themes" "$HOME/.zsh_local_gitclones/plugins"

clone() {
  [ -d "$2" ] || git clone --depth 1 "https://github.com/$1.git" "$2"
}
clone spaceship-prompt/spaceship-prompt "$HOME/.zsh_local_gitclones/themes/spaceship-prompt"
clone zdharma-zmirror/fast-syntax-highlighting "$HOME/.zsh_local_gitclones/plugins/fast-syntax-highlighting"
clone zsh-users/zsh-autosuggestions "$HOME/.zsh_local_gitclones/plugins/zsh-autosuggestions"
clone zsh-users/zsh-completions "$HOME/.zsh_local_gitclones/plugins/zsh-completions"

# --- bash (kept for scripts and fallback) --------------------
ln -sfv "$DOTFILES/.bashrc" "$HOME/.bashrc"
ln -sfv "$DOTFILES/.bash_profile" "$HOME/.bash_profile"
ln -sfv "$DOTFILES/.bash_aliases" "$HOME/.bash_aliases"
ln -sfv "$DOTFILES/.bash_git_aliases" "$HOME/.bash_git_aliases"

# --- vscode -------------------------------------------------
if [ "$(uname)" = "Darwin" ]; then
  VSCODE_USER="$HOME/Library/Application Support/Code/User"
else
  VSCODE_USER="$HOME/.config/Code/User"
fi
mkdir -p "$VSCODE_USER"
ln -sfv "$DOTFILES/vscode/settings.json" "$VSCODE_USER/settings.json"

echo "Done."
