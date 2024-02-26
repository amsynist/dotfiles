#!/bin/bash

update_space() {
	SPACE_ID=$(echo "$INFO" | jq -r '."display-1"')

	case $SPACE_ID in
	1)
		ICON=󰅶
		ICON_PADDING_LEFT=7
		ICON_PADDING_RIGHT=7
		;;
	*)
		ICON=$SPACE_ID
		ICON_PADDING_LEFT=9
		ICON_PADDING_RIGHT=10
		;;
	esac

	$LEFT_BAR --set "$NAME" \
		icon="$ICON" \
		icon.padding_left=$ICON_PADDING_LEFT \
		icon.padding_right=$ICON_PADDING_RIGHT
}

case "$SENDER" in
"mouse.clicked")
	# Reload sketchybar
	left_bar --reload
	;;
*)
	update_space
	;;
esac
