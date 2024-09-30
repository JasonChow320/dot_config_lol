local map = vim.keymap.set

--[[
-- Insert mappings
--]]
map("i", "jk", "<Esc>")
map("i", "<leader><space>", "<Esc>:update<cr>gi")
map("i", "<leader>a", "<Esc>la")
map("i", "<leader>A", "<Esc>A")
map("i", "<S-Tab>", "<C-V><Tab>")

-- Auto complete for brackets, quotes
map("i", "<leader>{", "{}<left>")
map("i", "<leader>{<CR>", "{<CR>}<ESC>O")
map("i", "<leader>{;<CR>", "{<CR>};<ESC>O")

-- Allow double \\ to print \
map("i", "<leader><leader>", "\\")

--[[
-- Normal mappings
--]]
map("n", "<leader>o", "o<Esc>")
map("n", "<leader>O", "O<Esc>")
map("n", "<leader>c", ":set cursorline! cursorcolumn!<cr>")
map("n", "<space>", "i<space><Esc>")
map("n", "<leader>U", "viwU")
map("n", "<leader>u", "viwu")

-- Center searches
map("n", "n", "nzz")
map("n", "N", "Nzz")
map("n", "*", "*zz")
map("n", "#", "#zz")
map("n", "g*", "g*zz")
map("n", "g#", "g#zz")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- pane management
vim.keymap.set("n", "<leader>|", "<cmd>vsplit<cr>")
vim.keymap.set("n", "<leader><space>", "<cmd>split<cr>")
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Function to toggle highlight search
local function toggle_highlight_search()
    if vim.o.hlsearch and vim.fn.getreg('/') ~= '' then
        -- If highlighting is on and there's an active search, turn it off
        return ":nohls<CR>"
    else
        -- Otherwise, turn highlighting on
        return ":set hls<CR>"
    end
end

-- Map the function to <Leader>h
vim.keymap.set("n", "<leader>h", toggle_highlight_search, { silent = true, expr = true })

-- Turn all Tabs to Space
map("n", "<leader>l<space>", ":%s/\t/    /g<cr>")
