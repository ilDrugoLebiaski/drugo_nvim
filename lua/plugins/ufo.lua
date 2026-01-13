return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    "kevinhwang91/promise-async",
  },
  event = "VeryLazy",
  opts = {
    -- Provider di folding (usa LSP quando disponibile, altrimenti treesitter)
    provider_selector = function(bufnr, filetype, buftype)
      return { "treesitter", "indent" }
    end,
  },
  config = function(_, opts)
    local ufo = require("ufo")
    ufo.setup(opts)

    -- Configurazioni Vim per folding
    vim.o.foldcolumn = "1" -- Mostra colonna fold sulla sinistra
    vim.o.foldlevel = 99 -- Apri tutti i fold all'apertura del file
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true
    vim.o.fillchars = [[eob: ,fold: ,foldopen:▾,foldsep: ,foldclose:▸]]

    -- Nascondi foldcolumn in dashboard/alpha
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason" },
      callback = function()
      vim.opt_local.foldcolumn = "0"
      end,
    })

    -- Mostra foldcolumn solo nei file normali
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*",
      callback = function()
      local ft = vim.bo.filetype
      local excluded = { "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason", "" }

      if not vim.tbl_contains(excluded, ft) then
        vim.opt_local.foldcolumn = "1"
        end
        end,
    })

    -- Keymaps per folding
    vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Open all folds" })
    vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Close all folds" })
    vim.keymap.set("n", "zr", ufo.openFoldsExceptKinds, { desc = "Open folds except kinds" })
    vim.keymap.set("n", "zm", ufo.closeFoldsWith, { desc = "Close folds with" })

    -- Peek del fold senza aprirlo (preview)
    vim.keymap.set("n", "K", function()
      local winid = ufo.peekFoldedLinesUnderCursor()
      if not winid then
        vim.lsp.buf.hover()
      end
    end, { desc = "Peek fold or show hover" })
  end,
}
