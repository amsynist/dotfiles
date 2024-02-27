#!/bin/bash

status() {
	if osascript -e 'tell application "Spotify"
    set playerState to player state as string
end tell
playerState
' | grep -q 'playing'; then
		echo "playing"
	else
		echo "paused"
	fi
}

if [ $(status) = "playing" ]; then

	PLAYING=$(osascript -e 'tell application "System Events"
        set processList to (name of every process)
end tell

if (processList contains "Spotify") is true then
        tell application "Spotify"
                set artistName to artist of current track
                set trackName to name of current track
                set symbol to "◻︎"
                set col to "red"

                if player state is playing then
                        set symbol to "▹"
                        set col to "green"
                end if

                return trackName
        end tell
      end if')

	FINAL="$(echo $PLAYING | sed 's/\(.\{20\}\).*/\1.../')"

	$LEFT_BAR --set playing icon="󰎇 " label="$FINAL" label.color="0xe0ffffff"
else
	$LEFT_BAR --set playing icon.color="$DULL_LABEL_COLOR"
	$LEFT_BAR --set "playing" label="Focus !"

fi
