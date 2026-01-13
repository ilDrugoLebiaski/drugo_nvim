return{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = true, -- Mostra anche i file nascosti
                hide_dotfiles = false, -- Non nascondere file che iniziano con .
                hide_gitignored = false, -- Non nascondere i file ignorati da git
            },
        },
    },
    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')
}
