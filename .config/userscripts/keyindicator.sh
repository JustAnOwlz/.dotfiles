#!/bin/bash

if [[ $BLOCK_INSTANCE == "CAPS" && $(xset -q | grep Caps | awk '{print $4}') == "on" ]]; then
	echo "CAPS"
elif [[ $BLOCK_INSTANCE == "NUM" && $(xset -q | grep Caps | awk '{print $8}') == "on" ]]; then
	echo "NUM" 
fi
