case $(uname -m) in
	arm64)
		HOMEBREW_PREFIX=/opt/homebrew
		;;
	*)
		HOMEBREW_PREFIX=/usr/local/homebrew
		;;
esac

if [ ! -d "$HOMEBREW_PREFIX" ]; then
	return
fi

if command -v $HOMEBREW_PREFIX/bin/brew >& /dev/null; then
	eval $($HOMEBREW_PREFIX/bin/brew shellenv)

	export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.ustc.edu.cn/brew.git"
	export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.ustc.edu.cn/homebrew-core.git"

	export HOMEBREW_API_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles/api"
	export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.ustc.edu.cn/homebrew-bottles"
fi
