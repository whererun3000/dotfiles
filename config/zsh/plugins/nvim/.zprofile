export NVIM_APPNAME=lazynvim

if command -v bob >& /dev/null; then
	export PATH="$XDG_DATA_HOME/bob/nvim-bin":$PATH
fi
