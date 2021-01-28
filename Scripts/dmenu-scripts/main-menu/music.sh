# Music Menu

declare options=("Lindsey Stirling
The Score
Shawn James
Bishop Briggs
Crocked Still
|
SHOT
BACK")

choice=$(echo -e "${options[@]}" | dmenu -i -p ' Choose Artist: ' -b -sf '#201e1a' -sb '#928374' -nb '#201e1a' -nf '#928374' -fn 'Cascadia Mono:pixelsize=14')

case "$choice" in
	Lindsey Stirling)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/apps.sh"
	;;
	The Score)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/edit-configs.sh"
	;;
	Shawn James)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/scripts.sh"
	;;
	Bishop Briggs)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/bg-menu.sh"
	;;
	Crooked Still)
		choice="$HOME/Scripts/runxmobar.sh"
	;;
	Herbstclient)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/herbstcommander.sh"
	;;
	SHOT)
		exec flameshot gui
	;;
	BACK)
		choice="$HOME/Scripts/dmenu-scripts/dmenu-menu.sh"
	;;
esac
sh $choice
