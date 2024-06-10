#!/bin/bash

# Properly assign the output to hotkey_window_id. Use command substitution $() and quotes.
hotkey_window_id=$(yabai -m query --windows | jq -r 'map(select(.app == "Alacritty" and ."is-floating" == true)) | .[0].id')

# Check if hotkey_window_id is null or an empty string.
if [ "$hotkey_window_id" == "null" ] || [ -z "$hotkey_window_id" ]; then
	open -na Alacritty
	sleep 0.08
	yabai -m window --toggle float --grid 4:4:1:1:2:2
else
	# Check if the window is not hidden
	is_hidden=$(yabai -m query --windows --window "$hotkey_window_id" | jq -r '."is-hidden"')
	has_focus=$(yabai -m query --windows --window "$hotkey_window_id" | jq -r '."has-focus"')
	if [ "$is_hidden" == false ] && [ "$has_focus" == true ]; then
		skhd -k "cmd -h"
	else
		current_space_id=$(yabai -m query --spaces --space | jq -r '.index')
		# Show and focus the window
		yabai -m window "$hotkey_window_id" --space $current_space_id
		yabai -m window "$hotkey_window_id" --focus
	fi
fi
