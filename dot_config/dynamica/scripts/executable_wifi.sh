#!/bin/bash

# -----------------------------------
# -------- Icons
# -----------------------------------
WIFI_CONNECTED=􀙇
WIFI_DISCONNECTED=􀙈

# -----------------------------------
# -------- Colors
# -----------------------------------
ACTIVE=0xFFA6DA95
UNACTIVE=0xFF939AB7

# -----------------------------------
# -------- Scripts
# -----------------------------------
function _wifi_is_on() { networksetup -getairportpower en0 | grep "On" >>/dev/null; }

function _get_wifi_speed() {
	# RETURN: Wifi is offline.
	(! _wifi_is_on) && echo 'Offline' && return 1

	speed=$(ifstat -i en0 1 1 | awk 'NR==3 {print $1}')
	if (($(echo "$speed > 1024*1024" | bc -l))); then
		speed=$(echo "scale=0; $speed / (1024*1024)" | bc)
		unit='GB/s'
	elif (($(echo "$speed > 1024" | bc -l))); then
		speed=$(echo "scale=0; $speed / 1024" | bc)
		unit='MB/s'
	else
		speed=$(echo $speed | awk '{printf "%d", $1}')
		unit='KB/s'
	fi

	echo "$speed $unit"
}

# function _get_wifi_name() {
#   WIFI_NAME="$(/System/Library/PrivateFrameworks/Apple80211.framework/Resources/airport -I | awk -F ' SSID: '  '/ SSID: / {print $2}')"
#   echo "$WIFI_NAME"
# }

# function _get_label_type() {
#   LABEL="$(sketchybar --query "$NAME" | jq -r .label.value)"
#   (echo "$LABEL" | grep 'B/s' > /dev/null) && echo 'speed' || echo 'name'
# }

# function wifi_toggle_label() {
#   if _wifi_is_on; then
#     if [[ $(_get_label_type) == "speed" ]]; then
#       LABEL="$(_get_wifi_name)"
#       sketchybar --set "$NAME" label="$LABEL"
#     else
#       LABEL="? KB/s"
#       sketchybar --set "$NAME" label="$LABEL"
#     fi
#   fi
# }

function update_wifi_speed() {
	wifi_speed="$(_get_wifi_speed)"
	sketchybar --set "$NAME" label="$wifi_speed"
}

function update_wifi_status() {
	update_frequency=-1
	if _wifi_is_on; then
		update_frequency=2
		icon="$WIFI_CONNECTED" color="$ACTIVE" label='??? ?B/s'
	else
		update_frequency=0
		icon="$WIFI_DISCONNECTED" color="$UNACTIVE" label='Offline'
	fi

	sketchybar --set "$NAME" update_freq="$update_frequency" icon="$icon" icon.color="$color" label="$label" label.color="$color"
}

# -----------------------------------
# -------- Trigger
# -----------------------------------
case "$SENDER" in
'forced') ;;
'routine')
	update_wifi_speed
	;;
'wifi_change')
	update_wifi_status
	;;
*)
	echo "Invalid sender: $($SENDER)" in $0
	;;
esac
