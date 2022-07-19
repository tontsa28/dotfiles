#!/bin/sh

# Configure active monitors
xrandr --output HDMI-0 --primary --mode 1920x1080 --rotate normal --rate 144 --pos 0x0
xrandr --output eDP-1-1 --mode 1920x1080 --rotate normal --rate 60 --pos 0x1080

# Set wallpaper
feh --bg-fill Downloads/pexels-ian-beckley-2440024.jpg

# Execute polybar launch script
~/.config/polybar/launch.sh
