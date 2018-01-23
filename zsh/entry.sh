#!/usr/bin/env zsh

export DOTFILES=$HOME/.dotfiles
export INCLUDES=$HOME/.local/share/dotfiles

# Include environment
source $DOTFILES/zsh/env.sh
# Include aliases
source $DOTFILES/zsh/aliases.sh
# Setup dircolors for LS
eval `dircolors $DOTFILES/zsh/dircolors`

# Include plugins
source $INCLUDES/zsh-completions/zsh-completions.plugin.zsh
source $INCLUDES/zsh-history-substring-search/zsh-history-substring-search.zsh
source $INCLUDES/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Setup history options
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# If on Linux, include exports from linuxbrew config
os="$(uname -s)"
case "${os}" in
    Linux*)     machine=Linux;;
    *)          machine="UNKNOWN:${os}"
esac 
if [[ $machine == "Linux" ]]; then
  source ~/.dotfiles/linuxbrew/exports.sh
fi



