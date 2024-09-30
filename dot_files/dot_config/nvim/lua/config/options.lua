--[[
-- All neovim configuration
--]]
local options = {
    backup = false,                          -- creates a backup file
    clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
    cmdheight = 1,                           -- more space in the neovim command line for displaying messages
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    conceallevel = 0,                        -- so that `` is visible in markdown files
    fileencoding = "utf-8",                  -- the encoding written to a file
    mouse = "a",                             -- allow the mouse to be used in neovim
    pumheight = 10,                          -- pop up menu height
    showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2,                         -- always show tabs
    smartcase = true,                        -- smart case
    splitbelow = true,                       -- force all horizontal splits to go below current window
    splitright = true,                       -- force all vertical splits to go to the right of current window
    swapfile = true,                        -- creates a swapfile
    undofile = true,                         -- enable persistent undo
    updatetime = 300,                        -- faster completion (4000ms default)
    writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    numberwidth = 2,                         -- set number column width to 2 {default 4}
    linebreak = true,                        -- companion to wrap, don't split words
    sidescrolloff = 8,                       -- minimal number of screen columns either side of cursor if wrap is `false`
    guifont = "monospace:h17",               -- the font used in graphical neovim applications
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

local opt = vim.opt
opt.timeoutlen = 300

vim.cmd[[colorscheme tokyonight-storm]]

-- GUI and background settings
vim.o.exrc = true
vim.o.hlsearch = false
vim.o.hidden = true
vim.o.errorbells = false
-- vim.o.wrap = false -- Uncomment if you want to disable line wrapping
vim.o.modifiable = true
vim.o.incsearch = true
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.o.signcolumn = 'yes'

-- Tab and indentation settings
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true

-- Cursorline and cursorcolumn settings
vim.wo.cursorline = false
vim.wo.cursorcolumn = false

-- Allow incrementing/decrementing letters with ctrl-a/x
vim.o.nrformats = vim.o.nrformats .. ',alpha'

-- Clipboard settings
vim.o.clipboard = 'unnamedplus'

-- Highlight trailing whitespace
vim.cmd [[highlight TrailingWhitespace guibg=#8B0000 guifg=#FFFFFF ctermbg=1 ctermfg=15]]

-- Autocommands
vim.api.nvim_create_augroup('TrailingWhitespace', { clear = true })
vim.api.nvim_create_autocmd('InsertLeave', {
    group = 'TrailingWhitespace',
    pattern = '*',
    command = 'match TrailingWhitespace /\\s\\+$/',
})
vim.api.nvim_create_autocmd('InsertEnter', {
    group = 'TrailingWhitespace',
    pattern = '*',
    command = 'match none',
})
vim.api.nvim_create_autocmd('BufWinEnter', {
    group = 'TrailingWhitespace',
    pattern = '*',
    command = 'match TrailingWhitespace /\\s\\+$/',
})
vim.api.nvim_create_autocmd('BufLeave', {
    group = 'TrailingWhitespace',
    pattern = '*',
    command = 'match TrailingWhitespace /\\s\\+$/',
})

-- Auto close preview window
vim.api.nvim_create_autocmd('CompleteDone', {
    pattern = '*',
    command = 'if pumvisible() == 0 | pclose | endif',
})

-- Auto remove trailing whitespace (commented out in original)
-- vim.api.nvim_create_autocmd('BufWritePre', {
--   pattern = '*',
--   command = ':%s/\\s\\+$//e',
-- })

-- Set number line by default
vim.wo.number = true

-- Create an augroup for toggling relative line numbers
vim.api.nvim_create_augroup('NumberToggle', { clear = true })
vim.api.nvim_create_autocmd({'BufEnter', 'FocusGained', 'InsertLeave', 'WinEnter'}, {
    group = 'NumberToggle',
    pattern = '*',
    callback = function()
        if vim.wo.number and vim.fn.mode() ~= 'i' then
            vim.wo.relativenumber = true
        end
    end,
})
vim.api.nvim_create_autocmd({'BufLeave', 'FocusLost', 'InsertEnter', 'WinLeave'}, {
    group = 'NumberToggle',
    pattern = '*',
    callback = function()
        if vim.wo.number then
            vim.wo.relativenumber = false
        end
    end,
})
