export PYTHONPATH=$PYTHONPATH:/Library/Python/2.7/my-packages
export EDITOR=vim
export GIT_EDITOR=vim
export GOPATH=/Users/lisongyi/workgo
export GOROOT=/usr/local/go
export GOARCH=amd64
export GOOS=darwin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export GO15VENDOREXPERIMENT=1

alias cd..="cd .."
alias c="cd"

alias v="vim"
alias p="pwd"
alias g="grep"
alias gl="grep -rl"
#alias gn="grep -rn"

alias apa="sudo apachectl -k restart"
alias mre="memcached -d restart"

alias sb="source ~/.bashrc"

alias qnpm="npm --registry=http://172.16.0.60:7001/ --cache=$HOME/.npm/.cache/qnpm --disturl=http://node.mirror.bshy.me/dist/ --userconfig=$HOME/.qnpmrc"

function gn() {
  grep -rn ${@:1} *
}
