return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")
    local flake8 = require("none-ls.diagnostics.flake8")
    local eslint = require("none-ls.diagnostics.eslint")

    null_ls.setup({
      on_attach = function(client, bufnr)
        if client.name == "null-ls" then
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format()
            end,
          })
        end
      end,
      sources = {
        -- FORMAT
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.shfmt,
        null_ls.builtins.formatting.stylua,
        -- DIAGNOSTICS
        -- da none-ls-extras
        flake8,
        eslint,
        -- DIAGNOSTICS
        -- builtins
        null_ls.builtins.diagnostics.yamllint,
        null_ls.builtins.diagnostics.markdownlint,
      },
    })

    vim.keymap.set("n", "<leader>gf", function()
      vim.lsp.buf.format()
    end, { desc = "Format current buffer" })
  end,
}
