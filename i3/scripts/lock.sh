#!/bin/sh

img=~/dev/wallpapers/warrior.png

convert $img -scale 10% -scale 1000% $img

i3lock -u -i $img
