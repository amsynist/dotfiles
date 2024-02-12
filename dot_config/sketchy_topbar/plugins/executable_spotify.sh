status () {
  if  osascript -e 'tell application "Spotify"
    set playerState to player state as string
end tell
playerState
' | grep -q 'playing'; then
    echo "playing"
  else
    echo "paused"
  fi
}

BACK_SCRIPT="cd ~/.config/sketchy_topbar/spotify && ./back.sh"
PAUSE_PLAY_SCRIPT="cd ~/.config/sketchy_topbar/spotify/ && ./playpause.sh && source '$PLUGIN_DIR/spotify.sh'"
FORWARD_SCRIPT="cd ~/.config/sketchy_topbar/spotify && ./forward.sh"

if [ $(status) = "playing" ]; then
  sketchy_topbar --set pause icon=''
else
    sketchy_topbar --set pause icon=''
fi