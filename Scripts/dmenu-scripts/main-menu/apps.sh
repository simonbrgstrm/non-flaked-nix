# Apps Menu

declare options=("Search
|
Discord
Telegram
Emacs
Chrome
Spotify
|
SHOT
BACK
EXIT")

choice=$(echo -e "${options[@]}" | dmenu -p ' Launch: ' -x 451 -y 60 -w 940)

case "$choice" in
	BACK)
		sh ~/Scripts/dmenu-scripts/dmenu-menu.sh
	;;
	Terminal)
		choice="alacritty"
	;;
	Discord)
		choice="discord"
	;;
	Telegram)
		choice="telegram-desktop"
	;;
	Emacs)
		choice="emacs"
	;;
	Chrome)
		choice="google-chrome-stable"
	;;
	Spotify)
		choice="spotify"
	;;
	Search)
		dmenu_run -p " Search: " -x 435 -y 60 -w 950
	;;
	SHOT)
		choice="flameshot gui"
	;;
	EXIT)
		exit 1
	;;
esac
exec $choice
