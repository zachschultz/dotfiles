# Path to your oh-my-zsh installation.
export ZSH="/Users/zachschultz/.oh-my-zsh"

ZSH_THEME="robbyrussell"


# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-completions)
autoload -U compinit && compinit
setopt AUTOCD

source $ZSH/oh-my-zsh.sh

source $HOME/.dotfiles/zsh/entry.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
