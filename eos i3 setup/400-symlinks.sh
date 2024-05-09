#!/bin/bash

XDG_DIRECTORIES=(
	"Desktop"
	"Documents"
	"Downloads"
	"Music"
	"Pictures"
	"Public"
	"Templates"
	"Videos"
)


mkdir ~/main


for dir in "${XDG_DIRECTORIES[@]}"; do
	ln -s "$HOME/$dir" "$HOME/main"
done

