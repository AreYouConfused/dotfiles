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

  use { "tmsvg/pear-tree",
        commit = "3bb209d9637d6bd7506040b2fcd158c9a7917db3"
      }

  use { "Mofiqul/dracula.nvim",
                commit = "0b4f6e009867027caddc1f28a81d8a7da6a2b277"
  }

  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate",
                commit = "7ddc2b54db9b92846292e081a337dce2ed4f66a1"
  }

  use { "lukas-reineke/indent-blankline.nvim",
        after = { "dracula.nvim" },
        tag = "v2.20.2"
  }

  use { "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
        commit = "edca2b03c724f22bdc310eee1587b1523f31ec7c"
  }

  use { "p00f/nvim-ts-rainbow",
        requires = { "nvim-treesitter/nvim-treesitter" },
        commit = "1ec3f880585c644ddd50a51502c59f4e36f03e62"
  }

  use { "ms-jpq/coq_nvim",
        commit = "cbe678af3d43772781781fa485137ea3c46ce323"
  }

  use { "neovim/nvim-lspconfig",
        tag = "v0.1.3"
  }

  use { "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig",
        commit = "eebc4f15132c587c52fcd2ce2f0da78fc19a16c0"
  }

  use { "romgrk/barbar.nvim",
        tag = "release/1.1.0"
  }

  use { "brenoprata10/nvim-highlight-colors",
        config = function() require('nvim-highlight-colors').setup {} end,
        commit = "5d20935b99d976ffa0d8226a78a8b2e091f0f699"
  }

  use { "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { "nvim-lua/plenary.nvim",
                     "kyazdani42/nvim-web-devicons", opt = true,
                     "MunifTanjim/nui.nvim", },
  }

  use { "nvim-telescope/telescope.nvim",
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} },
  }

  use { "numToStr/Comment.nvim",
        config = function() require('Comment').setup() end,
        tag = "v0.7.0"
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

