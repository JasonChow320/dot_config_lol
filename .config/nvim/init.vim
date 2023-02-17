""""""""""""""""""""
" Basic settings "
""""""""""""""""""
let mapleader = "\\"
set timeout timeoutlen=500

" GUI and background settings
set exrc
set nohlsearch
set hidden
set noerrorbells
"set nowrap
set modifiable
set incsearch
set scrolloff=8
set sidescrolloff=8
set signcolumn=yes

" tab and shift (> & <) spaces, enable auto and smart indent
set tabstop=4
set expandtab
set shiftwidth=4

set autoindent
set smartindent
set cindent

" Allow vim to increment/decrement letters with ctrl a/x
set nrformats+=alpha

" Turn on syntax highlighting and use ron colorscheme
syntax on                                                                                        
colorscheme ron " this is overwritten if using neovim :D

" Allow backspace to act like in a regular editor in insert mode
set backspace=indent,eol,start

" Binds to use relative line number in Normal mode and absolute line number in Insert mode
set number
  augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave * if &nu | set nornu | endif
augroup END



"""""""""""""""""""""""
" All insert mappings "
"""""""""""""""""""""""
inoremap jk <Esc>
inoremap <leader><space> <Esc>:update<cr>gi
inoremap <leader>a <Esc>la
inoremap <leader>A <Esc>A
inoremap <S-Tab> <C-V><Tab>

" Auto complete for brackets, quotes
inoremap <leader>" ""<left>
inoremap <leader>' ''<left>
inoremap <leader>( ()<left>
inoremap <leader>[ []<left>
inoremap <leader>{ {}<left>
inoremap <leader>{<CR> {<CR>}<ESC>O
inoremap <leader>{;<CR> {<CR>};<ESC>O



"""""""""""""""""""""""
" All normal mappings "
"""""""""""""""""""""""
nnoremap <leader><space> :update<cr>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
nnoremap <leader>c :set cursorline! cursorcolumn!<cr>

" Center searches
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Toggle pattern highlight
nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Turn all Tabs to Space
nnoremap <leader>l<space> :%s/\t/    /g<cr>



"""""""""""
" Plugins "
"""""""""""
luafile ~/.config/nvim/_init.lua
"luafile ~/appdata/Local/nvim/_init.lua

