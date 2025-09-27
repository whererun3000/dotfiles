#!/usr/bin/env bash

for f in $(ls "config"); do
	target=$(realpath "$f")
	linkname="$XDG_CONFIG_HOME/$f"
	if [ -e "$linkname" ]; then
		echo "$linkname already exists, skip"
	else
		ln -sf "$target" "$linkname"
		echo "$linkname -> $target"
	fi
done
