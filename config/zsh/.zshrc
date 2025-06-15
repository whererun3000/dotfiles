[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

# remote plugins
plug "wintermi/zsh-starship"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

# local plugins
plug "$ZDOTDIR/plugins/supercharge"
plug "$ZDOTDIR/plugins/colored-man-pages"

[[ -f "$X_CONFIG_ZSH/.zshrc" ]] && source "$X_CONFIG_ZSH/.zshrc"
