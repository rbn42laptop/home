rm ~/.fonts -r
mkdir ~/.local/share/fonts/
cd ~/.local/share/fonts/

#这里面是Lucida Gr
mkdir Mac_Ubuntu
cd Mac_Ubuntu
git init 
git config core.sparseCheckout true
git remote add -f origin https://github.com/ChinaLuo/Mac_Ubuntu.git
#git config core.sparseCheckout false
echo "fonts/" >> .git/info/sparse-checkout
git pull origin master
cd ..

#这个monacobsemi带宽体，很不错，和powerline配合也很好.
git clone https://github.com/vjpr/monaco-bold.git
wget http://nchc.dl.osdn.jp/setofont/61995/setofont_v_6_20.zip
#日文字体？
unzip ./setofont_v_6_20.zip
#这个Droid Sans Mono for Powerline是配合上面的monacobsemi用的
git clone https://github.com/powerline/fonts.git
#wqy microhei用包管理安装
wget http://www.evertype.com/emono/evermono.zip
unzip ./evermono.zip
#这个可以补全一些特殊utf8符号，试了好多，好像就这个是等宽效果的,在qml下

#git clone https://github.com/todylu/monaco.ttf.git

#wget http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf
#wget https://gist.githubusercontent.com/epegzz/1634235/raw/d1e0dd8b745a7868444ecb0d1d6cdb593249f9d5/Monaco_Linux-Powerline.ttf
#wget https://uigroupcode.googlecode.com/files/YaHei.Consolas.1.12.zip
#unzip YaHei.Consolas.1.12.zip


#wget http://album.shmps.kh.edu.tw/~school/data/files/201402171232540.rar
#unrar x ./201402171232540.rar

#wget http://ftp.vector.co.jp/50/38/3181/hakidame.zip
#unzip ./hakidame.zip

#wget http://ftp.vector.co.jp/51/30/3249/onryou.zip
#unzip ./onryou.zip


fc-cache
