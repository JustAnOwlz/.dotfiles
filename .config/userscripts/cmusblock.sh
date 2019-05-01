#!/bin/bash

is_playing=$(cmus-remote -Q | head -1 | cut -d ' ' -f 2)

if [[ $? != 0 ]]; then
	exit 0
fi

if [[ $is_playing == "paused" || $is_playing == "stopped" ]]; then
	output="⏸️ "
elif [[ $is_playing == "playing" ]]; then
	output="▶️ "
else
	exit 0
fi

artist=$(cmus-remote -C "format_print %a")
s_name=$(cmus-remote -C "format_print %t")
s_numb=$(cmus-remote -C "format_print %n")

if [ ${#s_name} -gt 25 ];then s_name="${s_name:0:25}..";fi
if [ ${#artist} -gt 15 ];then artist="${artist:0:15}..";fi

echo "$output $artist - $s_numb $s_name"

	
