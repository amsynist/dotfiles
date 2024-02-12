#!/usr/bin/env sh

a=$(df -h "/" | awk 'NR==2{print $4}' | cut -c 1-4)
FINAL=$(printf '%s\n' "${a%?} ${a#"${a%?}"}")
sketchy_bottombar --set $NAME icon="" label="$FINAL"B