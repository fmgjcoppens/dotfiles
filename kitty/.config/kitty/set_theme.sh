#!/usr/bin/bash

THEME=$1
if [[ -z ${THEME} ]]
then
	echo -e "\nThis list:      ./set_theme.sh"
	echo -e "To set a theme: ./set_theme.sh <theme ID>\n"
	echo -e "1) Argonaut"
	echo -e "2) Batman"
	echo -e "3) SeaShells"
	echo -e "4) SeaShells (modified)"
	echo -e "5) Twilight"
	echo -e "6) VibrantInk"
	echo -e "7) VibrantInk (modified)"
else
	case $THEME in
		1)
			ln -svf ~/.config/kitty/Argonaut.conf ~/.config/kitty/current-theme.conf
			;;
		2)
			ln -svf ~/.config/kitty/Batman.conf ~/.config/kitty/current-theme.conf
			;;
		3)
			ln -svf ~/.config/kitty/SeaShells.conf ~/.config/kitty/current-theme.conf
			;;
		4)
			ln -svf ~/.config/kitty/SeaShells_modified.conf ~/.config/kitty/current-theme.conf
			;;
		5)
			ln -svf ~/.config/kitty/Twilight.conf ~/.config/kitty/current-theme.conf
			;;
		6)
			ln -svf ~/.config/kitty/VibrantInk.conf ~/.config/kitty/current-theme.conf
			;;
		7)
			ln -svf ~/.config/kitty/VibrantInk_modified.conf ~/.config/kitty/current-theme.conf
			;;
	esac
fi

