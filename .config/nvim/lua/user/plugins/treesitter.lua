local status_ok, configs = pcall(require, "nvim-treesitter")
if not status_ok then
	return
end

local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup({

    -- one of "all" or a list of languages
	ensure_installed = { "awk", "bash", "c", "cmake", "css", "dockerfile", "git_rebase", 
        "gitattributes", "gitcommit", "gitignore", "help", "html", "java", "javascript", 
        "json", "latex", "lua", "make", "markdown", "python", "regex", "rust", "sql", "vim", "yaml" },
	ignore_install = { "" }, -- List of parsers to ignore installing
    sync_install = false,
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },

    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
})
