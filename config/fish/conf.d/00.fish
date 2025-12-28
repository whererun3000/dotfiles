printf "load config.fish"

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx EDITOR vim
    set -gx VISUAL vim

    set -gx XDG_BIN_HOME "$HOME/.local/bin"
    set -gx XDG_DATA_HOME "$HOME/.local/share"
    set -gx XDG_STATE_HOME "$HOME/.local/state"
    set -gx XDG_CACHE_HOME "$HOME/.cache"
    set -gx XDG_CONFIG_HOME "$HOME/.config"

    set -gx NVIM_APPNAME lazynvim

    set -gx LESSKEYIN "$XDG_CONFIG_HOME/less/.lesskey"
    set -gx LESSHISTFILE "$XDG_CACHE_HOME/less/.lesshst"

    set -gx WORKSPACE_HOME "$HOME/Workspace"

    set -gx PATH $XDG_BIN_HOME $PATH
end
