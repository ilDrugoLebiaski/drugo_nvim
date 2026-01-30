return {
  {
    -- Mini.icons

    "nvim-mini/mini.icons",
    version = "*",
    config = function()
      require("mini.icons").setup({
        style = "glyph", -- 'glyph' | 'ascii'

        default = {},
        directory = {},
        extension = {},
        file = {},
        filetype = {},
        lsp = {},
        os = {},
      })
    end,
  },

  -- Mini.animate
  {
    "nvim-mini/mini.animate",
    version = "*",
    event = "VeryLazy",
    config = function()
      local animate = require("mini.animate")

      animate.setup({
        cursor = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 100, unit = "total" }),
        },

        scroll = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 50, unit = "total" }),
        },

        resize = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 50, unit = "total" }),
        },

        open = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 150, unit = "total" }),
        },

        close = {
          enable = true,
          timing = animate.gen_timing.linear({ duration = 150, unit = "total" }),
        },
      })
    end,
  },
}
