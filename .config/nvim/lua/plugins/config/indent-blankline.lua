if packer_plugins["dracula.nvim"] and packer_plugins["dracula.nvim"].loaded then
  local colors = require("dracula").colors()
  vim.opt.termguicolors = true
  vim.cmd("highlight IndentBlanklineIndent1 guifg=" .. colors.purple .. " gui=nocombine")
  vim.cmd("highlight IndentBlanklineIndent2 guifg=" .. colors.red .. " gui=nocombine")
  vim.cmd("highlight IndentBlanklineIndent3 guifg=" .. colors.yellow .. " gui=nocombine")
  vim.cmd("highlight IndentBlanklineIndent4 guifg=" .. colors.cyan .. " gui=nocombine")
  vim.cmd("highlight IndentBlanklineIndent5 guifg=" .. colors.green .. " gui=nocombine")
  vim.cmd("highlight IndentBlanklineIndent6 guifg=" .. colors.pink .. " gui=nocombine")
  require("indent_blankline").setup {
    space_char_blankline = " ",
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
  }
else
  require("indent_blankline").setup {
    space_char_blankline = " ",
  }
end
