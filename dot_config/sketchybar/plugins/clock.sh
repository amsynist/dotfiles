#!/bin/sh

hour="$(date '+%I')"
if [[ ${hour:0:1} == "0" ]]; then hour="${hour:1}"; fi

ampm=$(echo "$(date "+%p")" | tr '[:lower:]' '[:upper:]')

sketchybar --set "$NAME" label="$(date "+$hour:%M") $ampm"
