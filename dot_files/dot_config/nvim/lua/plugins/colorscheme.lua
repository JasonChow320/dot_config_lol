return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = { style = "moon" },
    config = function()
        vim.cmd[[colorscheme tokyonight-storm]]
        vim.cmd[[hi DiagnosticUnnecessary guifg=#737aa2]]
        vim.cmd[[hi Normal guibg=#292e42]]
    end,
}
