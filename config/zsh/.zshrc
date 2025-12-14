set -o emacs

export HISTFILE=$ZCACHEDIR/.zsh_history

ls() {
	command ls -h --color=always "$@"
}

alias ll="ls -l"
alias la="ls -al"
alias vi="vim"
alias nv="nvim"
alias grep="grep --color=auto"

for dir in $(find "$ZPLUGDIR" -mindepth 1 -maxdepth 1 -type d); do
	if [ -f "$dir/.zshrc" ]; then
		. "$dir/.zshrc"
	fi
done
