#!/usr/bin/env sh

LABEL=$(networksetup -getairportnetwork en0 | cut -c 24-)

sketchybar --set $NAME label=$LABEL
