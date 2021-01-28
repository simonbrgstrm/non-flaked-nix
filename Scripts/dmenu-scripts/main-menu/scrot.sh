# Dmenu script for editing some of my more frequently edited config files.

declare options=("flameshot
scrot
scrot-3s
scrot-5s
|
BACK")

choice=$(echo -e "${options[@]}" | dmenu -i -nb '#272c29' -nf '#bdc0be' -sb '#697157' -sf '#172030' -p  ' Screenshots: ' -b)

case "$choice" in
	flameshot)
		flameshot gui
	;;
	scrot)
		scrot -q 100 '%d-%m-%Y_$wx$h.png' -e 'mv $f ~/Screenshots/dmenu-scrot/'
	;;
	scrot-3s) 
		scrot -q 100 -d 3 '%d-%m-%Y_$wx$h.png' -e 'mv $f ~/Screenshots/dmenu-scrot/'
	;;
	scrot-5s)
		scrot -q 100 -d 5 '%d-%m-%Y_$wx$h.png' -e 'mv $f ~/Screenshots/dmenu-scrot/'
	;;
        BACK) 
		choice="$HOME/Scripts/dmenu-scripts/dmenu-menu.sh"
	;;
	*)
		exit 1
	;;
esac
sh $choice
