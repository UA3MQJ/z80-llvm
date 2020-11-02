#!/bin/bash
echo "BUILD LLVM!!!"
mkdir -p /llvm/build/Debug
cd /llvm/build/Debug
cmake ../..  -DCMAKE_BUILD_TYPE=RelWithDebInfo -DLLVM_ENABLE_ASSERTIONS=On -DLLVM_ENABLE_PEDANTIC=Off -DLLVM_ENABLE_WARNINGS=Off -DLLVM_TARGETS_TO_BUILD= -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD=Z80 -DLLVM_PARALLEL_COMPILE_JOBS=4 -DLLVM_PARALLEL_LINK_JOBS=1 -DBUILD_SHARED_LIBS=ON && cmake --build .
echo "SET PATH /llvm/build/Debug/bin"
export PATH="/llvm/build/Debug/bin:$PATH"
echo "BUILD LLVM complete!!!"
cd /current_dir