# Dmenu script for editing some of my more frequently edited config files.


declare options=("Search
|
Alacritty
Herbstluftwm
Picom
XMobar
Dunst
Neovim
Emacs
Discord
Zsh
Ranger
Dmenu
Xresources
Qutebrowser
|
SHOT
BACK")

choice=$(echo -e "${options[@]}" | dmenu -i -p ' Config: ' -b)

case "$choice" in
	BACK)
		sh ~/Scripts/dmenu-scripts/dmenu-menu.sh
	;;
	Search)
		exec alacritty -e ranger ~/.config
	;;
	Alacritty)
		choice="$HOME/.config/alacritty/alacritty.yml"
	;;
	Herbstluftwm)
		choice="$HOME/.config/herbstluftwm/autostart"
	;;
    	Emacs)
		exec emacsclient -c -a emacs $HOME/.doom.d/config.el
	;;
	Dunst)
		choice="$HOME/.config/dunst/dunstrc"
	;;
	Picom)
		choice="$HOME/.config/picom/picom.conf"
	;;
	Ranger)
		choice="$HOME/.config/ranger/rc.conf"
	;;
	Xresources)
		choice="$HOME/.Xresources"
	;;
	Zsh)
		choice="$HOME/.zshrc"
	;;
	SHOT)
		exec flameshot gui
	;;
	Dmenu)
		sh /Scripts/dmenu-scripts/dmenu-config.sh
	;;
esac
exec alacritty -e "$choice"
