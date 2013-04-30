#!/bin/sh

# dotfiles
ln -s gemrc ~/.
ln -s zshrc ~/.zshrc
if [ `hostname` == "andsvb-mba.local" ]
  then
  ln -s gitconfig.mm ~/.gitconfig
else
  ln -s gitconfig ~/.gitconfig
fi


# sublime files
if [ `uname` == "Darwin" ]
  then
    ln -s Default\ (OSX).sublime-keymap ~/Library/Application Support/Sublime Text 2/Packages/User
    ln -s Package\ Control.sublime-settings -> ~/Library/Application Support/Sublime Text 2/Packages/User
    ln -s Preferences.sublime-settings ->  ~/Library/Application Support/Sublime Text 2/Packages/User
fi

if [ `uname` == "Linux" ]
  then
    # to where
    #ln -s Default\ (OSX).sublime-keymap ~/Library/Application Support/Sublime Text 2/Packages/User
    #ln -s Package\ Control.sublime-settings -> ~/Library/Application Support/Sublime Text 2/Packages/User
    #ln -s Preferences.sublime-settings ->  ~/Library/Application Support/Sublime Text 2/Packages/User
fi