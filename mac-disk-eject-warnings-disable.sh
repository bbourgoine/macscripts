#!/bin/bash

# Give the user a heads-up that we'll be using sudo
echo "Disabling the disk eject warning messages requires sudo, so you will be asked for your password."

# This disables diskarbitrationd's "Disk XXXXX was not ejected properly" messages
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification -bool YES

# Kill (and auto-restart) diskarbitrationd
sudo pkill diskarbitrationd
