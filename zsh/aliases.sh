# Remove any existing aliases
unalias -a

#############################
# Work - MSH aliases
#############################
alias tunnel="pkill -9 autossh; autossh -M0 -Ng \
 -L 3307:deepwheel-mysql.test:3306 \
 -L 3308:dapi-rest-api.test:80 \
 -L 3309:core-services-api.test:80 \
 -L 3310:dapi-services.test:80 \
 -L 3311:deepwheel-mongo.test:27017 \
 -L 3313:deepwheel-test.kivn1g.0001.use1.cache.amazonaws.com:6379 \
 -L 3314:dapi-raven.test:80 \
 -L 3315:hubster.test:80 \
 -L 3316:charon.test:443 \
 -L 3317:hollywood.test:80 \
 -L 3318:navigator.test:80 \
 -L 3320:contacts.test:80 \
 -L 3321:aviary-content.test:80 \
 -L 3322:charon-test.kivn1g.0001.use1.cache.amazonaws.com:6379 \
 -L 3323:response-wizard-queue-api.test:80 \
 -L 3324:task-api.test:80 \
 -L 3326:content-life-cycle-api.test:80 \
 -L 3327:event-bus-consumer.test:80 \
 -L 3328:mailer.test:80 \
 -L 3329:composition-api.test:80 \
 -L 3330:customer-identity-api.test:80 \
 -L 3331:customer-notifications.test:80 \
 -L 3332:salesforce-proxy-application.test:80 \
 -L 3333:response-wizard-queue-api-mysql.test:3306 \
 -L 3334:rwqueue-test.kivn1g.0001.use1.cache.amazonaws.com:6379 \
 -L 3335:scheduler.test:80 \
 -L 3336:insights-api.test:80 \
 -L 3337:onboarding-service.test:80 \
 -L 3338:customer-actions-api.test:80 \
 -L 3339:customer-information-api.test:80 \
 -L 3340:offers-api.test:80 \
 -L 3341:consumer-email-service:80 \
 -L 3342:offers-api-mysql.test:3306 \
 -L 3343:notary-test.kivn1g.0001.use1.cache.amazonaws.com:6379 \
 -L 3344:capability-service.test:80 \
 -L 3346:hubt-pool-manager.test:80 \
 -L 3347:customer-eligibility-service.test:80 \
 -L 3348:customer-eligibility-mysql.test:3306 \
 -L 3349:customer-website-api.test:80 \
 -L 3350:entity-service.test:80 \
 -L 5555:instagram-lockout-api-mysql.test:3306 \
 -L 8000:dapi-app.prod:80 \
 -L 8001:dapi-app.test:80 \
 -L 3366:dapi-mysql.test:3306 \
 -L 5602:$(vpc-info kibana-dapi-queue-log-prod):5601 \
 bastion.cloud.mainstreethub.com &"

alias kibana='ssh -fNg -L 5601:$(aws ec2 describe-instances --filters "Name=tag:application,Values=logging" "Name=tag:environment,Values=infrastructure" "Name=tag:role,Values=kibana" "Name=tag:elasticsearch_cluster_name,Values=elk" "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].PrivateIpAddress" --output text | head -n1):5601 bastion.cloud.mainstreethub.com'

alias msh='cd ~/dev/msh'

#############################
# Place all new aliases below
#############################

# Reload zshrc config
alias reload="source ~/.zshrc"
alias dots="cd $DOTFILES"
alias zrc="nvim $DOTFILES/zshrc"
alias zerc="nvim $ZSH_DOTFILES/entry.sh"
alias zarc="nvim $ZSH_DOTFILES/aliases.sh"
alias tmc="nvim ~/.dotfiles/tmux/tmux.conf"

alias preview="fzf --preview 'bat --color \"always\" {}'"

alias v='nvim'
alias vi='nvim'
alias vim='nvim'

alias vrc='nvim ~/.dotfiles/vim/vimrc'
alias vprc='nvim ~/.dotfiles/vim/plugins.vim'

alias did="vim +'normal Go' +'r!date' ~/did.txt"

alias t="todo.sh"

# Tmux shortcuts
alias tls="tmux ls"
function tmux_attach {
  tmux attach -t "$1"
}
alias ta="tmux_attach"

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


# Quick cd
alias c="cd"

# paths
alias dot="cd ~/.dotfiles"
alias dev="cd ~/dev"

# grep
alias -g G='| grep'

# recursively delete `.DS_Store` files from current folder
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# get current ip
alias getip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

function mdless() {
  pandoc -s -f markdown -t man $1 | groff -T utf8 -man | less
}
umedit() { mkdir -p ~/.notes; vim ~/.notes/$1; }
um() { mdless ~/.notes/"$1"; }
umls() { ls ~/.notes }
