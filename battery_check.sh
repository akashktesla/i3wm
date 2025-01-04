#!/bin/bash

# Battery threshold
THRESHOLD=30

# Get the battery percentage
BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

# Check if battery is below the threshold and discharging
if [ "$BATTERY" -lt "$THRESHOLD" ] && [ "$STATUS" = "Discharging" ]; then
    notify-send -u critical "Low Battery" "Battery is at ${BATTERY}%. Plug in the charger!"
fi
