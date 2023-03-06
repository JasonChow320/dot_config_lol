#!/bin/bash

# Install softwares

sudo apt update
sudo apt-get update
sudo apt upgrade -y
yes | sudo apt install git tmux vim htop screen powerline fonts-powerline cmake cscope cmatrix curl net-tools npm
yes | sudo apt-get install build-essential libtool autoconf automake libncurses5-dev g++ python3-dev python3-pip python3-venv xclip
yes | sudo snap install mdview

cd ~/Downloads
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
cd -

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

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

# END
