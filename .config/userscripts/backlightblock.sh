#!/bin/bash

SMALL_BRIGHT="🔅"
BIG_BRIGHT="🔆"

backlight=$(xbacklight)
rounded=$(printf "%s\n" $backlight | awk '{
  n = sprintf( "%1.0e\n", $1)
  printf "%d\n", n
}')


OUT=""
if [[ rounded -gt 20 ]]; then
	OUT="$BIG_BRIGHT"
else
	OUT="$SMALL_BRIGHT"
fi

echo "$OUT $rounded"
