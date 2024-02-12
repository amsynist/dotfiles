PLAYING=$(cd ~/.config/sketchy_topbar/spotify && ./song.sh)
# ARTIST=$(cd ~/.config/sketchybar/spotify && ./artist.sh)
# BOTH=$(echo $PLAYING && echo "‎ " && echo "| |" && echo "‎ " && echo $ARTIST)
# FINAL=$(echo $BOTH | sed 's/\(.\{22\}\).*/\1.../')
FINAL=$(echo $PLAYING | sed 's/\(.\{20\}\).*/\1.../')

sketchy_topbar --set $NAME icon="󰎇 " label=" $FINAL"