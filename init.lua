-- load all plugins
require "pluginList"
require "misc-utils"

require "top-bufferline"
require "statusline"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

-- lsp stuff
require "nvim-lspconfig"
require "compe-completion"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

require "custom_highlights"
-- blankline

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "treesitter-nvim"
require "mappings"

require "nvimTree" -- file tree stuff
require "file-icons"

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

require "whichkey"

g.vim_json_conceal = 0
g.indentLine_conceallevel = 0
g.ayucolor = "dark"
cmd "colorscheme ayu"
