#!/bin/sh

CWD=`pwd`

# dotfiles
ln -sf $CWD/gemrc ~/.gemrc
ln -sf $CWD/zshrc ~/.zshrc
if [ `hostname` == "andsvb-mba.local" ]
  then
  ln -sf $CWD/gitconfig.mm ~/.gitconfig
else
  ln -sf $CWD/gitconfig ~/.gitconfig
fi

exit

# sublime files
if [ `uname` == "Darwin" ]
  then
    echo "linking sublime for mac"
    ln -sf $CWD/sublime/Default\ \(OSX\).sublime-keymap ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/
    ln -sf $CWD/sublime/Package\ Control.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/
    ln -sf $CWD/sublime/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/
fi

if [ `uname` == "Linux" ]
  then
    # to where
    echo "linking sublime for linux"
    #ln -s Default\ (OSX).sublime-keymap ~/Library/Application Support/Sublime Text 2/Packages/User
    #ln -s Package\ Control.sublime-settings -> ~/Library/Application Support/Sublime Text 2/Packages/User
    #ln -s Preferences.sublime-settings ->  ~/Library/Application Support/Sublime Text 2/Packages/User
fi