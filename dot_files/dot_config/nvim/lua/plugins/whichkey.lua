-- which-key
return {
    "folke/which-key.nvim",
    config = function()
        local status_ok, which_key = pcall(require, "which-key")
        if not status_ok then
            return
        end

        which_key.setup({
            plugins = {
                marks = true,       -- shows a list of your marks on ' and `
                registers = true,   -- shows your registers on " in NORMAL or <C-r> in INSERT mode
                spelling = {
                    enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
                    suggestions = 20, -- how many suggestions should be shown in the list?
                },
                -- the presets plugin, adds help for a bunch of default keybindings in Neovim
                -- No actual key bindings are created
                presets = {
                    operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
                    motions = true,    -- adds help for motions
                    text_objects = true, -- help for text objects triggered after entering an operator
                    windows = true,    -- default bindings on <c-w>
                    nav = true,        -- misc bindings to work with windows
                    z = true,          -- bindings for folds, spelling and others prefixed with z
                    g = true,          -- bindings for prefixed with g
                },
            },
            icons = {
                breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
                separator = "➜", -- symbol used between a key and it's label
                group = "+",      -- symbol prepended to a group
            },
            keys = {
                scroll_down = "<c-d>", -- binding to scroll down inside the popup
                scroll_up = "<c-u>",   -- binding to scroll up inside the popup
            },
            win = {
                -- don't allow the popup to overlap with the cursor
                no_overlap = true,
                -- width = 1,
                -- height = { min = 4, max = 25 },
                -- col = 0,
                -- row = math.huge,
                -- border = "none",
                padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
                title = true,
                title_pos = "center",
                zindex = 1000,
                -- Additional vim.wo and vim.bo options
                bo = {},
                wo = {
                    -- winblend = 10, -- value between 0-100 0 for fully opaque and 100 for fully transparent
                },
            },
            layout = {
                height = { min = 4, max = 25 },                                           -- min and max height of the columns
                width = { min = 20, max = 50 },                                           -- min and max width of the columns
                spacing = 3,                                                              -- spacing between columns
                align = "left",                                                           -- align columns left, center or right
            },
            filter = function(mapping)
                return true                                                        -- enable this to hide mappings for which you didn't specify a label
            end,
            show_help = true,                                                             -- show help message on the command line when the popup is visible
            triggers = {
                { "<auto>", mode = "nixsotc" },                                           -- automatically setup triggers
                { "j", mode = { "i", "v" }},
                { "k", mode = { "i", "v" }},
            },

        })

        which_key.add({
            { "<leader>q", "<cmd>q!<CR>", desc = "Quit" },
            { "<leader>w", "<cmd>w<CR>", desc = "Save" },

            { "<leader>L", "<cmd>Lazy<cr>", desc = "Lazy Nvim" },

            { "<leader>s", group = "Session" },
            { "<leader>ss", group = "Save session" },
            { "<leader>ssa", "<cmd>mksession! proj.vim<cr>", desc = "Save session 1" },
            { "<leader>sss", "<cmd>mksession! proj1.vim<cr>", desc = "Save session 2" },
            { "<leader>ssd", "<cmd>mksession! proj2.vim<cr>", desc = "Save session 3" },
            { "<leader>sr", group = "Restore session" },
            { "<leader>sra", "<cmd>source proj.vim<cr>", desc = "Restore session 1" },
            { "<leader>srs", "<cmd>source proj1.vim<cr>", desc = "Restore session 2" },
            { "<leader>srd", "<cmd>source proj2.vim<cr>", desc = "Restore session 3" },

            { "<leader>m", group = "Mark" },
            { "<leader>ma", "<cmd> mark A<cr>", desc = "Mark current to A" },
            { "<leader>ms", "<cmd> mark S<cr>", desc = "Mark current to S" },
            { "<leader>md", "<cmd> mark D<cr>", desc = "Mark current to D" },
            { "<leader>mf", "<cmd> mark F<cr>", desc = "Mark current to F" },
            { "<leader>mh", "<cmd> mark H<cr>", desc = "Mark current to H" },
            { "<leader>mj", "<cmd> mark J<cr>", desc = "Mark current to J" },
            { "<leader>mk", "<cmd> mark K<cr>", desc = "Mark current to K" },
            { "<leader>ml", "<cmd> mark L<cr>", desc = "Mark current to L" },

            { "<leader>j", group = "Jump to Mark" },
            { "<leader>ja", "'A", desc = "Jump to Mark A" },
            { "<leader>js", "'S", desc = "Jump to Mark S" },
            { "<leader>jd", "'D", desc = "Jump to Mark D" },
            { "<leader>jf", "'F", desc = "Jump to Mark F" },
            { "<leader>jh", "'H", desc = "Jump to Mark H" },
            { "<leader>jj", "'J", desc = "Jump to Mark J" },
            { "<leader>jk", "'K", desc = "Jump to Mark K" },
            { "<leader>jl", "'L", desc = "Jump to Mark L" },

            { "<leader>l", group = "LSP" },
            { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action" },
            { "<leader>lf", "<cmd>lua vim.lsp.buf.format{async=true}<cr>", desc = "Format" },
            { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info" },
            { "<leader>lI", "<cmd>LspInstallInfo<cr>", desc = "Installer Info" },
            { "<leader>lj", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", desc = "Next Diagnostic" },
            { "<leader>lk", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic" },
            { "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action" },
            { "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", desc = "Quickfix" },
            { "<leader>lW", "<cmd>:%s/\\s\\+$//e<cr>", desc = "Remove white space" },

            { "<leader>g", group = "Git" },
            { "<leader>S", group = "Search" },
        })
    end,
}
