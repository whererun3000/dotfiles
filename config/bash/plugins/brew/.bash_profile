if command -v brew >& /dev/null; then
	eval $(brew shellenv)
fi

echo "brew/.bash_profile loaded"
