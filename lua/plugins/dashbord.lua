return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons", "nvim-telescope/telescope.nvim" },
  config = function()
    local db = require("dashboard")

    db.setup({
      theme = "doom",
      config = {
        header = {
          [[                                                                       ]],
          [[  ██████   █████                   █████   █████  ███                  ]],
          [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
          [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
          [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
          [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
          [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
          [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
          [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
          [[                                                                       ]],
          [[                                                                       ]],
        },
        center = {
          {
            icon = " ", -- 🆕 NEW FILE
            icon_hl = "Title",
            desc = "Nuovo File",
            desc_hl = "String",
            key = "n",
            key_hl = "Number",
            action = "ene | startinsert",
          },
          {
            icon = " ", -- 🆕 RECENT FILES
            icon_hl = "Title",
            desc = "Apri File Recente",
            desc_hl = "String",
            key = "r",
            key_hl = "Number",
            action = "Telescope oldfiles",
          },
          {
            icon = " ", -- 🆕 OPEN PROJECT
            icon_hl = "Title",
            desc = "Apri Progetto",
            desc_hl = "String",
            key = "p",
            key_hl = "Number",
            action = "Telescope projects",
          },
          {
            icon = " ", -- 🆕 CONFIG
            icon_hl = "Title",
            desc = "Config Neovim",
            desc_hl = "String",
            key = "c",
            key_hl = "Number",
            action = "edit ~/.config/nvim/init.lua",
          },
          {
            icon = " ", -- 🆕 EXIT
            icon_hl = "Title",
            desc = "Esci",
            desc_hl = "String",
            key = "q",
            key_hl = "Number",
            action = "qa",
          },
        },
        footer = {
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                            Il Drugo Lebiaski                          ]],
          [[                                                                       ]],
          [[                                                                       ]],
          [[                                                                       ]],

        },
      },
    })
  end,
}
