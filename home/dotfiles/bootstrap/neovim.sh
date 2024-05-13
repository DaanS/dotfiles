#!/bin/bash
sudo yum install -y epel-release
sudo yum install -y neovim
sudo python3 -m ensurepip
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install neovim
mkdir -p $HOME/projects/other
cd $HOME/projects/other
git clone http://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
