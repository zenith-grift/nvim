require("user.options")
require("user.keymaps")
require("user.plugins")
require("user.colorscheme")
require("user.cmp")
require("user.lsp")
require("user.treesitter")
require("user.autopairs")
require("user.lsp.null-ls")
require("user.toggleterm")
require("user.nvim-tree")

-- TODO: Find a better place to put this
-- auto format on save
vim.cmd([[ 
    augroup _general_settings
        autocmd!
        autocmd BufWrite * :Format
]])
