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

  use { "Mofiqul/dracula.nvim",
        config = function() require('plugins/config/dracula') end
  }

  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", 
        config = function() require('plugins/config/nvim-treesitter') end
  }

  use { "lukas-reineke/indent-blankline.nvim", 
        config = function() require('plugins/config/indent-blankline') end
  }

  use { "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
        config = function() require('plugins/config/lualine') end
  }

  use { "p00f/nvim-ts-rainbow", requires = { "nvim-treesitter/nvim-treesitter" },
        config = function() require('plugins/config/nvim-treesitter') end
  }

  use { "ms-jpq/coq_nvim",
        config = function() vim.g.coq_settings = { auto_start = 'shut-up' } end
  }

  use { "neovim/nvim-lspconfig",
        config = function() require('plugins/config/lspconfig') end
  }

  use { "romgrk/barbar.nvim",
        config = function() require('plugins/config/barbar') end
  }

  use { "brenoprata10/nvim-highlight-colors",
        config = function() require('nvim-highlight-colors').setup {} end
  }

  use { "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = { "nvim-lua/plenary.nvim",
                     "kyazdani42/nvim-web-devicons", opt = true,
                     "MunifTanjim/nui.nvim", },
        config = function() require('plugins/config/neo-tree') end
      }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

