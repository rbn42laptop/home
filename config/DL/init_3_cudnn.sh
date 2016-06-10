cp cudnn* ~/
cd ~/
tar xvf cudnn*
cd /usr/local/cuda/include
sudo cp ~/cudnn-6.5-linux-x64-v2/*.h  ./
cd /usr/local/cuda/lib64
sudo cp ~/cudnn-6.5-linux-x64-v2/*.so*  ./
