return {
   "catppuccin/nvim",
   name = "catppuccin",
   priority = 1000,
   opts = {
         integrations = {
            telescope = {
               enabled = true,
               style = "nvchad", -- oppure "classic"
            },
         }
   },
   config = function (_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme "catppuccin-macchiato"
   end
}
