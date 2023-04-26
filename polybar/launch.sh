#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar for both screens
polybar main 2>&1 | tee -a /tmp/polybar.log & disown

# You can comment out this one if you don't have a double monitor, or add other if you have more than two
polybar secondary 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Polybar launched..."

