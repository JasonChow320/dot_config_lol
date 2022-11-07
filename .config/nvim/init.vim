""""""""""""""""""
" Basic settings "
""""""""""""""""""
let mapleader = "\\"
set timeout timeoutlen=500

" GUI and background settings
set exrc
set nohlsearch
set hidden
set noerrorbells
set nowrap
set incsearch
set scrolloff=8
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
colorscheme ron

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



"""""""""""
" Plugins "
"""""""""""
call plug#begin('~/.config/nvim/autoload/plugged')

    " https://github.com/neovim/nvim-lspconfig
    Plug 'neovim/nvim-lspconfig'
    "
    " https://github.com/preservim/nerdtree 
    Plug 'preservim/nerdtree' 
    "Plug 'scrooloose/NERDTree'
    "
    " https://github.com/nvim-treesitter/nvim-treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TsUpdate'}

    " https://github.com/nvim-telescope/telescope.nvim
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }

    " https://github.com/nvim-lualine/lualine.nvim
    Plug 'nvim-lualine/lualine.nvim'
    " If you want to have icons in your statusline choose one of these
    Plug 'kyazdani42/nvim-web-devicons'

    " https://github.com/dense-analysis/ale#installation 
    Plug 'dense-analysis/ale'

call plug#end()

lua << END
require('lualine').setup {
    options = {
        theme = 'OceanicNext'
    }
}
END



"""""""""""""
" Telescope "
"""""""""""""
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
