#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Launch bar
echo "---" | tee -a /tmp/polybar1.lo
polybar main >>/tmp/polybar1.log 2>&1 & disown

echo "Bars launched..."
