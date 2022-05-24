#!/bin/sh
dunst &
picom --experimental-backends &
light-locker &
xmodmap ~/.Xmodmap &
discord --disable-smooth-scrolling &
steam-runtime &
if ( DISPLAY=:0 xinput list | grep -i "Logitech G502" > /dev/null ); then
	DISPLAY=:0 xinput --set-prop "pointer:Logitech G502" 'libinput Accel Profile Enabled' 0 1 &&
		DISPLAY=:0 xinput --set-prop "pointer:Logitech G502" 'libinput Accel Speed' 0
fi

