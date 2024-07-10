local status_ok, tokyonight = pcall(require, "tokyonight")
if not status_ok then
	return
end

-- Lua to remove plugin background
vim.cmd[[colorscheme tokyonight-storm]]
vim.cmd[[hi DiagnosticUnnecessary guifg=#737aa2]]
vim.cmd[[hi Normal guibg=#292e42]]

-- For 
--vim.cmd[[hi Normal guibg=NONE ctermbg=NONE]]
--vim.cmd[[hi NvimTreeNormal guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE]]
--vim.cmd[[hi NvimTreeNormalNC guibg=NONE guifg=NONE ctermbg=NONE ctermfg=NONE]]
--vim.cmd[[hi TelescopeNormal guibg=NONE guifg=NONE ctermfg=NONE ctermfg=NONE]]
--vim.cmd[[hi TelescopeBorder guibg=NONE guifg=NONE]]
--vim.cmd[[hi LineNr guibg=#1f2335]]
--vim.cmd[[hi LineNr guibg=NONE guifg=NONE]]
--vim.cmd[[hi SignColumn guibg=NONE guifg=NONE]]
--]


-- enable theme for colorscheme
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
}

tokyonight.setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "night", -- The theme is used when the background is set to light
  transparent = true, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})
