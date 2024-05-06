#!/bin/bash

sketchybar --animate sin 8 --set title y_offset=50

sleep 0.15

WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.title')

if [[ $WINDOW_TITLE = "" ]]; then
  WINDOW_TITLE=$(/opt/homebrew/bin/yabai -m query --windows --window | jq -r '.app')
fi

sketchybar --set title label="$WINDOW_TITLE"

if [[ $WINDOW_TITLE = "" ]]; then
  exit 0
else
  sketchybar --animate sin 8 --set title y_offset=-7
fi
