export ZSH_CACHE_HOME=$HOME/.cache/zsh

export EDITOR=vi
export VISUAL=vi

export HISTFILE=$ZSH_CACHE_HOME/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
export ZSH_SESSION_FILE=$ZSH_CACHE_HOME/.zsh_session

export USRLCL=/usr/local
export GOROOT=/opt/go
export GOPATH=~/gopath
export GOBIN=$GOPATH/bin
export PATH=$PATH:$USRLCL/bin:$GOROOT/bin:$GOBIN
