export WORKSPACE="$HOME/workspace"

# x config
export X_HOME="$HOME/x"
export X_CONFIG="$X_HOME/.config"

# editor
export EDITOR="vi"
export VISUAL="vi"

# XDG
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$ZDOTDIR/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

# golang
export GOPATH="$WORKSPACE/go"
export GOBIN="$GOPATH/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"

# PATH
export PATH="/usr/local/bin:$PATH"
export PATH="$GOBIN:$PATH"

[[ -f "$X_CONFIG/zsh/.zshenv" ]] && source "$X_CONFIG_ZSH/zsh/.zshenv"
