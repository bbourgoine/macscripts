#!/bin/bash
# mac-keyboard-shortcuts.sh - Setup custom keyboard shortcuts

# Add 'Close Tab' shortcut to Safari on Cmd-w - fixes closing the last tab closing the window
defaults write com.apple.universalaccess com.apple.custommenu.apps -array-add "com.apple.Safari"
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add "Close Tab" -string "@w"

