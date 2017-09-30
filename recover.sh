xcode-select --install
read -p "Press [Enter] key to start backup..."
 /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && brew install gcc && brew install go --cross-compile-common  && brew install httpie;
 mkdir ~/git; cd ~/git; http https://api.github.com/users/bsdpunk/repos |python -m json.tool| grep '"name"' | awk -F: '{print $2}' | tr -d \" | tr -d , > repos; for i in $(cat repos); do git clone https://github.com/bsdpunk/$i; done  && cp ~/git/dotfiles/.bash_profile ~/;
brew install coreutils
brew install gnu-sed
brew install wget
brew install grep
#cd Downloads && wget https://iterm2.com/downloads/stable/iTerm2-3_0_10.zip && unzip iTerm2-3_0_10.zip
brew tap Caskroom/cask
brew install Caskroom/cask/iterm2
mkdir ~/go
go get -d github.com/bsdpunk/beastietools
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ~/git/dotfiles/.vimrc ~/;
brew install nvm
source ~/.bash_profile
nvm install node
npm install -g bower grunt-cli jshint
echo "Install XCode Full"
echo "Install XCode Full"

