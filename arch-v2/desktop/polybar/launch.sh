#! /bin/sh

sleep 0.5

# Determine CPU hwmon path
for i in /sys/class/hwmon/hwmon*/temp*_input; do 
    if [ "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "coretemp: Package id 0" ]; then
        export HWMON_PATH="$i"
    fi
done

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
