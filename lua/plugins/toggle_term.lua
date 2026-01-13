return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
      },
    })

    -- Terminali specifici
    local Terminal = require("toggleterm.terminal").Terminal

    -- Python REPL
    local python = Terminal:new({ cmd = "python3", hidden = true })
    vim.keymap.set("n", "<leader>tp", function()
      python:toggle()
    end, { desc = "Python REPL" })

    -- Node.js REPL
    local node = Terminal:new({ cmd = "node", hidden = true })
    vim.keymap.set("n", "<leader>tn", function()
      node:toggle()
    end, { desc = "Node REPL" })

    -- Lazygit
    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })
    vim.keymap.set("n", "<leader>gg", function()
      lazygit:toggle()
    end, { desc = "Lazygit" })
  end,
}
