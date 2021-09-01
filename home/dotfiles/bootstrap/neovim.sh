#!/bin/bash
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo aptitude install -y neovim python3-dev python3-pip curl fonts-powerline
sudo pip3 install --upgrade pip
sudo pip3 install neovim
#mkdir -p $HOME/projects/other
#cd $HOME/projects/other
#git clone http://github.com/powerline/fonts.git --depth=1
#cd fonts
#./install.sh
#cd ..
#rm -rf fonts
mkdir -p $HOME/.config/nvim
grep -qxF 'source ~/.vimrc' $HOME/.config/nvim/init.vim || echo 'source ~/.vimrc' >> $HOME/.config/nvim/init.vim
