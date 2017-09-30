xcode-select --install
read -p "Press [Enter] key to start backup..."
 /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && brew install gcc && brew install go --cross-compile-common  && brew install httpie;
 mkdir ~/git; cd ~/git; http https://api.github.com/users/bsdpunk/repos |python -m json.tool| grep '"name"' | awk -F: '{print $2}' | tr -d \" | tr -d , > repos; for i in $(cat repos); do git clone https://github.com/bsdpunk/$i; done  && cp ~/git/dotfiles/.bash_profile ~/;
brew install coreutils
brew install gnu-sed
brew install wget
brew install grep
cd Downloads && wget https://iterm2.com/downloads/stable/iTerm2-3_0_10.zip && unzip iTerm2-3_0_10.zip
