#!/bin/bash

#git clean -fd


declare -a CMAKE_PLATFORM_FLAGS
#CMAKE_PLATFORM_FLAGS+=(-DCMAKE_TOOLCHAIN_FILE="/home/user/code/LibRaw/cross-linux.cmake")

CMAKE_BUILD_TYPE=Debug


# Run at least two times to properly detect compilers:
    #--trace-expand --trace-source=cross-linux.cmake \
#for i in $(seq 1 2);
#do
    cmake \
    ${CMAKE_ARGS} \
    -S /home/user/code/LibRaw \
    -B /home/user/code/LibRaw/build \
    -D CMAKE_INSTALL_PREFIX=/home/user/miniconda3 \
    -D CMAKE_BUILD_TYPE="${CMAKE_BUILD_TYPE}" \
    -D CMAKE_CXX_FLAGS_DEBUG="-ggdb" \
    -D CMAKE_C_FLAGS_DEBUG="-ggdb" \
    ${CMAKE_PLATFORM_FLAGS[@]}
    #> /home/user/code/LibRaw/trace.txt  2>&1
#done
#make #VERBOSE=1
#(cd ./build ; make VERBOSE=1)
#(cd ./build ; sudo make install)

