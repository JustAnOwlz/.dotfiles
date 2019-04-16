#!/bin/bash

case $1 in
	pp)
		if ! pgrep -x cmus ; then
			termite --class="music_player" -e cmus
		else
			cmus-remote -u
		fi
	;;
	next)
		cmus-remote -n
	;;
	prec)
		cmus-remote -p
	;;
	*)
		echo "don't know"
	;;
esac


