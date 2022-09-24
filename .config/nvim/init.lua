local cmd = vim.cmd
local opt = vim.opt

cmd('source ~/.config/nvim/vim/coc.vim')
cmd('source ~/.config/nvim/vim/keybinds.vim')
cmd('source ~/.config/nvim/vim/auto.vim')
require("plugins")
require("plugin-config")

cmd('set path+=**')
cmd('colorscheme dracula')
opt.termguicolors = true
opt.number = true
opt.tabstop = 8
opt.sw = 8
opt.sts = 8
opt.cursorline = true
cmd('set listchars=tab:-->,space:·,nbsp:␣,trail:•,eol:$,precedes:«,extends:»')

