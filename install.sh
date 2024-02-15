#!/bin/bash

# regular colors
Red='\033[0;31m'    # Red
Green='\033[0;32m'  # Green
Yellow='\033[0;33m' # Yellow
NC='\033[0m'        # No Color

echo -e "${Yellow}Starting installation..${NC}"

# install dependencies

sudo apt update
sudo apt-get update
sudo apt upgrade -y

yes | sudo apt install -y git tmux vim htop screen powerline fonts-powerline \
cmake cscope cmatrix curl net-tools npm doxygen doxygen-latex gdb gcc g++ \
openssh-server openssh-client clang-format nmap fzf

yes | sudo apt-get install -y build-essential libtool autoconf automake \
libncurses5-dev python3-dev python3-pip python3-venv xclip xsel

yes | sudo snap install mdview

# install ripgrep and rust

cd ${HOME}/Downloads
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
cd -

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# set up git

git config --global user.email "jasonchow9168@gmail.com"
git config --global user.name "Jason Chow"
git config --global core.excludesFile ${HOME}/.gitignore

# make directories

mkdir -p ${HOME}/dev

# install configurations

echo "export CUSTOMRC_DIR=$(pwd)" >> ${HOME}/.bashrc
./dot_files/install.sh
./custom_rc/install.sh

echo -e "${Green}Installation successful!${NC}"

# END
