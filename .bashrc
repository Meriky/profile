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
alias g="grep"
alias gl="grep -rl"

alias apa="sudo apachectl -k restart"

alias sb="source ~/.bashrc"

function gn() {
  grep -rn ${@:1} *
}
