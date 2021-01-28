# Wallpaper Menu

declare options=("Solid
Fill
Scale
Tile
|
SHOT
EXIT")

choice=$(echo -e "${options[@]}" | dmenu -i -p ' Style: ' -x 680 -y 60 -w 577)

case "$choice" in
        Solid)
                choice="$HOME/Scripts/dmenu-scripts/wall-menu/solid.sh"
        ;;
        Fill)
                choice="$HOME/Scripts/dmenu-scripts/wall-menu/fill.sh"
        ;;
        Scale)
                choice="$HOME/Scripts/dmenu-scripts/wall-menu/scale.sh"
        ;;
        Tile)
                choice="$HOME/Scripts/dmenu-scripts/wall-menu/tile.sh"
        ;;
        SHOT)
                exec flameshot gui
        ;;
        BACK)
               choice="$HOME/Scripts/dmenu-scripts/dmenu-menu.sh"
        ;;
esac
sh $choice
