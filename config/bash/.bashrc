alias ls="ls --color=auto --group-directories-first"
alias ll="ls -l"
alias la="ls -al"
alias vi="vim"
alias grep="grep --color=auto"

echo ".bashrc loaded"

for dir in $(find "$BASH_DOTDIR/plugins" -mindepth 1 -maxdepth 1 -type d); do
	[ -f "$dir/.bashrc" ] && . "$dir/.bashrc"
done
