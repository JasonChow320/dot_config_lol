# Introduction

This is my neovim setup, below is the keybindings I use

## Source

https://github.com/LunarVim/Neovim-from-scratch

## To set up

Should automatically install everything, but if not, do :PackerSync  

## Dependency

**nerd fonts** - for unique characters  
https://github.com/ryanoasis/nerd-fonts#patched-fonts  

---

**ripgrep** - for telescope grep command  
https://github.com/BurntSushi/ripgrep#installation

--- 

**tree-sitter-cli** - to install some tree-sitter parsers  
```bash
npm install -g tree-sitter-cli
```

---

## Null-ls

**stylua**:  
```bash
cargo install stylua
```

**prettier**:  
```bash
npm install -g prettier
```

**black**:  
```bash
pip install black
```

### Key mappings

Check init.vim :D 

### CMP 

"C-j" and "C-k" to move on the auto complete  
"C-e" to get rid of current cmp  

### LSP (https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md)

"K" to show information about hovered info  
"gd" to go to definition  
"gD" to go to declaration  
"gI" to go to implementation  
"gr" to find references  
"gl" to show line diagnostic  

To install new lsp servers, you need to install it using :LspInstall "server" and add it to mason.lua  
https://github.com/neovim/nvim-lspconfig  

### Telescope

"leader-ff" to find files  
"leader-fg" to live grep  
"leader-fb" to find in buffer  
"leader-fh" to open help tags  

### Treesitter

do :TSUpdate

### nvim-tree

"leader-e" to toggle nvim-tree
"leader-E" to go back and forth

### Bear

```bash
sudo apt install bear
make clean
bear make -j
```
