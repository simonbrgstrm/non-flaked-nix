#!/bin/sh -e

cd ~/wallpapers/tile

img=$(printf '%s\n' * | dmenu -p ' Tile: ' -b -sf '#201e1a' -sb '#928374' -nb '#201e1a' -nf '#928374' -fn 'Cascadia Mono:pixelsize=14')

[ -f "$img" ] && feh --bg-tile "$img" && notify-send "Style: tile" && notify-send "File: $img"
