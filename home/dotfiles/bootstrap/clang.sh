#!/bin/bash
mkdir -p $HOME/projects/other/llvm-src
cd $HOME/projects/other/llvm-src
#
svn co http://llvm.org/svn/llvm-project/llvm/tags/RELEASE_351/final llvm
#
cd llvm/tools
svn co http://llvm.org/svn/llvm-project/cfe/tags/RELEASE_351/final clang
cd ../..
#
cd llvm/tools/clang/tools
svn co http://llvm.org/svn/llvm-project/clang-tools-extra/tags/RELEASE_351/final extra
cd ../../../..
#
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/compiler-rt/tags/RELEASE_351/final compiler-rt
cd ../..
#
cd llvm/projects
svn co http://llvm.org/svn/llvm-project/test-suite/tags/RELEASE_351/final test-suite
cd ../..
#
mkdir -p build
cd build
../llvm/configure --prefix=/home/schuld/app/clang-3.5.1 --build=x86_64-pc-linux-gnu --enable-optimized && make && make install
