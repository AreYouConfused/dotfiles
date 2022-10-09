local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  --use { "bfrg/vim-cpp-modern" }
  --use { "joshdick/onedark.vim" }
  --use { "junegunn/vim-easy-align" }
  --use { "voldikss/vim-floaterm" }
  --use { "alvan/vim-closetag" }
  --use { "tpope/vim-sleuth" }
  --use { "lervag/vimtex" }
  use { "tmsvg/pear-tree" }
  use { "Mofiqul/dracula.nvim" }
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "nvim-lualine/lualine.nvim", requires = { "nvim-tree/nvim-web-devicons", opt = true } }
  use { "p00f/nvim-ts-rainbow", requires = { "nvim-treesitter/nvim-treesitter" } }
  use { "ms-jpq/coq_nvim" }
  use { "neovim/nvim-lspconfig" }
  use { "nvim-tree/nvim-tree.lua", requires = { "nvim-tree/nvim-web-devicons", opt = true } }
  use { "romgrk/barbar.nvim" }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

