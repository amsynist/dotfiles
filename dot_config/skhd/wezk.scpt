set appName to "WezTerm"
if application appName is running then
    do shell script "WEZTERM_UNIX_SOCKET=~/.local/share/wezterm/default-org.wezfurlong.wezterm wezterm cli spawn --new-window -- sunbeam"
else
    tell application "WezTerm" to activate
end if

