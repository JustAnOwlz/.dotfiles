#!/bin/sh

while test $# -ge 2
do
	eval _$1='$2'
	shift
	shift
done
echo "[$_status] $_artist - $_title"
