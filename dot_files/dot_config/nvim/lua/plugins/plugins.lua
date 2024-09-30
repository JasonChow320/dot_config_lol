return {
    { "nvim-lua/plenary.nvim" }, -- Useful lua functions used by lots of plugins

    -- toggleterm
    {
        'akinsho/toggleterm.nvim',
        lazy = true,
        version = "*",
        keys = {
            { "<leader>t", "<cmd>ToggleTerm size=40<cr>", desc = "Terminal" },
        },
        config = true,
    },

    -- Plugin to highlight matching words
    { "RRethy/vim-illuminate" },

    -- Lazy git
    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        config = true,
    },

    -- LSP
    {
        "neovim/nvim-lspconfig", -- enable LSP
        "williamboman/mason.nvim", -- language server installer
        "williamboman/mason-lspconfig.nvim", -- custom config per LSP
        "jose-elias-alvarez/null-ls.nvim", -- formatters and linters
    },

	-- Snippets
    {
        "L3MON4D3/LuaSnip", --snippet engine
        version = "v2.*",
        build = "make install_jsregexp"
    },
	"rafamadriz/friendly-snippets", -- a bunch of snippets to use
}
