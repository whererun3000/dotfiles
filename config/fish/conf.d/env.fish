if not status -i
	return
end

set -gx EDITOR vi
set -gx VISUAL vi

set -gx WORKSPACE "$HOME/workspace"

set -gx XDG_DATA_HOME "$HOME/.local/share"
set -gx XDG_CACHE_HOME "$HOME/.cache"
set -gx XDG_CONFIG_HOME "$HOME/.config"

set -gx X_CONFIG_HOME "$HOME/x/config"

set -gx GOROOT "/usr/local/go"
set -gx GOPATH "$WORKSPACE/go/path"
set -gx GOBIN "$GOPATH/bin"
set -gx GOCACHE "$XDG_CACHE_HOME/go-build"

set -gx STARSHIP_CACHE "$XDG_CACHE_HOME/starship"
set -gx STARSHIP_CONFIG "$XDG_CONFIG_HOME/starship.toml"

fish_add_path -p "/usr/local/bin" "$GOROOT/bin" "$GOBIN"
