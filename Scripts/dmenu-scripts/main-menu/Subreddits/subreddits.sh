# Bookmarks Menu

declare options=("Reddit
|
r/NixOS
r/OpenBSD
r/NetBSD
r/Voidlinux
r/ArchLinux
r/LinuxMemes
r/StartPages
r/UnixPorn
r/VimPorn
r/Vim
r/Emacs
|
SHOT
BACK")

choice=$(echo -e "${options[@]}" | dmenu -i -p ' Subreddits: ' -x 150 -y 60 -w 1650)

case "$choice" in
	Search)
		choice="reddit.com"
	;;
	r/NixOS)
		choice="reddit.com/r/nixos"
	;;
	r/OpenBSD)
		choice="reddit.com/r/openbsd"
	;;
	r/NetBSD)
		choice="reddit.com/r/netbsd"
    ;;
    r/Voidlinux)
        choice="reddit.com/r/voidlinux"
    ;;
    r/Archlinux)
        choice="reddit.com/r/archlinux"
    ;;
    r/LinuxMemes)
        choice="reddit.com/r/linuxmemes"
    ;;
    r/StartPages)
        choice="reddit.com/r/startpages"
	;;
    r/unixporn)
		choice="reddit.com/r/unixporn"
	;;
	r/vimporn)
		choice="reddit.com/r/vimporn"
	;;
	r/vim)
		choice="reddit.com/r/vim"
	;;
	r/emacs)
		choice="reddit.com/r/emacs"
	;;
	BACK)
		sh ~/Scripts/dmenu-scripts/dmenu-menu.sh
	;;
	SHOT)
		exec flameshot gui
	;;
	EXIT)
		exit 1
	;;
esac
exec google-chrome-stable $choice

