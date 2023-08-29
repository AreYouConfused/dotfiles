local cmd = vim.cmd
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
require("keybinds")
cmd('source ~/.config/nvim/vim/auto.vim')
if vim.g.vscode then
    " VSCode extension
else
    " ordinary Neovim
    require("plugins")
end
require("options")

