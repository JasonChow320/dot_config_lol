-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "lazy")
if not status_ok then
	return
end

-- Install your plugins here
return ({
	"nvim-lua/plenary.nvim", -- Useful lua functions used by lots of plugins

	-- Colorscheme
	"folke/tokyonight.nvim",
    "ellisonleao/gruvbox.nvim",

	-- Cmp
	"hrsh7th/nvim-cmp", -- The completion plugin
	"hrsh7th/cmp-buffer", -- buffer completions
	"hrsh7th/cmp-path", -- path completions
	"saadparwaiz1/cmp_luasnip", -- snippet completions
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",

	-- Snippets
	"L3MON4D3/LuaSnip", --snippet engine
	"rafamadriz/friendly-snippets", -- a bunch of snippets to use

	-- LSP
	"neovim/nvim-lspconfig", -- enable LSP
	"williamboman/mason.nvim", -- simple to use language server installer
	"williamboman/mason-lspconfig.nvim",
	"jose-elias-alvarez/null-ls.nvim", -- for formatters and linters
	"RRethy/vim-illuminate",

	-- Telescope
	"nvim-telescope/telescope.nvim",

    -- Fzf telescope
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },

	-- Treesitter
	"nvim-treesitter/nvim-treesitter",

	-- nvim-treesitter
	"kyazdani42/nvim-tree.lua",
	"kyazdani42/nvim-web-devicons",

	-- which-key
	{ "folke/which-key.nvim" },

	-- lualine
	"nvim-lualine/lualine.nvim",

	-- bufferline
	{ "akinsho/bufferline.nvim", version = "v3.*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Gitsigns
	"lewis6991/gitsigns.nvim",

	-- impatient
	"lewis6991/impatient.nvim",
})
