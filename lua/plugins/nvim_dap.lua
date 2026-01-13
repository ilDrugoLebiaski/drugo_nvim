return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "jay-babu/mason-nvim-dap.nvim",
    "theHamsta/nvim-dap-virtual-text",
  },
  config = function()
    ------------------------------------------------
    ---1. Dap UI
    ------------------------------------------------
    local dap, dapui = require("dap"), require("dapui")
    dapui.setup()
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    -------------------------------------------------
    ---2. DAP Virtual Text
    -------------------------------------------------

    require("nvim-dap-virtual-text").setup({
      commented = true,
    })

    -------------------------------------------------
    ---3. Mason DAP
    -------------------------------------------------

    require("mason-nvim-dap").setup({

      automatic_installation = true,

      ensure_installed = {

        "python", --debugpy
        "codelldb", --C/C++ debugger
        "js-debug-installer", --Javascript debugger
      },
      handlers = {},
    })

    --------------------------------------------------------------
    ---4. keymap
    -----------------------------------------------------------

    vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
    vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
    vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
    vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")
  end,
}
