#!/bin/bash

MUTE_ICON="🔇"
HIGH_VOL_ICON="🔊"
MED_VOL_ICON="🔉"
LOW_VOL_ICON="🔈"

VOL=$(amixer | grep -i "^ *front" | grep -oi "[0-9]*%" | head -1)
IS_MUTED=$(amixer | grep -i "^ *front" | cut -f 8 -d " " | head -1)

OUT=""
if [[ $IS_MUTED == "[off]" ]]; then
	OUT="$MUTE_ICON"
	VOL="MUTED"
else
	if [[ ${VOL::-1} -gt 60 ]]; then
		OUT="$HIGH_VOL_ICON"
	elif [[ ${VOL::-1} -gt 30 ]]; then
		OUT="$MED_VOL_ICON"
	else
		OUT="$LOW_VOL_ICON"
	fi
fi

echo "$OUT $VOL"
