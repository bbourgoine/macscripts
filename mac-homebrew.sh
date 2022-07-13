#!/bin/bash

echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing applications..."
brew install \
    bat \
    exa \
    fzf \
    git \
    htop \
    midnight-commander \
    ripgrep \
    sqlite \
    subversion \
    syncthing \
    tmux \
    xz

echo "Installing casks..."
brew install --cask \
    aerial \
    alfred \
    appcleaner \
    firefox \
    font-consolas-for-powerline \
    font-menlo-for-powerline \
    font-meslo-for-powerline \
    font-ubuntu-mono-derivative-powerline \
    google-chrome \
    hiddenbar \
    iina \
    istat-menus \
    iterm2 \
    itsycal \
    monitorcontrol \
    namechanger \
    #vanilla \
    visual-studio-code
