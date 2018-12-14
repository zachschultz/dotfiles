export BROWSER="firefox"

TERM=xterm-256color
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Tab complete dot files
setopt globdots

plugins=(
  git
  ssh-agent
)

source $ZSH/oh-my-zsh.sh

# User configuration

export LANG=en_US.UTF-8

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

export VISUAL=nvim
export VIMCONFIG=~/.config/nvim

##########
# FZF
# ########
export PATH=$PATH:$VIMCONFIG/pack/bundle/start/fzf/bin:~/.local/bin
export FZF_DEFAULT_COMMAND='rg --files'

# Ruby Gems
export GEM_HOME=$HOME/.gem
export PATH=$PATH:$(ruby -e 'print Gem.user_dir')/bin

# Example aliases
alias t="~/.local/bin/todo"
alias vim="nvim"
alias v="nvim"
alias reload="source ~/.zshrc"
#
alias dot="cd ~/.dotfiles"
alias vcf="nvim ~/.dotfiles/nvim/.config/nvim/init.vim"
alias tcf="nvim ~/.dotfiles/termite/.config/termite/config"

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# JAVA
export JAVA_HOME=/usr/jdk/jdk-11.0.1
export PATH=$JAVA_HOME/bin:$PATH


PATH="/home/zach/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/zach/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/zach/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/zach/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/zach/perl5"; export PERL_MM_OPT;
