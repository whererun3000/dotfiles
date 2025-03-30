# export LDFLAGS=-L$HOMEBREW/opt/binutils/lib
# export CPPFLAGS=-I$HOMEBREW/opt/binutils/include
# 
# export COREUTILS=$HOMEBREW/opt/coreutils
# export BINUTILS=$HOMEBREW/opt/binutils
# export PATH=$PATH:$BINUTILS/bin:$COREUTILS/bin

# Homebrew
export HOMEBREW_PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple
export HOMEBREW_API_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

# Homebrew
eval $(brew shellenv)
