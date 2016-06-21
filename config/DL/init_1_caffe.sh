cd ~/git
rm caffe -fr
git clone https://github.com/BVLC/caffe.git
cd caffe 
sed 's/BLAS := atlas/BLAS := open/' Makefile.config.example > Makefile.config
make all -j8
make pycaffe -j8
#make test
#make runtest
