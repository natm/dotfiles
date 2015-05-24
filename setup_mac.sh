#!/usr/bin/env bash


rm $HOME/.bash_profile
ln -s $PWD/home/.bash_profile $HOME/.bash_profile

rm $HOME/.gitconfig
ln -s $PWD/home/.gitconfig $HOME/.gitconfig

rm $HOME/.hushlogin
ln -s $PWD/home/.hushlogin $HOME/.hushlogin

rm $HOME/.nanorc
ln -s $PWD/home/.nanorc $HOME/.nanorc

rm $HOME/.vimrc
ln -s $PWD/home/.vimrc $HOME/.vimrc

rm $HOME/.ssh/config
ln -s $PWD/home/.ssh/config $HOME/.ssh/config

brew install ansible
brew install fish
brew install tree
brew install pwgen
brew install redis
brew install ipcalc
brew install sipcalc
brew install mtr
brew install fping
brew install nmap
brew install unrar
brew install wget
brew install sslscan
brew install mobile-shell

# brew install Caskroom/cask/google-chrome


sudo chown root:wheel /usr/local/Cellar/mtr/0.86/sbin/mtr
sudo chmod u+s /usr/local/Cellar/mtr/0.86/sbin/mtr

exit 0
