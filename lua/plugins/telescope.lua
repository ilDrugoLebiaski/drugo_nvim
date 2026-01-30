return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      file_ignore_patterns = { "node_modules", ".git/" },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
      },
    },
    pickers = {
      find_files = {
        find_command = { "fdfind", "--type", "f", "--hidden", "--exclude", ".git" },
      },
    },
    extensions = {
      fzf = {
        fuzzy = true, -- Ricerca fuzzy
        override_generic_sorter = true, -- Usa fzf come sorter di default
        override_file_sorter = true, -- Stessa cosa per i file
        case_mode = "smart_case", -- Case-insensitive salvo lettere maiuscole
      },
    },
  },

  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)

    -- Carica l’estensione FZF (non dà errore se non compilata)
    pcall(telescope.load_extension, "fzf")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Search file" })
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Search with grep" })
  end,
}
