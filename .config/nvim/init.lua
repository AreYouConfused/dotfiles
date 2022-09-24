local cmd = vim.cmd
local opt = vim.opt

--cmd('source ~/.config/nvim/vim/coc.vim')
cmd('source ~/.config/nvim/vim/keybinds.vim')
cmd('source ~/.config/nvim/vim/auto.vim')
require("plugins")
require("plugin-config")
require("coc-conf")

cmd('set path+=**')
cmd('colorscheme dracula')
opt.termguicolors = true
opt.number = true
local spacing = 5
opt.tabstop = spacing
opt.sw = spacing
opt.sts = spacing
opt.cursorline = true

cmd('set listchars=tab:-->,space:·,nbsp:␣,trail:•,eol:$,precedes:«,extends:»')

