#!/bin/bash
sudo yum install -y libevent-devel ncurses-devel
mkdir -p $HOME/projects/other
mkdir -p $HOME/.local/bin
cd $HOME/projects/other
git clone https://github.com/tmux/tmux
cd tmux
sh autogen.sh && ./configure && make && cp tmux $HOME/.local/bin
