#!/bin/bash
sudo aptitude install subversion cmake clang-3.9
#
mkdir -p $HOME/projects/other/llvm-src
cd $HOME/projects/other/llvm-src
#
svn co -q http://llvm.org/svn/llvm-project/llvm/tags/RELEASE_500/final llvm
#
cd llvm/tools
svn co -q http://llvm.org/svn/llvm-project/cfe/tags/RELEASE_500/final clang
cd ../..
#
cd llvm/tools/clang/tools
svn co -q http://llvm.org/svn/llvm-project/clang-tools-extra/tags/RELEASE_500/final extra
cd ../../../..
#
cd llvm/projects
svn co -q http://llvm.org/svn/llvm-project/compiler-rt/tags/RELEASE_500/final compiler-rt
cd ../..
#
cd llvm/projects
svn co -q http://llvm.org/svn/llvm-project/test-suite/tags/RELEASE_500/final test-suite
cd ../..
#
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang-3.9 -DCMAKE_CXX_COMPILER=clang++-3.9 -DCMAKE_INSTALL_PREFIX=$HOME/app/clang-5.0.0 -DLLVM_BUILD_TESTS=On -G "Unix Makefiles" ../llvm
make
