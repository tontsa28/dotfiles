#!/bin/sh

xrdb -merge ~/.Xresources
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
exec bspwm
