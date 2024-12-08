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
export HISTFILE="$XDG_CACHE_HOME/zsh/.zhistory"
export COMPDUMPFILE="$XDG_CACHE_HOME/zsh/.zcompdump"
export ZSH_COMPDUMP="$XDG_CACHE_HOME/zsh/.zcompdump"

# golang
export GOROOT="/usr/local/go"
export GOPATH="$WORKSPACE/go/path"
export GOBIN="$GOPATH/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"

# starship
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship.toml"

# PATH
export PATH="$GOBIN:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

[[ -f "$X_CONFIG_ZSH/.zshenv" ]] && source "$X_CONFIG_ZSH/.zshenv"
