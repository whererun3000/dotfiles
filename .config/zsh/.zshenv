export WORKSPACE="$HOME/workspace"

# x config
export X_CONFIG_HOME="$HOME/x/config"
export X_CONFIG_ZSH="$X_CONFIG_HOME/zsh"

# editor
export EDITOR="vi"
export VISUAL="vi"

# XDG
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# zsh
export HISTFILE="$XDG_CACHE_HOME/zsh/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/.zcompdump"

# golang
export GOPATH="$WORKSPACE/go"
export GOBIN="$GOPATH/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"

# PATH
export PATH="/usr/local/bin:$PATH"
export PATH="$GOBIN:$PATH"

# fpath
fpath=($ZDOTDIR/functions $fpath)

[[ -f "$X_CONFIG_ZSH/.zshenv" ]] && source "$X_CONFIG_ZSH/.zshenv"
