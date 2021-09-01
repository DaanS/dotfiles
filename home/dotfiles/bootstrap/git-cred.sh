#!/bin/bash
sudo aptitude install libglib2.0-dev libsecret-1-dev build-essential
cd /usr/share/doc/git/contrib/credential/libsecret && sudo make
