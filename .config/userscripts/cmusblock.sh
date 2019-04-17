#!/bin/bash

is_playing=$(cmus-remote -Q | head -1 | cut -d ' ' -f 2)

if [[ $? != 0 ]]; then
	exit 0
fi

case $is_playing in
	"paused" | "stopped")
		output="⏸️ "
    		;;
	"playing")
    		output="▶️ "
		;&
    	*)
		artist=$(cmus-remote -C "format_print %a")
		s_name=$(cmus-remote -C "format_print %t")
		s_numb=$(cmus-remote -C "format_print %n")
		echo "$output $artist - $s_numb $s_name"
		;;
esac
