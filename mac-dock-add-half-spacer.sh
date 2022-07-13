#!/bin/bash

# This adds a half-height spacer to the Dock
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'

# As always, kill (and automatically restart) the Dock
killall Dock

