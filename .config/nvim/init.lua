local cmd = vim.cmd
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require("keybinds")
cmd('source ~/.config/nvim/vim/auto.vim')
require("plugins")
require("options")

