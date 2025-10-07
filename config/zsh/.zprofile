set -o emacs

export EDITOR=vim
export VISUAL=vim

export XDG_BIN_HOME=$HOME/.local/bin
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

export WORKSPACE_HOME=$HOME/Workspace

export LESSKEYIN=$XDG_CONFIG_HOME/less/.lesskey
export LESSHISTFILE=$XDG_CACHE_HOME/less/.lesshst

export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export ZPLUGDIR=$ZDOTDIR/plugins

export ZDATADIR=$XDG_DATA_HOME/zsh
export ZCACHEDIR=$XDG_CACHE_HOME/zsh

export SHELL_SESSION_DIR=$ZCACHEDIR/.zsh_sessions

for dir in $(find $ZPLUGDIR -mindepth 1 -maxdepth 1 -type d); do
	if [ -f "$dir/.zprofile" ]; then
		. "$dir/.zprofile"
	fi
done
