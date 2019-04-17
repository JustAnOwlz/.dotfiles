#!/bin/bash

# propagate to the scrobler
cmusfm "$@"

# propagate it to i3blocks
pkill -SIGRTMIN+5 i3blocks
