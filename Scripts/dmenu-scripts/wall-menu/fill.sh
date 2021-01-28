#!/bin/sh -e

cd ~/Wallpapers

img=$(printf '%s\n' * | dmenu -p ' Fill: ' -x 435 -y 60 -w 950)

[ -f "$img" ] && feh --bg-fill "$img" && notify-send "Style: fill" && notify-send "File: $img"
