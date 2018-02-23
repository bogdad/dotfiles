#!/usr/bin/env sh
wget -O solarized.vim https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
mkdir -p ~/.vim/colors/
mv solarized.vim ~/.vim/colors/
