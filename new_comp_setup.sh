#!/bin/bash

# Check that Home-brew is installed and install if not
if test ! $(which_brew)
then
  echo "Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /tmp/homebrew-install.log
fi

brew update
brew upgrade —all

brew install wget
brew install tree
brew install ack
brew install vim

echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc
source ~/.zshrc
echo ".dotfiles.git" >> .gitignore
git clone --bare git@github.com:lebca/dotfiles.git $HOME/.dotfiles.git
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no

echo "dot files done"

brew cask install iterm2
brew cask install little-snitch
brew cask install mpv
brew cask install dropbox
brew cask install slack

