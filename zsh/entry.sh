#!/usr/bin/env zsh

export DOTFILES=$HOME/.dotfiles
export INCLUDES=$HOME/.local/share/dotfiles

# Include environment
source $DOTFILES/zsh/env.sh
# Include aliases
source $DOTFILES/zsh/aliases.sh
# Setup dircolors for LS
eval `dircolors $DOTFILES/zsh/dircolors`

#################################################
# Plugins 
################################################
source $INCLUDES/zsh-completions/zsh-completions.plugin.zsh
source $INCLUDES/zsh-history-substring-search/zsh-history-substring-search.zsh
source $INCLUDES/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.fzf.zsh

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

################################################
# ZSH configurations
################################################
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

# Enable zsh-completions
autoload -U compinit && compinit
zmodload -i zsh/complist

unsetopt menu_complete
unsetopt flowcontrol

setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt interactivecomments
setopt share_history

################################################
# Prompt
################################################
source $DOTFILES/zsh/prompt.sh
