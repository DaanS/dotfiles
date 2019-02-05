#!/bin/bash
npm init -y
npm install -D eslint eslint-config-prettier eslint-plugin-prettier prettier flow-bin
cp $HOME/dotfiles/util/.eslintrc-npm.js .eslintrc.js
cp $HOME/dotfiles/util/.prettierrc.js .
