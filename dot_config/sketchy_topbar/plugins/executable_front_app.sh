#!/bin/bash

if [ "$SENDER" = "front_app_switched" ]; then
	sketchy_topbar --set $NAME label="$INFO" icon.background.image="app.$INFO"
fi
