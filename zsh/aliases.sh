# custom cd & ls function
cdl () { cd "$@" && ls; }

# common commands
alias cl="clear"
alias ls="gls --color -lh --group-directories-first"
alias la="gls --color -lha --group-directories-first"

# npm
alias ni="npm install"
alias nid="npm install --save-dev"
alias nun="npm uninstall"
alias ns="npm start"
alias nt="npm test"
alias nr="npm run"
alias npx="npx --no-install"

# paths
alias p="cd ~/Projects"
alias d="cd ~/.dotfiles"

# colorized cat
alias cat="ccat"

# grep
alias -g G='| grep'

# recursively delete `.DS_Store` files from current folder
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# serve current directory on port 8080
alias serve="python -m SimpleHTTPServer 8080"

# get current ip
alias getip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
