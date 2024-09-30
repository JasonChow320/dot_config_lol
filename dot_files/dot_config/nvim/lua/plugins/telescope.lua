-- bufferline
return {
	"nvim-telescope/telescope.nvim",
    version = "v3.*",
    lazy = false,
    dependencies = {
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
            config = function()
                require("telescope").load_extension("fzf")
            end,
        },
        { "desdic/telescope-rooter.nvim", config = true },
    },

    keys = {
        { "<leader>f", "<cmd>Telescope find_files<cr>", desc = "Find files" },
        { "<leader>F", "<cmd>Telescope live_grep<cr>", desc = "Find Text" },
        { "<leader>b", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Lines in buffer" },
        { "<leader>B", "<cmd>Telescope rooter toggle<cr>", desc = "Toggle rooter" },

        -- Group defined in whichkey
        { "<leader>Sb", "<cmd>Telescope git_branches<cr>", desc = "Checkout branch" },
        { "<leader>Sc", "<cmd>Telescope colorscheme<cr>", desc = "Colorscheme" },
        { "<leader>Sh", "<cmd>Telescope help_tags<cr>", desc = "Find Help" },
        { "<leader>SM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
        { "<leader>Sr", "<cmd>Telescope oldfiles<cr>", desc = "Open Recent File" },
        { "<leader>SR", "<cmd>Telescope registers<cr>", desc = "Registers" },
        { "<leader>Sk", "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
        { "<leader>SC", "<cmd>Telescope commands<cr>", desc = "Commands" },

        -- Group defined in whichkey
        { "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
        { "<leader>lw", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
        { "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document Symbols" },
        { "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", desc = "Workspace Symbols", },
    },
   config = function()
       local status_ok, telescope = pcall(require, "telescope")
       if not status_ok then
           return
       end

       local actions = require "telescope.actions"

       telescope.setup({
           defaults = {
               prompt_prefix = " ",
               selection_caret = " ",
               path_display = { "smart" },

               file_ignore_patterns = {
                   "thirdparty"
               },

               mappings = {
                   i = {
                       ["<C-n>"] = actions.cycle_history_next,
                       ["<C-p>"] = actions.cycle_history_prev,

                       ["<C-j>"] = actions.move_selection_next,
                       ["<C-k>"] = actions.move_selection_previous,

                       ["<C-c>"] = actions.close,

                       ["<Down>"] = actions.move_selection_next,
                       ["<Up>"] = actions.move_selection_previous,

                       ["<CR>"] = actions.select_default,
                       ["<C-x>"] = actions.select_horizontal,
                       ["<C-v>"] = actions.select_vertical,
                       ["<C-t>"] = actions.select_tab,

                       ["<C-u>"] = actions.preview_scrolling_up,
                       ["<C-d>"] = actions.preview_scrolling_down,

                       ["<PageUp>"] = actions.results_scrolling_up,
                       ["<PageDown>"] = actions.results_scrolling_down,

                       ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                       ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                       ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                       ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                       ["<C-l>"] = actions.complete_tag,
                       ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
                   },

                   n = {
                       ["<esc>"] = actions.close,
                       ["<CR>"] = actions.select_default,
                       ["<C-x>"] = actions.select_horizontal,
                       ["<C-v>"] = actions.select_vertical,
                       ["<C-t>"] = actions.select_tab,

                       ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                       ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                       ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                       ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,

                       ["j"] = actions.move_selection_next,
                       ["k"] = actions.move_selection_previous,
                       ["H"] = actions.move_to_top,
                       ["M"] = actions.move_to_middle,
                       ["L"] = actions.move_to_bottom,

                       ["<Down>"] = actions.move_selection_next,
                       ["<Up>"] = actions.move_selection_previous,
                       ["gg"] = actions.move_to_top,
                       ["G"] = actions.move_to_bottom,

                       ["<C-u>"] = actions.preview_scrolling_up,
                       ["<C-d>"] = actions.preview_scrolling_down,

                       ["<PageUp>"] = actions.results_scrolling_up,
                       ["<PageDown>"] = actions.results_scrolling_down,

                       ["?"] = actions.which_key,
                   },
               },
           },

           pickers = {
               current_buffer_fuzzy_find = {
                   theme = "ivy",
               },
               live_grep = {
                   theme = "ivy",
               },
               find_files = {
                   hidden = true,
               },
           },
           extensions = {
               fzf = {
                   fuzzy = true,                    -- false will only do exact matching
                   override_generic_sorter = true,  -- override the generic sorter
                   override_file_sorter = true,     -- override the file sorter
                   case_mode = "ignore_case",       -- or "ignore_case" or "respect_case"
               },
               rooter = {
                   enable = false,
                   patterns = { ".git" },
                   debug = false
               },
           },
       })
   end,
}
