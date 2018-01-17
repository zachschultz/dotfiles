#!/bin/bash

# Install linuxbrew 
if ! [ -x "$(command -v brew)" ]; then
  echo 'linuxbrew not installed, installing now...'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  echo 'Adding linuxbrew to path'
  export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
fi

# Taps
brew tap thoughtbot/formulae

# Installs
brew install 'ccat'
brew install 'coreutils'
brew install 'git'
brew install 'node'
brew install 'rcm'
brew install 'watchman'
brew install 'zsh'
