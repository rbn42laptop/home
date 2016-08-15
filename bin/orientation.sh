#!/bin/bash
source ~/config/rc/displayrc

if [ -f "$DISPLAY_ROTATION_MARK""right" ]; then
    echo rotate
    xrandr --output "$DISPLAY_OUTPUT" --rotate  right
else
    echo normal
fi
