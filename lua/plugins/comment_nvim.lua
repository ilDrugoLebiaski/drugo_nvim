return {

  "numToStr/Comment.nvim",
  keys = {
    { "gcc", mode = "n", desc = "Comment: Toggle line" },
    { "gbc", mode = "n", desc = "Comment: Toggle block" },
    { "gc", mode = { "n", "v" }, desc = "Comment: Toggle line (operator)" },
    { "gb", mode = { "n", "v" }, desc = "Comment: Toggle block (operator)" },
    { "gcO", mode = "n", desc = "Comment: Add above" },
    { "gco", mode = "n", desc = "Comment: Add below" },
    { "gcA", mode = "n", desc = "Comment: Add end of line" },
  },

  config = function()
    local comment = require("Comment")
    comment.setup({

      ---Add a space b/w comment and the line
      padding = true,
      ---Whether the cursor should stay at its position
      sticky = true,
      ---Lines to be ignored while (un)comment
      ignore = nil,
      ---LHS of toggle mappings in NORMAL mode
      toggler = {
        ---Line-comment toggle keymap
        line = "gcc",
        ---Block-comment toggle keymap
        block = "gbc",
      },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
        ---Line-comment keymap
        line = "gc",
        ---Block-comment keymap
        block = "gb",
      },
      ---LHS of extra mappings
      extra = {
        ---Add comment on the line above
        above = "gcO",
        ---Add comment on the line below
        below = "gco",
        ---Add comment at the end of line
        eol = "gcA",
      },
      ---Enable keybindings
      ---NOTE: If given `false` then the plugin won't create any mappings
      mappings = {
        ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
        basic = true,
        ---Extra mapping; `gco`, `gcO`, `gcA`
        extra = true,
      },
      ---Function to call before (un)comment
      pre_hook = nil,
      ---Function to call after (un)comment
      post_hook = nil,
    })
  end,
}
