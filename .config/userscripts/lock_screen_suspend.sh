#!/bin/bash

maim -u /tmp/lock-screen.png
convert /tmp/lock-screen.png -blur 10x10 -fill black -colorize 50% /tmp/lock-screen.png
i3lock -f -i /tmp/lock-screen.png
rm /tmp/lock-screen.png
systemctl suspend
