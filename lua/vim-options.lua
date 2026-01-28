vim.cmd("set expandtab")
vim.cmd("set tabstop=3")
vim.cmd("set softtabstop=3")
vim.cmd("set shiftwidth=3")
vim.g.mapleader = " "

vim.opt.swapfile = false
vim.opt.number = true

vim.keymap.set("n", "<c-h>", "<C-w>h")
vim.keymap.set("n", "<c-j>", "<C-w>j")
vim.keymap.set("n", "<c-k>", "<C-w>k")
vim.keymap.set("n", "<c-l>", "<C-w>l")
