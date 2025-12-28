if status is-interactive
	switch (uname)
	case Darwin
		switch (uname -m)
		case arm64
			set HOMEBREW_PREFIX "/opt/homebrew"
		case '*'
			set HOMEBREW_PREFIX "/usr/local/homebrew"
		end
	end

	if test -e "$HOMEBREW_PREFX"
		eval $($HOMEBREW_PREFIX/bin/brew shellenv)

		set -gx HOMEBREW_BREW_GIT_REMOTE "https://mirrors.ustc.edu.cn/brew.git"
		set -gx HOMEBREW_CORE_GIT_REMOTE "https://mirrors.ustc.edu.cn/homebrew-core.git"

		set -gx HOMEBREW_API_DOMAIN "https://mirrors.ustc.edu.cn/homebrew-bottles/api"
		set -gx HOMEBREW_BOTTLE_DOMAIN "https://mirrors.ustc.edu.cn/homebrew-bottles"
	end
end
