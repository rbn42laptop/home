#!/bin/bash

cd ~/git/qmlterm

#fetch dependencies
git submodule update --init

mkdir build
cd build

#build dependencies
qmake ../qmltermwidget
make
qmake ../QMLProcess
make

#build
qmake ..
make

