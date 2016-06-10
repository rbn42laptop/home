sudo apt-get install python-numpy python-scipy python-dev python-pip python-nose g++ libopenblas-dev git python-skimage python-pandas  -y
sudo apt-get install libopenblas-base libatlas3-base -y
#sudo update-alternatives --set libblas.so.3 /usr/lib/openblas-base/libblas.so.3
sudo apt-get install gcc gfortran python-dev libblas-dev liblapack-dev cython -y

sudo pip install pip -U
sudo pip install ipython -U

sudo pip uninstall theano
sudo pip uninstall pylearn2
sudo pip uninstall pycuda

cd ~/git
git clone --recursive http://git.tiker.net/trees/pycuda.git
cd pycuda
python configure.py --cuda-root=/usr/local/cuda
make -j8
python setup.py develop --user

cd ~/git
git clone git://github.com/Theano/Theano.git
cd Theano
python setup.py develop --user

cd ~/git
git clone git://github.com/lisa-lab/pylearn2.git
export PYTHONPATH="$PYTHONPATH:~/git/pylearn2"
cd pylearn2
python setup.py develop --user
#sudo python setup.py develop 
#python3 setup.py develop --user
#rm kaggle-galaxies -fr
#git clone git://github.com/benanne/kaggle-galaxies.git
cd ~
mkdir pybuild
cd pybuild
rm OpenBLAS/ -r
git clone https://github.com/xianyi/OpenBLAS.git
cd OpenBLAS/
make FC=gfortran
make install
