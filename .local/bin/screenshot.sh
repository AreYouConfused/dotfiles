#!/usr/bin/env bash
set -eE

SCREENSHOTDIR=$HOME/Pictures/Screenshots
TIME=$(date +"%Y-%m-%dT%H:%M:%S")
IMAGE_NAME="${SCREENSHOTDIR}/${TIME}.png"
grim "$IMAGE_NAME"

# inotifywait -e close "$IMAGE_NAME"
feh "$IMAGE_NAME" &
FEH_PID=$!
trap cleanup SIGINT
trap cleanup ERR
cleanup(){
	kill $FEH_PID
	exit 2
}
echo $FEH_PID
#sleep 0.5
REGION=$(slurp -f '%wx%h+%x+%y')
kill $FEH_PID

mogrify -crop "$REGION" "$IMAGE_NAME"

wl-copy < "$IMAGE_NAME"

