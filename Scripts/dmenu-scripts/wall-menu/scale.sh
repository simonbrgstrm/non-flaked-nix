#!/bin/sh -e

cd ~/Wallpapers

img=$(printf '%s\n' * | dmenu -p ' Scale: ' )

[ -f "$img" ] && feh --bg-scale "$img" && notify-send "Style: scale" && notify-send "File: $img"
