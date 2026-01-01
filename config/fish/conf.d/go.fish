if status is-interactive
    set -gx GOROOT /opt/golang/go
    set -gx GOPATH "$WORKSPACE_HOME/go/path"
    set -gx GOBIN "$GOPATH/bin"
    set -gx GOCACHE "$XDG_CACHE_HOME/go-build"

    set -gx PATH "$GOBIN" "$GOROOT/bin" $PATH
end
