#!/bin/sh

#ln -sf ~/dotfiles/.zsh ~/.zsh
ln -sf ~/dotfiles/.zshrc ~/.zshrc

[ -f ~/.zsh_history ] || touch ~/.zsh_history


[ -d ~/.zsh_local_gitclones/themes ] || mkdir ~/.zsh_local_gitclones/themes
[ -d ~/.zsh_local_gitclones/plugins ] || mkdir ~/.zsh_local_gitclones/plugins

[ -d ~/.zsh_local_gitclones/themes/spaceship-prompt ] || git clone git@github.com:spaceship-prompt/spaceship-prompt.git ~/.zsh_local_gitclones/themes/spaceship-prompt

[ -d ~/.zsh_local_gitclones/plugins/fast-syntax-highlighting ] || git clone git@github.com:zdharma-zmirror/fast-syntax-highlighting.git ~/.zsh_local_gitclones/plugins/fast-syntax-highlighting
[ -d ~/.zsh_local_gitclones/plugins/zsh-autosuggestions ] || git clone git@github.com:zsh-users/zsh-autosuggestions.git ~/.zsh_local_gitclones/plugins/zsh-autosuggestions
[ -d ~/.zsh_local_gitclones/plugins/zsh-completions ] || git clone git@github.com:zsh-users/zsh-completions.git ~/.zsh_local_gitclones/plugins/zsh-completions

