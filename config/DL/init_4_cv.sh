
sudo apt-get -y install libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libtiff4-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip

sudo mkdir /opt/cmake
cd /opt/cmake
sudo wget http://www.cmake.org/files/v3.2/cmake-3.2.2-Linux-x86_64.sh
sudo sh cmake-3.2.2-Linux-x86_64.sh --prefix=/opt/cmake
sudo chown ubuntu /mnt/
mkdir /mnt/opencv
cd /mnt/opencv

wget https://github.com/Itseez/opencv/archive/3.0.0.zip
git clone https://github.com/Itseez/opencv_contrib.git
unzip 3.0.0.zip
mkdir opencv-3.0.0/build
cd opencv-3.0.0/build
export PYTHON_INCLUDE_DIRS="/usr/include/python2.7"
cmake   -D BUILD_NEW_PYTHON_SUPPORT=ON   -D WITH_CUDA=OFF  -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules   ..
make -j8
sudo make install
sudo /bin/bash -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
