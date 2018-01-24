#!/bin/bash

if [ "${MACHINE}" == "Linux" ]; then
  # install with linuxbrew
  source ~/.dotfiles/scripts/linuxbrew.sh
elif [ "${MACHINE}" == "Mac" ]; then
  # install with brew
  source ~/.dotfiles/scripts/brew.sh
fi

# install atom packages
source ~/.dotfiles/scripts/apm.sh

