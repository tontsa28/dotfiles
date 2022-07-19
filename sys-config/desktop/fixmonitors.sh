#!/bin/sh

# Set other outputs to off
xrandr --output DP-0 --off
xrandr --output DP-1 --off
xrandr --output DP-2 --off
xrandr --output DP-3 --off
xrandr --output DP-5 --off
xrandr --output HDMI-0 --off
xrandr --output DVI-D-1-0 --off
xrandr --output DP-1-0 --off

# Configure active monitors
xrandr --output HDMI-1-0 --mode 1920x1080 --rotate normal --rate 75 --pos 3000x420
xrandr --output DP-1-1 --mode 1920x1080 --rotate right --rate 60 --pos 0x0
xrandr --output DP-4 --primary --mode 1920x1080 --rotate normal --rate 144 --pos 1080x420

# Set wallpaper
feh --bg-fill Downloads/pexels-ian-beckley-2440024.jpg

# Execute polybar launch script
~/.config/polybar/launch.sh
