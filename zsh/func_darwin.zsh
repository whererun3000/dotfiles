command_not_found_handler() {
	if type "g$1" >/dev/null 2>&1; then
		"g$@"
	else
		echo "$SHELL: command not found: $1"
	fi
}
