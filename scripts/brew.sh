#!/bin/bash

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew tap thoughtbot/formulae

# Installs
brew install 'ccat'
brew install 'coreutils'
brew install 'git'
brew install 'node'
brew install 'watchman'
brew install 'zsh'

# Casks
brew cask install 'atom'
brew cask install 'authy'
brew cask install 'enpass'
brew cask install 'firefox'
brew cask install 'iterm2'
brew cask install 'keybase'
brew cask install 'microsoft-office'
