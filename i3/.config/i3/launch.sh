#!/usr/bin/bash

MODE=$1     # {work, play, default}
THEME=$2    # (light, dark)

if [[ $# != 2 ]]
then
	echo -e "Wrong number of arguments. Please invoke by:\n"
	echo -e "./launch.sh <MODE:{work, play, default}> <THEME:{light, dark}>\n"
	exit 1
fi

if [[ $MODE == "play" ]]
then
	# XrandR
	~/.config/i3/setup_display.sh single

	# Set background wallpapers
	~/.config/i3/set_wallpapers.sh $THEME 1

	# Compositor
	# ~/.config/picom/launch.sh flat
elif [[ $MODE == "work" ]]
then
	# XrandR
	~/.config/i3/setup_display.sh dual

	# Set background wallpapers
	~/.config/i3/set_wallpapers.sh $THEME 1

	# Restore current work environment from script
	#~/start_work.sh

	# Compositor
	# ~/.config/picom/launch.sh flat
elif [[ $MODE == "default" ]]
then
	# Set background wallpapers
	~/.config/i3/set_wallpapers.sh $THEME 2
else
	echo -e "Unknown mode. Please choose either 'work', 'play' or 'default'."
	exit 1
fi

# Polybar
~/.config/polybar/launch.sh --material

# Kitty
~/.config/kitty/setup_kitty.sh $MODE

# Launch IBus daemon to make sure unicode input works in all applications (qt)
#/usr/bin/ibus-daemon -rxR
