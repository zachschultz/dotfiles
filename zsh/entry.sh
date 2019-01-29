#!/usr/bin/env zsh

export DOTFILES=$HOME/.dotfiles
export ZSH_DOTFILES=$DOTFILES/zsh

# Get the OS the user is on for OS-specific commands
os="$(uname -s)"
case "${os}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    *)          machine="UNKNOWN:${os}"
esac
export MACHINE=$machine

#export LOCAL=$HOME/.local
export LOCAL=/usr/local
export EDITOR=nvim

################################################
# Source important files
# ##############################################
# Include environment
source $ZSH_DOTFILES/env.sh
# Include aliases
source $ZSH_DOTFILES/aliases.sh
# Include path
source $ZSH_DOTFILES/path.sh
# Include base16-shell for colors
source $ZSH_DOTFILES/base16-shell.sh

# Setup dircolors for LS
if [[ $MACHINE == "Mac" ]]; then
    export CLICOLOR=YES
fi

source $HOME/.fzf.zsh

# Setup history options
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

################################################
# ZSH configurations
################################################
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

# Enable zsh-completions
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

