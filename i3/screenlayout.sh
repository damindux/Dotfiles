#!/bin/sh
target_monitor="HDMI-1"

if xrandr | grep -q "$target_monitor connected"; then
    xrandr --output eDP-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal 
fi

