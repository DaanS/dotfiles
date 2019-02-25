#!/bin/bash
sudo yum install -y libgnome-keyring-devel
cd /usr/share/doc/git-`git --version | cut -f3 -d' '`/contrib/credential/gnome-keyring
sudo make && sudo cp git-credential-gnome-keyring /usr/libexec/git-core/
