if status is-login
    switch (uname -m)
        case arm64
            set BREW_PATH /opt/homebrew
        case '*'
            set BREW_PATH /usr/local/homebrew
    end

    if test -e "$BREW_PATH"
        eval $($BREW_PATH/bin/brew shellenv)

        set -gx HOMEBREW_BREW_GIT_REMOTE "https://mirrors.ustc.edu.cn/brew.git"
        set -gx HOMEBREW_CORE_GIT_REMOTE "https://mirrors.ustc.edu.cn/homebrew-core.git"

        set -gx HOMEBREW_API_DOMAIN "https://mirrors.ustc.edu.cn/homebrew-bottles/api"
        set -gx HOMEBREW_BOTTLE_DOMAIN "https://mirrors.ustc.edu.cn/homebrew-bottles"

        set -l LLVM_PATH "$HOMEBREW_PREFIX/opt/llvm"

        if test -e "$LLVM_PATH"
            set -gxp PATH "$LLVM_PATH/bin"
        end
    end
end
