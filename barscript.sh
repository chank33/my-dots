#!/bin/bash

# Check if Waybar is running
if pgrep -x "waybar" > /dev/null
then
    # If Waybar is running, kill it
    pkill waybar
    notify-send "Bars off"
else
    # If Waybar is not running, start it
    waybar &
    notify-send  "Bars on"
fi

hyprpanel toggleWindow bar-0
hyprpanel toggleWindow bar-1
