# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"

plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "wintermi/zsh-starship"
plug "zsh-users/zsh-syntax-highlighting"

plug "$ZDOTDIR/exports.zsh"
plug "$ZDOTDIR/options.zsh"
plug "$ZDOTDIR/aliases.zsh"

# Load and initialise completion system
autoload -Uz compinit && compinit

[[ -f "$X_CONFIG_ZSH/.zshrc" ]] && source "$X_CONFIG_ZSH/.zshrc"
