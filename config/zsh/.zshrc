set -o emacs

ls() {
	command ls -h --color=always "$@"
}

vim() {
    printf '\e7'
    command vim "$@"
    printf '\e8'
}

nvim() {
    printf '\e7'
    command nvim "$@"
    printf '\e8'
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
