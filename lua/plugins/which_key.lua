return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- In v3, le icone e il layout si configurano così:
    preset = "classic", -- o "modern" / "helix"
    spec = {
      -- Qui aggiungiamo i gruppi e le descrizioni
      { "<leader>f", group = "Find (Telescope)" },
      { "<leader>m", group = "Markdown" },
      { "<leader>h", group = "Harpoon" },
      { "<leader>d", group = "Debug (DAP)" },
      { "<leader>l", group = "LSP" },
      { "<leader>w", proxy = "<c-w>", group = "Windows" },
      -- Esempi di comandi
      { "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "Markdown Preview" },
      {
        mode = { "n", "v" },
        { "<leader>y", '"+y', desc = "Copy to system clipboard" },
        { "<leader>p", '"+p', desc = "Paste from system clipboard" },
      },
    },
    win = {
      border = "rounded",
    },
    -- "show" sostituisce la vecchia gestione loop/hydra in v3
    expand = 0, -- mostra i sotto-livelli
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    vim.keymap.set("n", "<leader>?", "<cmd>WhichKey<cr>", { desc = "Search all keymaps" })

    -- Se vuoi usare il vecchio metodo 'add' invece di 'spec' dentro setup:
    -- wk.add(opts.spec)
  end,
}
