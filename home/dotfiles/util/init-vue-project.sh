#!/bin/bash
vue create .
npm install -D flow-bin
cp $HOME/dotfiles/util/.eslintrc-vue.js .eslintrc.js
cp $HOME/dotfiles/util/.prettierrc.js .
