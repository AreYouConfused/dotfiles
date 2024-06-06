#!/usr/bin/env bash
set -eE

SCREENSHOTDIR=$HOME/Pictures/Screenshots
TIME=$(date +"%Y-%m-%dT%H:%M:%S")
IMAGE_NAME="${SCREENSHOTDIR}/${TIME}.png"
# grim "$IMAGE_NAME"
#
# # inotifywait -e close "$IMAGE_NAME"
# feh "$IMAGE_NAME" &
# FEH_PID=$!
# trap cleanup SIGINT
# trap cleanup ERR
# cleanup(){
# 	kill $FEH_PID
# 	exit 2
# }
# echo $FEH_PID
# #sleep 0.5
# REGION=$(slurp -f '%wx%h+%x+%y')
# kill $FEH_PID
#
# mogrify -crop "$REGION" "$IMAGE_NAME"

hyprpicker -rz &
PICK_PID=$!
cleanup(){
	kill -9 $PICK_PID
	exit 4
}
trap cleanup SIGINT
trap cleanup ERR

hyprctl keyword animations:enabled false
# sleep 0.2
# REGION=$(slurp)
# sleep 0.5
grim -g "$(slurp)" "$IMAGE_NAME"
hyprctl keyword animations:enabled true
kill -9 $PICK_PID

wl-copy < "$IMAGE_NAME"

