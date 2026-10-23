#!/bin/bash

cmake ${CMAKE_ARGS} \
    -DPython3_EXECUTABLE=${PYTHON} \
    -G Ninja \
    -S ostap \
    -B build-dir

cmake --build build-dir -j${CPU_COUNT}
cmake --install build-dir

if [ -e "${PREFIX}"/./thisostap.sh ]; then
    rm "${PREFIX}"/./thisostap.*
fi
