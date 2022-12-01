# Linux Setup

This is my Linux setup which includes tmux, bashrc, vim, neovim and other essential software for day-to-day workflow

## Install.sh

install.sh will automatically download the softwares and install configurations into the correct directory  
Usage:
```bash
git clone git@github.com:JasonChow320/dot_config_lol.git
cd dot_config_lol
./install.sh
```

---

## Manually installation

If you would like to manually install each software and configurations, below is the list of setups you need to use with the configuration

## apt installs

* git
* tmux
* vim
* code
* htop
* screen
* powerline (fonts-powerline as well)
* cmake
* cscope
* cmatrix
* neovim (install from release instead of apt)

To install: 

```bash
sudo apt install git tmux vim htop screen powerline fonts-powerline cmake cscope cmatrix
```

```bash
sudo apt-get install build-essential libtool autoconf automake libncurses5-dev g++ python-dev python-pip python3-dev python3-pip
```

## useful github install (for vim)

* CtrlP
* tmux-mem-cpu-load

## neovim

 * read nvim/README.md for more information
 * install neovim v0.8 or above (https://github.com/neovim/neovim/releases)

