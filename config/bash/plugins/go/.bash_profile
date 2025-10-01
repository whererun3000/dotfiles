export GOROOT=/usr/local/go
export GOPATH=$WORKSPACE_PATH/go/path
export GOBIN=$GOPATH/bin
export GOCACHE=$XDG_CACHE_HOME/go-build

export PATH=$GOROOT/bin:$GOBIN:$PATH

echo "go/.bash_profile loaded"
