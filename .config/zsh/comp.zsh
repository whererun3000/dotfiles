# 加载补全系统
autoload -Uz compinit
compinit

# 启用菜单式补全
zstyle ':completion:*' menu select

# 使用颜色高亮补全选项
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"

# 忽略大小写
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# 在补全时包含隐藏文件
zstyle ':completion:*' hidden true

# 描述补全选项
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''

# 使用交互式补全
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' max-errors 2 numeric

# 为特定的命令设置特定的补全行为
zstyle ':completion:*:*:cd:*' tag-order local-directories directory-stack path-directories
zstyle ':completion:*:*:cd:*:path-directories' ignored-patterns '*/.Trash'

# 设置补全选项的排序方式
zstyle ':completion:*' list-prompt %SAt%a\\ %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
