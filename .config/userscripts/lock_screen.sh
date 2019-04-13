#!/bin/bash

maim -u /tmp/lock-screen.png
convert /tmp/lock-screen.png -blur 5x5 -fill black -colorize 50% /tmp/lock-screen.png
i3lock -i /tmp/lock-screen.png
rm /tmp/lock-screen.png
