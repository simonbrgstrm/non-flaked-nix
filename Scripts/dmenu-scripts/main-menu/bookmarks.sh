# Bookmarks Menu

declare options=("Search
|
GitLab
GitHub
Reddit
Youtube
Discord
Facebook
VimAwesome
|
SHOT
BACK")

choice=$(echo -e "${options[@]}" | dmenu -i -p ' Open: ' -x 452 -y 60 -w 1050)

case "$choice" in
	Search)
		choice="google.com"
	;;
	GitLab)
		choice="gitlab.com"
	;;
	GitHub)
		choice="github.com"
	;;
	Reddit)
		sh ~/Scripts/dmenu-scripts/main-menu/Subreddits/subreddits.sh
	;;
	Discord)
		choice="discord.com"
	;;
    Youtube)
		choice="youtube.com"
	;;
	Facebook)
		choice="facebook.com"
	;;
	VimAwesome)
		choice="vimawesome.com"
	;;
	BACK)
		sh ~/Scripts/dmenu-scripts/dmenu-menu.sh
	;;
	SHOT)
		exec flameshot gui
	;;
esac
exec google-chrome-stable $choice

