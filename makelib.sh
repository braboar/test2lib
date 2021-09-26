#!/bin/bash

cd build-lib

find . -mindepth 1 -delete

cmake -DCMAKE_INSTALL_PREFIX=../bin-lib \
    ../src-lib

cmake --build . --target install

echo "[exited]"
