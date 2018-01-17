#!/bin/bash
# symlink dotfiles
set -x
lsrc -x README.md -x scripts -x zsh -x linuxbrew -v 
echo 'About to symlink dotfiles, does this look ok? [Y/n]'
output=$( lsrc -x README.md -x scripts -x zsh -x linuxbrew -v )
echo "$output"
# suppress welcome message
if [ ! -f $HOME/.hushlogin ]; then
  touch $HOME/.hushlogin
fi

os="$(uname -s)"
case "${os}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${os}"
esac

if [ "${machine}" == "Linux" ]; then
  # install with linuxbrew
  source ~/.dotfiles/scripts/linuxbrew.sh
elif [ "${machine}" == "Darwin" ]; then
  # install with brew
  source ~/.dotfiles/scripts/brew.sh
fi

# install atom packages
source ~/.dotfiles/scripts/apm.sh

# install with curl
source ~/.dotfiles/scripts/curl.sh


