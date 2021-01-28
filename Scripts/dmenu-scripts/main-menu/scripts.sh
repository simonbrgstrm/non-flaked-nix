# Dmenu script for editing some of my more frequently edited config files.


declare options=("SpotifyAdblock
back")

choice=$(echo -e "${options[@]}" | dmenu -i -nb '#272c29' -nf '#bdc0be' -sb '#9fb1b7' -sf '#172030' -p ' Scripts: ' -b)

case "$choice" in
	back)
		choice="$HOME/Scripts/dmenu-scripts/dmenu-menu.sh"
	;;
	SpotifyAdblock)
		choice="$HOME/Scripts/spotify.sh"
	;;
	*)
		exit 1
	;;
esac
sh "$choice"
# emacsclient -c -a emacs "$choice"

