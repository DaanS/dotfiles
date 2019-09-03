#!/bin/bash
mkdir -p $HOME/projects/other
cd $HOME/projects/other && git clone https://github.com/git/git.git
cd git && git checkout v2.11.0
make configure && ./configure --prefix=/home/schuld/usr && make all man && make install install-man
cd contrib/credential/gnome-keyring && make && cp git-credential-gnome-keyring $HOME/usr/bin
