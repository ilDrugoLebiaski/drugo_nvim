return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {"c", "lua", "java", "javascript", "python"},
        highlight = {enable=true},
        indent = {enable = true},
        auto_install = true
    },
    config = function(_, opts)
        local config = require("nvim-treesitter.configs").setup(opts)
    end
}
