#!/bin/bash
defaults write com.apple.universalaccess com.apple.custommenu.apps -array-add "com.apple.Safari"
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add "Close Tab" -string "@w"

