os=$(uname -s)
export OS=${os:l}

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
export HISTSIZE=10000
export SAVEHIST=10000
export ZSH_CACHE_HOME="$XDG_CACHE_HOME/zsh"

# golang
export GOROOT="/usr/local/go"
export GOPATH="$WORKSPACE/go/path"
export GOBIN="$GOPATH/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"

# starship
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship.toml"

[[ -f "$ZDOTDIR/sys/$OS/.zprofile" ]] && source "$ZDOTDIR/sys/$OS/.zprofile"
[[ -f "$X_CONFIG_ZSH/.zprofile" ]] && source "$X_CONFIG_ZSH/.zprofile"

# PATH
export PATH="$GOBIN:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

