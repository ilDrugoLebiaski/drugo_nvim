return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "classic",
    spec = {
      -- Gruppi principali
      { "<leader>f", group = "Find (Telescope)" },
      { "<leader>g", group = "Git" },
      { "<leader>m", group = "Markdown" },
      { "<leader>h", group = "Harpoon" },
      { "<leader>d", group = "Debug (DAP)" },
      { "<leader>l", group = "LSP" },
      { "<leader>t", group = "Terminal/Test" },
      { "<leader>n", group = "Notifications" },
      { "<leader>w", proxy = "<c-w>", group = "Windows" },
      { "<leader>z", group = "UFO" },
      { "<leader>?", group = "Help" },

      -- Markdown shortcuts
      { "<leader>mp", "<cmd>MarkdownPreview<cr>", desc = "Markdown Preview" },
      { "<leader>ms", "<cmd>MarkdownPreviewStop<cr>", desc = "Markdown Preview Stop" },
      { "<leader>mt", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview Toggle" },

      -- Notifications shortcuts
      { "<leader>nd", desc = "Dismiss all notifications" },
      { "<leader>nh", desc = "Notification history" },
      { "<leader>nl", desc = "Last notification" },
      { "<leader>na", desc = "All notifications" },

      -- System clipboard
      {
        mode = { "n", "v" },
        { "<leader>y", '"+y', desc = "Copy to system clipboard" },
        { "<leader>p", '"+p', desc = "Paste from system clipboard" },
      },

      -- Help commands
      {
        "<leader>?c",
        function()
          vim.notify(
            [[
╭─────────────────────────────────────────────╮
│  nvim-cmp Keymaps (INSERT mode)             │
╰─────────────────────────────────────────────╯

Navigation:
  Tab         Next completion item / Expand snippet
  Shift+Tab   Previous item / Jump back in snippet
  Enter       Confirm selection

Control:
  Ctrl+Space  Trigger completion menu
  Ctrl+e      Close completion menu

Documentation:
  Ctrl+b      Scroll documentation up
  Ctrl+f      Scroll documentation down
          ]],
            vim.log.levels.INFO,
            { title = "Completion Help" }
          )
        end,
        desc = "Show completion keymaps",
      },

      {
        "<leader>?m",
        function()
          vim.notify(
            [[
╭─────────────────────────────────────────────╮
│  Comment.nvim Keymaps                       │
╰─────────────────────────────────────────────╯

Toggle (NORMAL):
  gcc         Toggle line comment
  gbc         Toggle block comment
  gc{motion}  Comment with motion (e.g. gcip)
  gb{motion}  Block comment with motion

Toggle (VISUAL):
  gc          Toggle line comment
  gb          Toggle block comment

Add comment:
  gcO         Add comment above
  gco         Add comment below
  gcA         Add comment at end of line
          ]],
            vim.log.levels.INFO,
            { title = "Comment Help" }
          )
        end,
        desc = "Show comment keymaps",
      },
    },
    win = {
      border = "rounded",
    },
    expand = 0,
  },
  keys = {
    {
      "<leader>?k",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps",
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
  end,
}
