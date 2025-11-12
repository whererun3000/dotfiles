if ! command -v fzf > /dev/null; then
    return
fi

source <(fzf --zsh)

export FZF_COMPLETION_OPTS="--height=30% --layout=reverse --preview='fzf.sh preview {}'"
