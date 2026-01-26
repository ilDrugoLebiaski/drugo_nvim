return {
  -- Mason: gestore dei LSP
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason LSPConfig: integra Mason con nvim-lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      automatic_installation = true,
    },
  },

  -- LSPConfig: configurazione LSP
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- Keymap generici LSP
      local keymaps = {
        { "n", "K", vim.lsp.buf.hover, { desc = "LSP: Hover documentation" } },
        { "n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP: Go to definition" } },
        { "n", "<leader>gr", vim.lsp.buf.references, { desc = "LSP: Find references" } },
        { "n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP: Code actions" } },
        { "n", "<leader>rn", vim.lsp.buf.rename, { desc = "LSP: Rename symbol" } },
      }
      local function set_keymaps(bufnr)
        for _, km in ipairs(keymaps) do
          local mode, lhs, rhs = unpack(km)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true })
        end
      end

      -- Recupera tutti i server installati da Mason
      local mlsp = require("mason-lspconfig")
      local servers = mlsp.get_installed_servers()

      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          on_attach = function(client, bufnr)
            set_keymaps(bufnr)
          end,
        })
      end
    end,
  },
}
