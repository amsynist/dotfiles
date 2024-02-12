#!/bin/bash

# app = (
# icon="X"
# 	icon.font="ZeroCode:Regular:20.0"
#   icon.padding_right=2
#   icon.y_offset=1
#   label.font="ZeroCode:Regular:12.0"
#   label.color=0xffdfe1ea
#   label.padding_right=4
#   background.height=33
#   background.padding_right=3
#   background.corner_radius=15
#   icon.padding_left=6
#   label.padding_right=6
# )
#
#
# sketchy_bottombar --add item teams center \
# 	--set teams "$[app[@]]" \
#
ICON_FONT="ZeroCode:Regular:21.0"

sketchy_bottombar --add item seperator.l2 center \
	--set seperator.l2 padding_left=5 \
	padding_right=10 \
	background.drawing=off \
	icon= icon.drawing=on \
	label.drawing=y_offset \
	icon.font="ZeroCode:Regular:20.0"

terminal=(
	icon=$ICON_TERM
	icon.font=$ICON_FONT
	padding_right=6
	click_script='open -a "WezTerm"'
	icon.padding_right=0
	icon.padding_left=10
	background.color=$COLOR_FIVE
	background.height=38

)

sketchy_bottombar --add item terminal center \
	--set terminal "${terminal[@]}"

teams=(
	icon=$ICON_TEAMS
	icon.font=$ICON_FONT
	click_script='open -a "Microsoft Teams (work or school)"'
	icon.padding_right=0
	padding_right=6
	icon.padding_left=10
	background.color=$COLOR_FIVE
	background.height=38

)

sketchy_bottombar --add item teams center \
	--set teams "${teams[@]}"

vscode=(
	icon=$ICON_VSCODE
	icon.font=$ICON_FONT
	click_script='open -a "Visual Studio Code 2"'
	padding_right=6
	icon.padding_right=0
	icon.padding_left=10
	background.color=$COLOR_FIVE
	background.height=38

)

sketchy_bottombar --add item vscode center \
	--set vscode "${vscode[@]}"

spotify=(
	icon=
	icon.font=$ICON_FONT
	click_script='open -a "Spotify"'
	icon.padding_right=-1
	icon.padding_left=11
	padding_right=6
	background.color=$COLOR_FIVE
	background.height=38

)

sketchy_bottombar --add item spotify center \
	--set spotify "${spotify[@]}"

finder=(
	icon=$ICON_FINDER
	icon.font=$ICON_FONT
	click_script='open -a "Finder"'
	padding_right=6
	icon.padding_right=-3
	icon.padding_left=10
	background.color=$COLOR_FIVE
	background.height=38

)

sketchy_bottombar --add item finder center \
	--set finder "${finder[@]}"

browser=(
	icon=$ICON_WEB
	icon.font=$ICON_FONT
	click_script='open -a "Orion"'
	icon.padding_right=0
	icon.padding_left=10
	padding_right=6
	background.color=$COLOR_FIVE
	background.height=38

)

sketchy_bottombar --add item browser center \
	--set browser "${browser[@]}"

settings=(
	icon=$ICON_COG
	icon.font=$ICON_FONT
	click_script='open -a "Settings"'
	icon.padding_right=-1
	icon.padding_left=10
	padding_right=6
	background.color=$COLOR_FIVE
	background.height=38

)

sketchy_bottombar --add item settings center \
	--set settings "${settings[@]}"

sketchy_bottombar --add item seperator.l3 center \
	--set seperator.l3 padding_left=2 \
	padding_right=10 \
	background.drawing=off \
	icon= \
	icon.drawing=on \
	label.drawing=y_offset \
	icon.font="ZeroCode:Regular:20.0"
