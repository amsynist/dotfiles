#!/bin/sh

OFFSETS=(28 56 84 112 139)

if [ "$SELECTED" = "true" ]; then
    SPACE_NUMBER=$(expr ${NAME:6:1} - 1)
    sketchybar --animate sin 15 --set "$NAME" icon.color=0xff282828
else
    sketchybar --animate sin 15 --set "$NAME" icon.color=0xff928374
fi

OFFSET=${OFFSETS[$SPACE_NUMBER]}

sketchybar --animate sin 15 --set space_indicator padding_left=$OFFSET
