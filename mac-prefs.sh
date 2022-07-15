#!/bin/bash

### DOCK ###

echo "Applying Dock preferences..."

# Autohide the Dock, remove delay and animation
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -int 0

# Default values:
# defaults write com.apple.dock autohide -bool false
# defaults write com.apple.dock autohide-delay -float 0.5
# defaults write com.apple.dock autohide-time-modifier -int 0.5

# Makes hidden apps dim
defaults write com.apple.Dock showhidden -bool true

# Disable magnification
defaults write com.apple.dock magnification -bool false

# Don't annoyingly auto-rearrange Spaces
defaults write com.apple.dock mru-spaces -bool false

# Kill (and automatically reload) the Dock
killall Dock

### FINDER ###

echo "Applying Finder preferences..."

# Show tabs, sidebar, path bar and status bar
defaults write com.apple.finder ShowSidebar -bool true
defaults write com.apple.finder ShowTabView -bool true
defaults write com.apple.finder ShowPathBar -bool true
defaults write com.apple.finder ShowStatusBar -bool true

# Don't show "tags" in the sidebar
defaults write com.apple.finder ShowRecentTags -bool false

# Don't show the "preview pane"
defaults write com.apple.finder ShowPreviewPane -bool false

# Don't how mounted disks on the Desktop
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false

# Make list view the default
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Make the $HOME folder the default for new Finder windows
# Commenting this next one out, as it throws an error on MacOS 12.4
# 2022-07-15 17:32:11.460 defaults[6065:284436] Unexpected argument PfHm; leaving defaults unchanged.
# defaults write com.apple.finder NewWindowTarget = PfHm;
defaults write com.apple.finder NewWindowTargetPath "file://${HOME}/"

# Sort folders to the top
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Don't hide ~/Library
chflags nohidden ~/Library

# Secure empty Trash by default
defaults write com.apple.finder EmptyTrashSecurely -bool true

### DESKTOPSERVICES ###

echo "Setting DesktopServices preferences..."

# Disable .DS_Store files on network shares and USB disks
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

### LOGIN WINDOW ###

echo "Setting Login Window preferences - this will require a sudo password."

# Add host information to the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

### PRINTING ###

echo "Applying Printing preferences..."

# Quits the printer dialog once the queue is empty
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

### TERMINAL ###

# Set the Pro theme as the default
defaults write com.apple.terminal "Startup Window Settings" -string "Pro"
defaults write com.apple.terminal "Default Window Settings" -string "Pro"

# Set UTF-8 as the terminal encoding
defaults write com.apple.terminal StringEncodings -array 4

# Enable Secure Keyboard Entry
defaults write com.apple.terminal SecureKeyboardEntry -bool true

### NSGlobalDomain ###

echo "Applying NSGlobalDomain preferences..."

# Show all file extensions by default
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show the "full" save dialog instead of the "simple" one
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable "natural" scrolling, as it's unnatural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Set Finder's sidebar icon size to "small"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Disable saving to iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable autocorrect, auto caps, "smart" quotes, "smart" dashes, auto-addition of periods
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Scrollbars show when scrolling
defaults write NSGlobalDomain AppleShowScrollBars -string "WhenScrolling"

echo "To finish applying NSGlobalDomain settings, you need to log out (or call 'sudo pkill loginwindow') and then log back in."
