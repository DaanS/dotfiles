#!/bin/bash
npm init -y
npm install -D eslint eslint-config-prettier eslint-plugin-prettier prettier flow-bin eslint-plugin-vue
cp $HOME/dotfiles/util/.eslintrc-vue.js .eslintrc.js
cp $HOME/dotfiles/util/.prettierrc.js .
