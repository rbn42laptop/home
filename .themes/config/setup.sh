rm ./unity/*.png
rm ./metacity-1/*.png
cp ../Ambiance-Flat-Teal/unity/*   ./unity/
cp ../Ambiance-Flat-Teal/close*   ./metacity-1/

cp ../MBuntu-Y-Unity/unity/close*   ./unity/
cp ../MBuntu-Y-Unity/unity/maximize*   ./unity/
cp ../MBuntu-Y-Unity/unity/unmaximize*   ./unity/
cp ../MBuntu-Y-Unity/unity/minimize*   ./unity/


cp ../MBuntu-Y-Unity/metacity-1/close*   ./metacity-1/
cp ../MBuntu-Y-Unity/metacity-1/maximize*   ./metacity-1/
cp ../MBuntu-Y-Unity/metacity-1/unmaximize*   ./metacity-1/
cp ../MBuntu-Y-Unity/metacity-1/minimize*   ./metacity-1/

cp ../Ambiance-Flat-Teal/gtk-3.0/assets/*   ./gtk-3.0/assets/
cp ../Ambiance-Flat-Teal/gtk-2.0/*   ./gtk-2.0/ -r


cp ../Ambiance-Flat-Teal/gtk-3.0/apps/*  ./gtk-3.0/apps/
mv ./gtk-3.0/apps/gnome-panel.css  ./gtk-3.0/apps/gnome-panel.css.bck

sed -i  's/f07746/1CB39F/' ./gtk-2.0/gtkrc
sed -i  's/DD4814/2EBDA8/' ./gtk-2.0/gtkrc
sed -i  's/f07746/1CB39F/' ./gtk-3.0/gtk-main.css
sed -i  's/DD4814/2EBDA8/' ./gtk-3.0/gtk-main.css
sed -i  's/f2f1f0/F2F2F2/' ./gtk-3.0/gtk-main.css
sed -i  's/3c3b37/454545/' ./gtk-3.0/gtk-main.css
sed -i  's/dfdbd2/DFDFDF/' ./gtk-3.0/gtk-main.css
sed -i  's/f2f1ef/F2F2F2/' ./gtk-3.0/gtk-widgets.css
sed -i  's/f2f1ef/F2F2F2/' ./gtk-3.0/apps/gnome-applications.css
sed -i  's/f07746/1CB39F/' ./gtk-3.0/settings.ini
sed -i  's/DD4814/2EBDA8/' ./gtk-3.0/settings.ini
sed -i  's/f2f1f0/F2F2F2/' ./gtk-3.0/settings.ini



vim ./gtk-3.0/gtk-widgets.css
.button:backdrop {
    background-image: none;
    background-color: @bg_color;

row:selected {
    background-image: @selected_bg_color;
    border-width: 0px 0 0 0;

column-header .button {
    background-image:@bg_color;

.header-bar {
    border-width: 0px 0 0px 0;
    box-shadow: none;
    background-color: @dark_bg_color;
    border-bottom-color: @dark_bg_color; 

vim ./gtk-3.0/apps/unity.css
UnityPanelWidget,
.unity-panel {
    background-color:@dark_bg_color;
    border-width: 0px 0 0 0;
    background-image: none;
UnityDecoration.top {
    background-color:@dark_bg_color;
    border-width: 0px 0 0 0;
    background-image: none;
