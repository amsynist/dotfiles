#!/bin/bash

front_app=(
	label.font="Operator Mono Ssm Lig:Medium Italic:12.0"

	icon.background.drawing=on
	display=active
	label.color=$WHITE
	shadow=on

	background.border_color==$COLOR_FIVE
	background.border_color==$COLOR_SEVEN
	icon.padding_left=19
	background.color=$X_BROWN_DULL_TWO

	label.padding_right=10
	icon.drawing=on
	icon.background.image.scale=0.8
	icon.background.image.padding_left=10
	icon.background.image.padding_right=5

	script="$PLUGIN_DIR/front_app.sh"
	# click_script="open -a 'Mission Control'"
	click_script="borders width=5 active_color=0xffbf616a && sleep 1 && borders active_color=$COLOR_ACCENT_BRIGHT inactive_color=$COLOR_ACCENT_DULL width=5"
)

sketchy_bottombar --add item front_app_two center \
	--set front_app_two "${front_app[@]}" \
	--subscribe front_app_two front_app_switched
