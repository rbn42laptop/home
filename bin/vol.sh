#!/bin/bash 
amixer -D pulse set Master 1% unmute
amixer -D pulse set Master $1% unmute
