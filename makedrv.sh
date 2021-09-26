#!/bin/bash

CACHENAME="CMakeCache.txt"

cd build-driver

if [ -e $CACHENAME ]
then
    rm $CACHENAME
    echo "--- " $CACHENAME "removed"
fi

cmake \
    -DCMAKE_INSTALL_PREFIX=../bin \
    ../src-driver

cmake --build . --target install

cd ../

echo "[exited]"
