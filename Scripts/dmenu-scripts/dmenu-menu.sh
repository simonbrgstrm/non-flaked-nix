# Main Menu

declare options=("Apps
Configs
System
Music
Startpages
Wallpaper
|
SHOT
EXIT")

choice=$(echo -e "${options[@]}" | dmenu -i -p ' Main menu: ' -x 452 -y 60 -w 946)

case "$choice" in
	Apps)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/apps.sh"
	;;
	Configs)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/edit-configs.sh"
	;;
	Scripts)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/scripts.sh"
	;;
	Music)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/music.sh"
	;;
	Wallpaper)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/bg-menu.sh"
	;;
	System)
		choice="$HOME/Scripts/runxmobar.sh"
	;;
	Startpages)
		choice="$HOME/Scripts/dmenu-scripts/main-menu/bookmarks.sh"
	;;
	SHOT)
		exec flameshot gui
	;;
	EXIT)
		exit 1
	;;
esac 
sh $choice
