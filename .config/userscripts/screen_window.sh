#!/bin/bash

maim -i $(xdotool getactivewindow) | convert - \
	\( +clone -background black -shadow 80x3+5+5 \) +swap -background none \
	-layers merge +repage \
	~/Screenshots/$(date '+%Y-%m-%d--%H%M%S').png | xclip -selection clipboard
