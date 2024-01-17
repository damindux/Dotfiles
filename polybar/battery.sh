#!/bin/bash

battery_info=$(acpi -b)
battery_percent=$(echo "$battery_info" | grep -oP '\d+%' | tr -d '%')
battery_status=$(echo "$battery_info" | awk '{print $3}')

if [[ $battery_status == "Discharging," ]]; then
    echo "$battery_percent% "
elif [[ $battery_status == "Charging," || $battery_status == "Full," ]]; then
    echo "$battery_percent% "
else
    echo "N/A"
fi
