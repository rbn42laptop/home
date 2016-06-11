@@
@@export WID=$(xdotool getactivewindow)
@@#export WID=""
@@#i3-msg [id="$(xdotool getactivewindow)"] border pixel 0;
@@export MSG=$(echo [id="$WID"] border none\; focus $1\; )
@@i3-msg $MSG
#pixel 20;
if ["a"="a"];then
    echo 1
fi
