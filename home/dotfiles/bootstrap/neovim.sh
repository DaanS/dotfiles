#!/bin/bash
sudo yum install python36
sudo python36 -m ensurepip
sudo python36 -m pip install --upgrade pip
sudo python36 -m pip install neovim
mkdir -p $HOME/projects/other
cd $HOME/projects/other
git clone http://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
