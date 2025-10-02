export EDITOR=vim
export VISUAL=vim

export WORKSPACE_PATH=$HOME/Workspace

export LESSKEYIN=$XDG_CONFIG_HOME/less/.lesskey
export LESSHISTFILE=$XDG_CACHE_HOME/less/.lesshst

export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache
export XDG_CONFIG_HOME=$HOME/.config

export BASH_DOTDIR=$XDG_CONFIG_HOME/bash
export BASH_PLUGDIR=$BASH_DOTDIR/plugins

echo ".bash_profile loaded"

for file in /usr/local/etc/profile.d/*.sh; do
	# . "$file"
	echo "$file loaded"
done

for dir in $(find "$BASH_PLUGDIR" -mindepth 1 -maxdepth 1 -type d); do
	[ -f "$dir/.bash_profile" ] && . "$dir/.bash_profile"
done

[[ $- = *i* ]] && [ -f "$HOME/.bashrc" ] && . "$HOME/.bashrc"
