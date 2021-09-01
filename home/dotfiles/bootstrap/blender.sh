#!/bin/bash
set -e

root_dir="${HOME}/projects/other/blender"
mkdir -p ${root_dir}
cd ${root_dir}

git clone https://git.blender.org/blender.git
cd blender
git checkout v2.93.3
git submodule init
git submodule update
cd -

mkdir deps
./blender/build_files/build_environment/install_deps.sh --source "${root_dir}"/deps/src --install "${root_dir}"/deps/lib --with-all

mkdir -p blender/build
cd blender/build

cmake_invocation="$(grep . ../../BUILD_NOTES.txt | tail -1)."
eval ${cmake_invocation}
cmake -DWITH_INSTALL_PORTABLE=OFF -DCMAKE_INSTALL_PREFIX=/home/schuld/.local .
make
make install
