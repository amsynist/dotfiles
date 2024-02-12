sketchy_topbar --add item swap left \
	--set swap script="$PLUGIN_DIR/swap.sh" \
	update_freq=60 \
	padding_left=2 \
	padding_right=8 \
	background.border_width=0 \
	background.height=24 \
	icon=$ICON_SWAP \
	icon.color=$COLOR_CYAN \
	label.color=$COLOR_CYAN \
	\
	--add item ram left \
	--set ram script="$PLUGIN_DIR/ram.sh" \
	update_freq=60 \
	padding_left=2 \
	padding_right=2 \
	background.border_width=0 \
	background.height=24 \
	icon=$ICON_RAM \
	icon.color=$COLOR_GREEN \
	label.color=$COLOR_GREEN \  \
	--add item cpu left \
	--set cpu script="$PLUGIN_DIR/cpu.sh" \
	update_freq=60 \
	padding_left=8 \
	padding_right=2 \
	background.border_width=0 \
	background.height=24 \
	icon=$ICON_CPU \
	icon.color=$COLOR_RED \
	label.color=$COLOR_RED

sketchy_topbar --add bracket activity swap ram cpu \
	--set activity background.color=$COLOR_BACKGROUND \
	background.border_color=$COLOR_CYAN
