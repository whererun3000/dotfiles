# Editor
export EDITOR="vim"
export VISUAL="vim"

# XDG
export XDG_BIN_HOME=$HOME/.local/bin
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

# Zplug
export ZPLUG_HOME="$XDG_DATA_HOME/zplug"

# Extra config
export X_CONFIG_HOME=$HOME/x/config

export WORKSPACE=$HOME/workspace

# Starship
export STARSHIP_CACHE=$XDG_CACHE_HOME/starship
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship.toml

# less
export LESSKEYIN=$XDG_CONFIG_HOME/less/.lesskey
export LESSHISTFILE=$XDG_CACHE_HOME/less/.lesshst

# Golang
export GOROOT=/usr/local/go
export GOPATH=$WORKSPACE/go/path
export GOBIN=$GOPATH/bin
export GOCACHE=$XDG_CACHE_HOME/go-build

# Zplug
export ZPLUG_HOME="$XDG_DATA_HOME/zplug"

# PATH
export PATH=$XDG_BIN_HOME:/usr/local/bin:$PATH
export PATH=$GOROOT/bin:$PATH
export PATH=$GOBIN:$PATH

# Zsh
ZDOTDIR=$XDG_CONFIG_HOME/zsh
ZDATADIR=$XDG_DATA_HOME/zsh
ZCACHEDIR=$XDG_CACHE_HOME/zsh

XZDOTDIR=$X_CONFIG_HOME/zsh

# Hombrew
if $(command -v /opt/homebrew/bin/brew >& /dev/null); then
	eval $(/opt/homebrew/bin/brew shellenv)

	export HOMEBREW_API_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api
	export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
	export HOMEBREW_PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple
fi

[[ -f "$XZDOTDIR/.zshenv" ]] && source "$XZDOTDIR/.zshenv"
