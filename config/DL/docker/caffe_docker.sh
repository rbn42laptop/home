#sudo su
#docker daemon  

sudo systemctl start docker
sudo gpasswd -a $USER docker
newgrp docker

cd ~/git
git clone https://github.com/BVLC/caffe.git
cd ~/git/caffe/docker
docker build -t caffe:cpu standalone/cpu
"""
问题:这个docker安装了ubuntu环境,包括大量相关包.
在这台电脑上,这个安装方式似乎很容易出错.

这个办法似乎成功率很低,nvidia-docker的办法似乎依赖更小一些,更容易实现.
主要是其中好像不会涉及到编译.
"""


