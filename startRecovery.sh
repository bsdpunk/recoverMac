#!/bin/bash - 
#===============================================================================
#
#          FILE: startRecovery.sh
# 
#         USAGE: ./startRecovery.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 09/30/2017 15:28
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
xcode-select --install
read -p "Press [Enter] key when Xcode CLI is finished installing..."
 /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && brew install gcc && brew install go --cross-compile-common  && brew install httpie;
 mkdir ~/git; cd ~/git; http https://api.github.com/users/bsdpunk/repos |python -m json.tool| grep '"name"' | awk -F: '{print $2}' | tr -d \" | tr -d , > repos; for i in $(cat repos); do git clone https://github.com/bsdpunk/$i; done  && cp ~/git/dotfiles/.bash_profile ~/;
brew tap Caskroom/cask &&  brew install coreutils gnu-sed wget nvm Caskroom/cask/iterm2
mkdir ~/go
go get -d github.com/bsdpunk/beastietools
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/git/dotfiles/.vimrc ~/;
source ~/.bash_profile
nvm install node
npm install -g bower grunt-cli jshint

## Chrome Install
cd ~/Downloads; wget https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg; open googlechrome.dmg
sudo cp -R /Volumes/Google\ Chrome/Google\ Chrome.app/ /Applications/
## Keybase Download
cd ~/Downloads; wget https://prerelease.keybase.io/Keybase.dmg

echo "Install XCode Full"
echo "Install XCode Full"
echo "Install XCode Full"
echo "Install XCode Full"

read -p "Press [Enter] key once Xcode Is installed..."
