#!/usr/bin/env bash

rm $HOME/.bash_profile
ln -s $PWD/bash_profile_mac $HOME/.bash_profile

rm $HOME/.nanorc
ln -s $PWD/nanorc $HOME/.nanorc

rm $HOME/.vimrv
ln -s $PWD/vimrc $HOME/.vimrc

rm $HOME/.ssh/config
ln -s $PWD/sshconfig $HOME/.ssh/config

exit 0
