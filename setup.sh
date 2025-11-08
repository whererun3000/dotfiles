#!/usr/bin/env bash

for f in $(find config -mindepth 1 -maxdepth 1); do
	target=$(realpath "$f")
	linkname="$XDG_CONFIG_HOME/$(basename $f)"
	if [ -e "$linkname" ]; then
		echo "$linkname already exists, skip"
	else
		ln -sf "$target" "$linkname"
		echo "$linkname -> $target"
	fi
done

for f in $(find bin -mindepth 1 -maxdepth 1); do
	target=$(realpath "$f")
	linkname="$XDG_BIN_HOME/$(basename $f)"
	if [ -e "$linkname" ]; then
		echo "$linkname already exists, skip"
	else
		ln -sf "$target" "$linkname"
		echo "$linkname -> $target"
	fi
done

ln -sf $(realpath config/bash/.bashrc) $HOME/.bashrc
ln -sf $(realpath config/bash/.bash_profile) $HOME/.bash_profile
