local os_type="$(uname -s)"
local zmodules=(
	"env"
	"alias"
	"func"
	"prompt"
	"comp"
)

for zmodule in "${zmodules[@]}"; do
	local file="$ZDOTDIR/$zmodule.zsh"
	if [ -f "$file" ]; then
		source $file
		echo -e "\033[34m$file loaded\033[0m"
	fi
	
	local os_file="$ZDOTDIR/${zmodule}_${os_type:l}.zsh"
	if [ -f "$os_file" ]; then
		source $os_file
		echo -e "\033[34m$os_file loaded\033[0m"
	fi
done
