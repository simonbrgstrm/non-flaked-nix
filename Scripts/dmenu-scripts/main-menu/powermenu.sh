# Dmenu script for editing some of my more frequently edited config files.

declare options=("Lock
Reboot
Shutdown
|
SHOT
BACK")

choice=$(echo -e "${options[@]}" | dmenu -i -p ' Power Menu: ' -b)

case "$choice" in
	Lock)
		herbstclient lock
	;;
	Reboot)
		sudo reboot
	;;
	Shutdown)
		sudo shutdown now
	;;
        BACK)
		choice="$HOME/Scripts/dmenu-scripts/dmenu-menu.sh"
	;;
	SHOT)
		exec flameshot gui
	;;
esac
sh $choice
