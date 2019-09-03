#!/bin/bash
mkdir -p $HOME/projects/other 
cd $HOME/projects/other && git clone https://github.com/vim/vim.git
cd vim/src && ./configure && vim Makefile && make distclean && make && make install
