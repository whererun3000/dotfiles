export SHELL_SESSIONS_DISABLE=1

export WORKSPACE="$HOME/workspace"

# X config
export X_CONFIG_HOME="$HOME/x/config"
export X_CONFIG_ZSH="$X_CONFIG_HOME/zsh"

# Editor
export EDITOR="vi"
export VISUAL="vi"

# XDG
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"

# ZSH
export ZSH_DATA_DIR="$XDG_DATA_HOME/zsh"
export ZSH_CACHE_DIR="$XDG_CACHE_HOME/zsh"

# Golang
export GOROOT="/opt/go"
export GOPATH="$WORKSPACE/go/path"
export GOBIN="$GOPATH/bin"
export GOCACHE="$XDG_CACHE_HOME/go-build"

# Starship
export STARSHIP_CACHE="$XDG_CACHE_HOME/starship"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship.toml"

# PATH
export PATH="/usr/local/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOBIN:$PATH"

# Hombrew
if $(command -v /opt/homebrew/bin/brew >& /dev/null); then
	eval $(/opt/homebrew/bin/brew shellenv)

	export HOMEBREW_PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple
	export HOMEBREW_API_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api
	export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
fi

[[ -f "$X_CONFIG_ZSH/.zprofile" ]] && source "$X_CONFIG_ZSH/.zprofile"
