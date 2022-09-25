local cmd = vim.cmd
--cmd('source ~/.config/nvim/vim/coc.vim')
--cmd('source ~/.config/nvim/vim/keybinds.vim')
cmd('source ~/.config/nvim/vim/auto.vim')
require("plugins")
require("plugin-config")
require("keybinds")
require("options")
--require("coc-conf")

