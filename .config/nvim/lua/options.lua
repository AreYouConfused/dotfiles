local cmd = vim.cmd
local opt = vim.opt

cmd('set path+=**')
opt.termguicolors = true
opt.number = true
opt.rnu = true
local spacing = 5
opt.tabstop = spacing
opt.sw = spacing
opt.sts = spacing
opt.cursorline = true
opt.showmode = false

cmd('set listchars=tab:-->,space:·,nbsp:␣,trail:•,eol:$,precedes:«,extends:»')

cmd('hi LineNr guifg=grey')
cmd('hi CurrentWord guibg=black')

opt.signcolumn = "number"

vim.api.nvim_create_autocmd("FileType", {
	pattern = "gitcommit",
	callback = function()
		cmd("setlocal spell spelllang=en_us")
	end
})
