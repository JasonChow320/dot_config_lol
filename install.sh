#!/bin/bash

# Install softwares

yes | sudo apt install git tmux vim htop screen powerline fonts-powerline cmake cscope cmatrix curl
yes | sudo apt-get install build-essential libtool autoconf automake libncurses5-dev g++ python3-dev python3-pip

# Set up git

git config --global user.email "jasonchow9168@gmail.com"
git config --global user.name "Jason Chow"

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
