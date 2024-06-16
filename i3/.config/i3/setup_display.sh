#!/usr/bin/bash

MODE=$1

if [[ $MODE == "single" ]]
then
	xrandr --output DP-4 --mode 3440x1440 --rate 120 --primary
	xrandr --output DP-2 --off
elif [[ $MODE == "dual" ]]
then
	xrandr --output DP-4 --mode 3440x1440 --rate 120 --primary
	xrandr --output DP-2 --mode 2560x1440 --rate 74.92 --rotate right --right-of DP-4
else
	echo "Please give mode: ./setup_display.sh <mode>"
	echo "single) Only main display active"
	echo "dual) All displays active"
fi
