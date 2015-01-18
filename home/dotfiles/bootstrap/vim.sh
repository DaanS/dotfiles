#!/bin/bash
mkdir -p $HOME/projects/other 
cd $HOME/projects/other && hg clone https://vim.googlecode.com/hg/ vim
cd vim/src && ./configure && vim Makefile && make distclean && make && make install
