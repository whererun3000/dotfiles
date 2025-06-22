setopt emacs
unsetopt BEEP

# zplug init
export ZPLUG_HOME="$XDG_DATA_HOME/zplug"
source "$ZPLUG_HOME/init.zsh"

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# zsh-users
zplug "zsh-users/zsh-autosuggestions"

zplug "zdharma/fast-syntax-highlighting", defer:2

# local plugins
zplug "$ZDOTDIR/plugins/history", from:local
zplug "$ZDOTDIR/plugins/starship", from:local
zplug "$ZDOTDIR/plugins/directory", from:local
zplug "$ZDOTDIR/plugins/completion", from:local, defer:3
zplug "$ZDOTDIR/plugins/colored-man-pages", from:local

zplug load

[[ -f "$X_CONFIG_ZSH/.zshrc" ]] && source "$X_CONFIG_ZSH/.zshrc"
