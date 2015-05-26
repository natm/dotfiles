#!/usr/bin/env bash

sudo -v

## xcode-select --install

######
# aliases

# Start Screen Saver
alias ss='open /System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app'

########

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

# Speed up mission control animation
defaults write com.apple.dock expose-animation-duration -float 0.12

# disable the animations for opening Quick Look windows
defaults write -g QLPanelAnimationDuration -float 0

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

# Always show user libraru
chflags nohidden ~/Library/

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

# hide the spotlight icon
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

# expand save panel
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# quit print app once jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# reveal ip and hostname with clicking the clock in login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Disabling press-and-hold for special keys in favor of key repeat
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

# Safari - don't send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Time machine - present it from using new hard drives as a backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# iterm2!

# no job name
defaults write com.googlecode.iterm2 JobName -bool false

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
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/bundle
brew bundle 
#brew bundle Caskfile


sudo chown root:wheel /usr/local/Cellar/mtr/0.86/sbin/mtr
sudo chmod u+s /usr/local/Cellar/mtr/0.86/sbin/mtr

exit 0
