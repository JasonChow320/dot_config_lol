# Introduction

This is my neovim setup and all plugins I used, below is the keybindings I use

## Source

https://github.com/LunarVim/Neovim-from-scratch

## To set up

Should automatically install everything, but if not, do :PackerSync  
Also need to install ripgrep for telescope

## Install nerd fonts

https://github.com/ryanoasis/nerd-fonts#patched-fonts

### Key mappings

Check init.vim :D 

### CMP 

C-j and C-k to move on the auto complete  
C-e to get rid of current cmp  

### LSP (https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

K to show information about hovered info  
gd to go to definition  
gD to go to declaration  
gI to go to implementation  
gr to find references  
gl to show line diagnostic  

To install new lsp servers, you need to install it using :LspInstall server and add it to mason.lua  
https://github.com/neovim/nvim-lspconfig  

### Telescope

leader-ff to find files  
leader-fg to live grep  
leader-fb to find in buffer  
leader-fh to open help tags  

### Treesitter

do :TSUpdate

### nvim-tree

leader-e to toggle nvim-tree  
leader-E to go back and forth

