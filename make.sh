#!/bin/bash

HOME=$(pwd)


cd $HOME/build-lib

echo "Building libs"

find . -mindepth 1 -delete

cmake \
    -DCMAKE_INSTALL_PREFIX=../bin-lib \
    ../src-lib

cmake --build . --target install


echo "Building driver"

cd $HOME/build-driver

find . -mindepth 1 -delete
cmake \
    -DCMAKE_INSTALL_PREFIX=../bin \
    ../src-driver

cmake --build . --target install

cd $HOME

echo "[exited]"
