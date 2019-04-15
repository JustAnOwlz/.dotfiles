#!/bin/sh

if ! pgrep -x cmus ; then
  termite --class="music_player" -e cmus
  cmus-remote -u
else
  cmus-remote -u
fi
