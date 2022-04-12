#!/bin/sh

# Check monitors
INTERNAL=$(xrandr --query | grep "eDP" | grep "connected")
EXTERNAL=$(xrandr --query | grep "HDMI" | grep "connected")

# Determine which monitor script to execute
if type "xrandr"; then
	if [[ "$EXTERNAL"=="HDMI-0 connected" ]]; then
		/usr/bin/externalmonitors.sh &
	elif [[ "$INTERNAL"=="eDP-1 connected" ]]; then
		/usr/bin/fixmonitors.sh &
	fi
fi
