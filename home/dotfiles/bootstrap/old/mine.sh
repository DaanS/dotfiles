#!/bin/bash
mkdir -p $HOME/projects
cd $HOME/projects
git clone https://DaanSchulpen@bitbucket.org/DaanSchulpen/s3.git
git clone https://DaanSchulpen@bitbucket.org/DaanSchulpen/yggdrasil.git
git clone https://DaanSchulpen@bitbucket.org/DaanSchulpen/euler.git
#
cd s3
./bootstrap
autoreconf -ivf
mkdir -p build
cd build
../configure CXXFLAGS='-std=c++11 -g -O3 -Wall -Wextra -Werror -pedantic'
make && src/test
#
cd ../../yggdrasil
mkdir -p m4
autoreconf -ivf
mkdir -p build
cd build
../configure CXXFLAGS='-std=c++11 -g -O3 -Wall -Wextra -Werror -pedantic'
make && src/tree_test
