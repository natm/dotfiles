#!/usr/bin/env bash

rm $HOME/.bash_profile
ln -s $PWD/bash_profile_mac $HOME/.bash_profile

rm $HOME/.nanorc
ln -s $PWD/nanorc $HOME/.nanorc

rm $HOME/.vimrc
ln -s $PWD/vimrc $HOME/.vimrc

rm $HOME/.ssh/config
ln -s $PWD/sshconfig $HOME/.ssh/config

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

# brew install Caskroom/cask/google-chrome


sudo chown root:wheel /usr/local/Cellar/mtr/0.86/sbin/mtr
sudo chmod u+s /usr/local/Cellar/mtr/0.86/sbin/mtr

exit 0
