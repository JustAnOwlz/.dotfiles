#!/bin/bash

case $1 in
	pp)
		if ! pgrep -x cmus ; then
			termite --title="music_player" -e cmus
		else
			cmus-remote --pause # toggles pause
		fi
	;;
	next)
		cmus-remote --next
	;;
	prec)
		cmus-remote --prev
	;;
	*)
		echo "don't know"
	;;
esac


