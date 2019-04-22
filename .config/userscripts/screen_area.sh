#!/bin/bash

maim -s --color=200,240,90,0.4 -l | convert - \
	\( +clone -background black -shadow 80x3+5+5 \) +swap -background none \
	-layers merge +repage \
	~/Screenshots/$(date '+%Y-%m-%d--%H%M%S').png | xclip -selection clipboard
