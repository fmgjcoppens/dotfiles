#!/usr/bin/bash

MODE=$1

if [[ $MODE = "work" ]]
then
	KITTY_BO=0.95
elif [[ $MODE == "play" ]]
then
	KITTY_BO=0.85
else
	echo -e "Unknown mode. Please choose either 'work' or 'play'.\n"
fi

sed -i "/background_opacity/c\background_opacity ${KITTY_BO}" ~/.config/kitty/kitty.conf

~/.config/kitty/set_theme.sh 7
