#!/bin/bash

screens=($(xrandr --listmonitors | tail -n +2 | grep -v "\*" | cut -d " " -f6))
fworkspaces=(
	13:F3
	14:F4
	15:F5
)

if [[ $# -gt 1 ]];then
	fworkspaces=( "$@" )
fi

if [[ -z screens ]]; then
	exit 1
fi

for i in "${!screens[@]}"; do
	echo "${fworkspaces[i]} -> ${screens[i]}"
	i3-msg workspace "${fworkspaces[i]}" && i3-msg move workspace to output "${screens[i]}"
done


