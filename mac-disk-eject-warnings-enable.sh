#!/bin/bash

# Give the user a heads-up that we'll be using sudo
echo "Enabling the disk eject warning messages requires sudo, so you will be asked for your password."

# This enables diskarbitrationd's "Disk XXXXX was not ejected properly" messages
sudo defaults delete /Library/Preferences/SystemConfiguration/com.apple.DiskArbitration.diskarbitrationd.plist DADisableEjectNotification

# Kill (and auto-restart) diskarbitrationd
sudo pkill diskarbitrationd

