#!/bin/sh

# The $NAME variable is passed from sketchy_topbar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/sketchy_topbar/config/events#events-and-scripting

sketchy_topbar --set $NAME label="$(date '+%a %b %d')"
