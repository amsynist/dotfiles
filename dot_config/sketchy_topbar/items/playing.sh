sketchy_topbar --add item line right \
	--set line icon="" \
	icon.color=0xff9fd06a \
	icon.font="Hack Nerd Font:Regular:14.8" \
	\
	--add item playing right \
	--set playing update_freq=5 \
	icon.color=0xff9fd06a \
	label.font="Operator Mono Ssm Lig:Medium Italic:11.0" \
	label.padding_right=5 \
	label.color=0xffD0871A \
	script="$PLUGIN_DIR/playing.sh" \
	label.y_offset=-1 \
	background.padding_right=3 \
	icon.font="Hack Nerd Font:Regular:14.8"

