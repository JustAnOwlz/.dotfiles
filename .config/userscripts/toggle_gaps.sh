#!/bin/bash
INNER=10
OUTER=0

workspace=$(i3-msg -t get_workspaces | jq -r '.[] | if .["focused"] then .["name"] else empty end')
inner_gaps=$(i3-msg -t get_tree | jq -r 'recurse(.nodes[]) | if .type == "workspace" and .name == "'"$workspace"'" then .gaps.inner else empty end')

if [[ "$inner_gaps" != 0 ]]; then
    i3-msg "gaps inner current set $INNER; gaps outer current set $OUTER"
else
    i3-msg "gaps inner current set 0; gaps outer current set 0"
fi

