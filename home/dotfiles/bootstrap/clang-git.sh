#!/bin/bash
sudo aptitude install git cmake clang-8
#
mkdir -p $HOME/projects/other
cd $HOME/projects/other
#
git clone https://github.com/llvm/llvm-project.github
cd llvm-project
git checkout llvmorg-9.0.0
#
mkdir -p build
cd build
#
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-8 -DCMAKE_CXX_COMPILER=clang++-8 -DCMAKE_INSTALL_PREFIX=$HOME/app/clang-9 -DLLVM_BUILD_TESTS=On -G "Unix Makefiles" ../llvm
make
