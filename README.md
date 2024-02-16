# Linux Setup

This is my Linux (Debian) setup which includes tmux, bashrc, vim, neovim and other essential software for day-to-day workflow

## install.sh (recommended)

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

## apt installs

* read the `sudo apt install` in install.sh to find the dependencies needed

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
