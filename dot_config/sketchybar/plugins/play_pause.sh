osascript -e 'tell application "Spotify"
    if player state is playing then
        pause
    else
        play
    end if
end tell'
