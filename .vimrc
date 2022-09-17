let mapleader = "\\"
set timeout timeoutlen=500
set tabstop=4
set expandtab

" All insert mappings
inoremap jk <Esc>
inoremap <leader><space> <Esc>:update<cr>gi
inoremap <leader>a <Esc>la
inoremap <leader>A <Esc>A

" All normal mappings
nnoremap <leader><space> :update<cr>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Enables powerline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2
