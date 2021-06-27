#!/bin/sh

img=~/dev/wallpapers/warrior.png

scrot $img
convert $img -scale 10% -scale 1000% $img

i3lock -u -i $img
