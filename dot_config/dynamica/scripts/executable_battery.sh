#!/bin/bash

BATT_PERCENT=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
# CHARGING=$(pmset -g batt | grep "AC Power")
if [[ $CHARGING != "" ]]; then
	$LEFT_BAR -m --set battery \
		icon="" \
		label="${BATT_PERCENT}"
	exit 0
fi
case ${BATT_PERCENT} in
100)
	ICON=""
	COLOR="$GREEN_COLOR"
	BATT_PERCENT="⚡"
	;;
9[0-9])
	ICON=""
	COLOR="$GREEN_COLOR"
	;;
8[0-9])
	ICON=""
	COLOR="$GREEN_COLOR"
	;;
7[0-9])
	ICON=""
	COLOR="$GREEN_COLOR"

	;;
6[0-9])
	ICON=""
	COLOR="$GREEN_COLOR"
	;;
5[0-9])
	ICON=""
	COLOR="$DULL_COLOR"
	;;
4[0-9])
	ICON=""
	COLOR="$DULL_COLOR"
	;;
3[0-9])
	ICON=""
	COLOR="$RED_COLOR"
	;;
2[0-9])
	ICON=""
	COLOR="$RED_COLOR"
	;;
1[0-9])
	ICON=""
	COLOR="$RED_COLOR"
	;;
*)
	ICON=""
	COLOR="$GREEN_COLOR"
	;;
esac
$LEFT_BAR -m --set battery \
	icon="$ICON" \
	label="${BATT_PERCENT}" \
	label.color="$COLOR"
