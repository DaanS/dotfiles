#!/bin/bash
npm init -y
npm install -D eslint eslint-config-prettier eslint-plugin-prettier prettier flow-bin
cp $HOME/dotfiles/bootstrap/.eslintrc.js .
cp $HOME/dotfiles/bootstrap/.prettierrc.js .
