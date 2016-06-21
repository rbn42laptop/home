
"""
Using CUDA with an older GCC

Since CUDA does often not support the latest GCC version, you might need to install an older GCC to compile CUDA programs.

    For CUDA 7.5, install the gcc49AUR package.
    For CUDA 8.0, install the gcc5AUR package.

For CUDA 7.5/GCC 4.9, create the following symlinks, so CUDA will use the old compiler (for CUDA 8.0/GCC 5, replace 4.9 with 5):
"""

ln -s /usr/bin/gcc-4.9 /opt/cuda/bin/gcc
ln -s /usr/bin/g++-4.9 /opt/cuda/bin/g++
