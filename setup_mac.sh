#!/usr/bin/env bash

sudo -v

########
# osx cfg from: https://github.com/mathiasbynens/dotfiles/blob/master/.osx

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# Empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# top left start screensaver
defaults write com.apple.dock wvous-tl-corner -int 5
defaults write com.apple.dock wvous-tl-modifier -int 0

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5


# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0


########
# symlinks

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

#########
# brew packages

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
