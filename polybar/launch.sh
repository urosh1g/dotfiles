#!/usr/bin/env bash

## Add this to your wm startup file.

# Terminate already running bar instances
killall polybar

#transparency
source ~/.cache/wal/colors.sh
export color0_alpha="#aa${color0/'#'}"

# Wait until the processes have been shut down
# while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

sleep 2
# Launch bar1 and bar2
polybar -l=info -r -c ~/.config/polybar/config.ini main 2>~/.config/polybar/mainlog &
polybar -l=info -r -c ~/.config/polybar/config.ini down 2>~/.config/polybar/downlog &
