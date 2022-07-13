#!/bin/bash

# This adds a full-height spacer to the Dock
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'

# As always, kill (and automatically restart) the Dock
killall Dock

