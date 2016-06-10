#!/bin/bash
#amixer -D pulse set Master 1% unmute
amixer -D pulse set Master 1%+ unmute
pamixer -u
pamixer -i 1
