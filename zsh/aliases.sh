# Remove any existing aliases
unalias -a

#############################
# Work - MSH aliases
#############################
alias tunnel='pkill -9 autossh; autossh -M0 -Ng \
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
 -L 3319:response-wizard-queue-api-mysql.test:3306 \
 -L 3320:contacts.test:80 \
 -L 3321:aviary-content.test:80 \
 -L 3322:charon-test.kivn1g.0001.use1.cache.amazonaws.com:6379 \
 -L 3323:response-wizard-queue-api.test:80 \
 -L 3324:task-api.test:80 \
 -L 3325:aviary-content.test:80 \
 -L 3326:content-life-cycle-api.test:80 \
 -L 3327:event-bus-consumer.test:80 \
 -L 3328:mailer.test:80 \
 -L 3329:composition-api.test:80 \
 -L 3330:customer-identity-api.test:80 \
 -L 3331:customer-notifications.test:80 \
 -L 3332:salesforce-proxy-application.test:80 \
 -L 3333:document-generator.test:80 \
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
 bastion.cloud.mainstreethub.com'

#############################
# Place all new aliases below
#############################

# Reload zshrc config
alias reload="source ~/.zshrc"

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
