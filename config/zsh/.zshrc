# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "$ZDOTDIR/core/aliases.zsh"
plug "$ZDOTDIR/core/supercharge.zsh"

plug "$ZDOTDIR/plugins/colored-man-pages"

plug "wintermi/zsh-starship"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"

[[ -f "$X_CONFIG_ZSH/.zshrc" ]] && source "$X_CONFIG_ZSH/.zshrc"
