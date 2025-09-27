setopt emacs
unsetopt BEEP

# zplug init
source "$ZPLUG_HOME/init.zsh"

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# zsh-users
zplug "zsh-users/zsh-autosuggestions"

zplug "zdharma/fast-syntax-highlighting", defer:2

# local plugins
zplug "$ZDOTDIR/plugins/yazi", from:local
zplug "$ZDOTDIR/plugins/history", from:local
zplug "$ZDOTDIR/plugins/starship", from:local
zplug "$ZDOTDIR/plugins/directory", from:local
zplug "$ZDOTDIR/plugins/completion", from:local, defer:3
zplug "$ZDOTDIR/plugins/colored-man-pages", from:local

zplug load

[[ -f "$XZDOTDIR/.zshrc" ]] && source "$XZDOTDIR/.zshrc"
