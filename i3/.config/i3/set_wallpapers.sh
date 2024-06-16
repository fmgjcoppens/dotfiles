#!/usr/bin/bash

THEME=$1
SELECTION=$2

if [[ $THEME == "light" ]]
then
	case $SELECTION in
		1)
			feh --bg-fill ~/Pictures/Wallpapers/3440x1440/mountains.png --bg-fill ~/Pictures/Wallpapers/1440x2560/winter.jpg
			;;
		2)
			feh --bg-fill ~/Pictures/Wallpapers/3440x1440/winter.jpg --bg-fill ~/Pictures/Wallpapers/1440x2560/winter.jpg
			;;
		3)
			feh --bg-fill ~/Pictures/Wallpapers/3440x1440/arch_blue.png --bg-fill ~/Pictures/Wallpapers/1440x2560/arch_blue.png
			;;
		*)
			echo -e "Please choose a number from {1, 2, 3}\n"
			;;
	esac
elif [[ $THEME == "dark" ]]
then
	case $SELECTION in
		1)
			feh --bg-fill ~/Pictures/Wallpapers/3440x1440/arch_off.png --bg-fill ~/Pictures/Wallpapers/1440x2560/arch_off.png
			;;
		2)
			feh --bg-fill ~/Pictures/Wallpapers/3440x1440/ai_generated_mnts_03.jpeg --bg-fill ~/Pictures/Wallpapers/1440x2560/arch_off.png
			;;
		*)
			echo -e "Please choose a number from {1}\n"
			;;
	esac
else
	echo -e "Unknown theme. Please choose either 'light', or 'dark'.\n"
fi
