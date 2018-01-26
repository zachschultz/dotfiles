# Remove any existing aliases
unalias -a

# Minikube and kubectl shortcuts
alias mk="minikube"
alias kl="kubectl"

# Make risky commands interactive
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias cl="clear"

# AWS dev (localstack, SAM, etc.)
alias awsl="awslocal"
alias saml="sam local"

# Colorize and make LS shortcuts
if [[ $MACHINE == "Linux" ]]; then
  alias ls="ls --color=auto"
else
  alias ls="ls -G"
fi
alias l="ls"
alias la="ls -laF"
alias ll="ls -lF"

# Call `ls` after cd
function cd {
  builtin cd "$@" && ls -F
}

# npm
alias ni="npm install"
alias nid="npm install --save-dev"
alias nun="npm uninstall"
alias ns="npm start"
alias nt="npm test"
alias nr="npm run"
alias npx="npx --no-install"

# paths
alias dot="cd ~/.dotfiles"
alias de="cd ~/dev"

# colorized cat
alias cat="ccat"

# grep
alias -g G='| grep'

# recursively delete `.DS_Store` files from current folder
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# get current ip
alias getip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
