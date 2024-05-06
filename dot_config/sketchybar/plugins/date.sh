#!/bin/sh

day="$(date '+%d')"
if [[ ${day:0:1} == "0" ]]; then day="${day:1}"; fi

sketchybar --set "$NAME" label="$(date "+%a %b") $day"
