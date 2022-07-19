#!/bin/sh

# Set other outputs to off
xrandr --output HDMI-1-0 --off

# Configure active monitors
xrandr --output eDP-1 --primary --mode 1920x1080 --rotate normal --rate 60 --pos 0x0

# Set wallpaper
feh --bg-fill Downloads/pexels-ian-beckley-2440024.jpg

# Execute polybar launch script
~/.config/polybar/launch.sh
