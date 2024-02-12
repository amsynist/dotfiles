#!/bin/bash

volume_slider=(
	script="$PLUGIN_DIR/volume.sh"
	updates=on
	label.drawing=off
	icon.drawing=off
	slider.highlight_color=$COLOR_SEVEN
	slider.background.height=5
	slider.background.corner_radius=3
	slider.background.color=$COLOR_FIVE
	slider.knob=􀀁
	slider.knob.drawing=on
)

volume_icon=(
	click_script="$PLUGIN_DIR/volume_click.sh"
	padding_left=2
	padding_right=2
	#   icon=$VOLUME_100
	icon.width=0
	icon.align=left
	icon.padding_left=20
	icon.padding_right=50
	icon.color=$COLOR_SEVEN
	icon.font="$FONT:Regular:19.0"
	label.width=25
	label.align=left
	label.font="$FONT:Regular:14.0"
	background.color=0x000000000
	background.border_width=0
)
sketchy_topbar --add item volume_icon left \
	--set volume_icon "${volume_icon[@]}"

sketchy_topbar --add slider volume left \
	--set volume "${volume_slider[@]}" \
	--subscribe volume volume_change \
	mouse.clicked
