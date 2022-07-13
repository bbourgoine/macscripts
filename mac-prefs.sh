#!/bin/bash

### DOCK ###

echo "Applying Dock preferences..."

# Autohide the Dock, remove delay and animation
defaults write com.apple.dock autohide -int 1
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0

# To Undo:
# defaults write com.apple.dock autohide -int 0
# defaults write com.apple.dock autohide-delay -float 0.5
# defaults write com.apple.dock autohide-time-modifier -int 0.5

# Makes hidden apps dim
defaults write com.apple.Dock showhidden -bool TRUE

# Kill (and automatically reload) the Dock
killall Dock

### FINDER ###

echo "Applying Finder preferences..."

defaults write com.apple.finder ShowPathBar -int 1
defaults write com.apple.finder ShowStatusBar -int 1

defaults write com.apple.finder ShowRecentTags =int 0

defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -int 1
defaults write com.apple.finder ShowHardDrivesOnDesktop -int 0
defaults write com.apple.finder ShowRemovableMediaOnDesktop -int 1

defaults write com.apple.finder NewWindowTarget = PfHm;
defaults write com.apple.finder NewWindowTargetPath "file://$HOME/"

### NSGlobalDomain ###

echo "Applying NSGlobalDomain preferences..."

# Disable "natural" scrolling, as it's unnatural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool FALSE

echo "To finish applying NSGlobalDomain settings, you need to log out (or call 'sudo pkill loginwindow') and then log back in."
