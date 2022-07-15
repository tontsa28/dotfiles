#! /bin/sh

sleep 0.5

PRIMARY=$(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1)
OTHERS=$(xrandr --query | grep " connected" | grep -v "primary" | cut -d" " -f1)

# Terminate already running polybar instances
killall -q polybar

# Wait until the processes have been terminated
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Start polybar on multiple monitors
if type "xrandr"; then
  for m in $PRIMARY; do
    MONITOR=$m polybar --reload top &
  done
  for m in $OTHERS; do
    MONITOR=$m polybar --reload top &
  done
else
  polybar --reload top &
fi
