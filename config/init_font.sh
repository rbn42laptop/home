rm ~/.fonts -r
mkdir ~/.local/share/fonts/
cd ~/.local/share/fonts/
mkdir Mac_Ubuntu
cd Mac_Ubuntu
git init 
git config core.sparseCheckout true
git remote add -f origin https://github.com/ChinaLuo/Mac_Ubuntu.git
#git config core.sparseCheckout false
echo "fonts/" >> .git/info/sparse-checkout
git pull origin master
cd ..

git clone https://github.com/todylu/monaco.ttf.git

wget http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf
wget https://gist.githubusercontent.com/epegzz/1634235/raw/d1e0dd8b745a7868444ecb0d1d6cdb593249f9d5/Monaco_Linux-Powerline.ttf

wget https://uigroupcode.googlecode.com/files/YaHei.Consolas.1.12.zip
unzip YaHei.Consolas.1.12.zip

wget http://nchc.dl.osdn.jp/setofont/61995/setofont_v_6_20.zip
unzip ./setofont_v_6_20.zip

#wget http://album.shmps.kh.edu.tw/~school/data/files/201402171232540.rar
#unrar x ./201402171232540.rar

#wget http://ftp.vector.co.jp/50/38/3181/hakidame.zip
#unzip ./hakidame.zip

#wget http://ftp.vector.co.jp/51/30/3249/onryou.zip
#unzip ./onryou.zip

git clone https://github.com/powerline/fonts.git
fc-cache
