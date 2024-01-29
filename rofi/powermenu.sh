#!/bin/sh

options="Shutdown\nRestart\nSuspend"

choice=$(echo "$options" | rofi -dmenu -markup-rows -i -p "Power Menu:")

case $choice in
    "Shutdown")
        systemctl poweroff
        ;;
    "Restart")
        systemctl reboot
        ;;
    "Suspend")
        systemctl suspend
        ;;
esac

