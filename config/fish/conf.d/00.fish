if status is-interactive
    set -gx XDG_BIN_HOME "$HOME/.local/bin"
    set -gx XDG_DATA_HOME "$HOME/.local/share"
    set -gx XDG_STATE_HOME "$HOME/.local/state"
    set -gx XDG_CACHE_HOME "$HOME/.cache"
    set -gx XDG_CONFIG_HOME "$HOME/.config"

    set -gx WORKSPACE_HOME "$HOME/Workspace"
end
