if status is-login
    set -gx XDG_BIN_HOME "$HOME/.local/bin"
    set -gx XDG_DATA_HOME "$HOME/.local/share"
    set -gx XDG_STATE_HOME "$HOME/.local/state"
    set -gx XDG_CACHE_HOME "$HOME/.cache"
    set -gx XDG_CONFIG_HOME "$HOME/.config"

    set -gx WORKSPACE_HOME "$HOME/Workspace"

    set -gx PATH $XDG_BIN_HOME $PATH
end

if status is-interactive
    set -gx EDITOR vim
    set -gx VISUAL vim

    set -gx MANPAGER "vim -M +MAN -c 'map q :q<CR>' -"

    set -gx LESSKEYIN "$XDG_CONFIG_HOME/less/.lesskey"
    set -gx LESSHISTFILE "$XDG_CACHE_HOME/less/.lesshst"
end
