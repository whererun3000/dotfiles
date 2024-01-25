export HOMEBREW=/opt/homebrew
export HOMEBREW_PIP_INDEX_URL=https://pypi.tuna.tsinghua.edu.cn/simple #ckbrew
export HOMEBREW_API_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api  #ckbrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles #ckbrew

export LDFLAGS=-L$HOMEBREW/opt/binutils/lib
export CPPFLAGS=-I$HOMEBREW/opt/binutils/include

export COREUTILS=$HOMEBREW/opt/coreutils
export BINUTILS=$HOMEBREW/opt/binutils
export PATH=$PATH:$BINUTILS/bin:$COREUTILS/bin

eval $($HOMEBREW/bin/brew shellenv)
