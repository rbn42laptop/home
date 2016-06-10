#dconf read  /org/compiz/profiles/unity/plugins/core/hsize 
#dconf read  /org/compiz/profiles/unity/plugins/core/vsize 

dconf write /org/compiz/profiles/unity/plugins/core/hsize $1
dconf write /org/compiz/profiles/unity/plugins/core/vsize $2
dconf write /org/compiz/profiles/Default/plugins/core/hsize $1
dconf write /org/compiz/profiles/Default/plugins/core/vsize $2
bash ~/Pictures/compiz/bin/compiz.sh
