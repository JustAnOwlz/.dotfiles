#!/bin/bash

batt_level=$(cat /sys/class/power_supply/BAT1/capacity)
state=$(cat /sys/class/power_supply/BAT1/status)

if [[ $state == "Discharging" ]]; then
	echo "🔋 $batt_level% $(acpi | awk '{print $5}' | cut -c1-5)"
elif [[ $state == "Charging" ]]; then
	echo "⚡️ $batt_level%"
else
	echo "💯%"
fi

