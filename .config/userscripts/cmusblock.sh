#!/bin/sh

if ! pgrep -x cmus ; then
  termite -e cmus
else
  cmus-remote -u
fi
