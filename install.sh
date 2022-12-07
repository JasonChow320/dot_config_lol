#!/bin/bash

# Install softwares

yes | sudo apt install git tmux vim htop screen powerline fonts-powerline cmake cscope cmatrix
yes | sudo apt-get install build-essential libtool autoconf automake libncurses5-dev g++ python-dev python-pip python3-dev python3-pip

# Install configurations

cp -r .config/nvim ~/.config/
cp .tmux.conf ~/
cp .vimrc ~/
cat .bashrc >> ~/.bashrc

# Make directories

cd ~/
mkdir -p dev
cd dev

# Install tmux-mem-cpu-load

git clone git@github.com:thewtex/tmux-mem-cpu-load.git
cd tmux-mem-cpu-load
cmake .
make

sudo make install
cd ..

# END
