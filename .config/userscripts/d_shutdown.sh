#!/bin/bash

echo -e "suspend\nreboot" | dmenu | xargs systemctl $1
