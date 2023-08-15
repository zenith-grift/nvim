local function my_on_attach(bufnr)
    local api = require "nvim-tree.api"

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    --    vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts('Up'))
    --    vim.keymap.set('n', '?', api.tree.toggle_help, opts('Help'))
    vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<cr>", { silent = true, noremap = true })
end

-- pass to setup along with your other options
require("nvim-tree").setup {
    ---
    view = {
        width = 40,
    },
    filters = {
        git_ignored = false
    },
    on_attach = my_on_attach,
    update_focused_file =
    {
        enable = true,

    },
    actions = {
        change_dir = {
            enable = true
        }
    }
    ---
}
