#!/bin/bash
mkdir -p $HOME/projects/other/llvm-src
cd $HOME/projects/other/llvm-src
#
svn co -q http://llvm.org/svn/llvm-project/llvm/tags/RELEASE_370/final llvm
#
cd llvm/tools
svn co -q http://llvm.org/svn/llvm-project/cfe/tags/RELEASE_370/final clang
cd ../..
#
cd llvm/tools/clang/tools
svn co -q http://llvm.org/svn/llvm-project/clang-tools-extra/tags/RELEASE_370/final extra
cd ../../../..
#
cd llvm/projects
svn co -q http://llvm.org/svn/llvm-project/compiler-rt/tags/RELEASE_370/final compiler-rt
cd ../..
#
cd llvm/projects
svn co -q http://llvm.org/svn/llvm-project/test-suite/tags/RELEASE_370/final test-suite
cd ../..
#
mkdir -p build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/home/schuld/app/clang-3.7.0 -G "Unix Makefiles" ../llvm
make
#../llvm/configure --prefix=/home/schuld/app/clang-3.7.0 --build=x86_64-pc-linux-gnu --enable-optimized && make && make install
