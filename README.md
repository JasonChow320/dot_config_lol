# Linux Setup

This is my Linux (Debian) setup which includes tmux, bashrc, vim, neovim and other essential software for day-to-day workflow

## Install.sh (under development, please refer to manual installation for a correct set up

install.sh will automatically download the softwares and install configurations into the correct directory  
Usage:
```bash
git clone git@github.com:JasonChow320/dot_config_lol.git
cd dot_config_lol
./install.sh
```

---

## Manual installation

If you would like to manually install each software and configuration, below is the list of setup you need to install alongside with the configuration

## important apt installs

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
* npm

To install:

```bash
sudo apt update
sudo apt install -y git tmux vim htop screen powerline fonts-powerline cmake cscope cmatrix curl net-tools npm \
doxygen doxygen-latex gdb gcc g++ openssh-server openssh-client
```

```bash
sudo apt-get update
sudo apt-get install -y build-essential libtool autoconf automake libncurses5-dev python3-dev python3-pip python3-venv xclip
```

## neovim

* read nvim/README.md for more information
* install neovim v0.8 or above (https://github.com/neovim/neovim/releases)

## Nerd-Fonts

* JetBrainsMonoNL Nerd Font Mono Medium
* MonoSpace

## mdview

* https://snapcraft.io/install/mdview/ubuntu
* sudo snap install mdview

## Rust

* https://www.rust-lang.org/tools/install

## tmux-plugins

* https://github.com/tmux-plugins/tpm

--- 

# Getting ssh keys

```bash
ssh-keygen -b 4096 -t rsa
```

# Updating snap store

```bash
sudo snap refresh
snap-store --quit && sudo snap refresh snap-store
```

# Updating kernel

```bash
sudo apt-get update
sudo apt-get dist-upgrade
```
