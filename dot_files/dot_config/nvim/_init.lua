local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- install plugins
require("lazy").setup("user.plugins-setup")

-- plugin configurations
require "user.core.options"
require "user.themes.tokyo_night"
require "user.plugins.bufferline"
require "user.plugins.cmp"
require "user.plugins.gitsigns"
require "user.plugins.impatient"
require "user.plugins.lualine"
require "user.plugins.nvim-tree"
require "user.plugins.telescope"
require "user.plugins.treesitter-context"
require "user.plugins.treesitter"
require "user.plugins.whichkey"
require "user.lsp"
require "user.snippets.snippets"
