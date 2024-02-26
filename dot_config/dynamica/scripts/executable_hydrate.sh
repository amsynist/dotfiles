#!/bin/bash

blink() {
	$LEFT_BAR --set music icon= icon.color="0xff00ffff" && sleep 1
	$LEFT_BAR --set "playing" label="Hydrate !"
}

reset() {
	$LEFT_BAR --set music icon= icon.color="$DULL_LABEL_COLOR" && sleep 1
}

blink
reset
blink
reset
blink
reset
blink
reset
blink
reset
blink
reset
blink
reset
