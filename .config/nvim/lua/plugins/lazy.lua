local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
	"williamboman/mason.nvim",
	"folke/which-key.nvim",
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
	"folke/neodev.nvim",
	"yamatsum/nvim-cursorline",
	{ "tmsvg/pear-tree",
		commit = "3bb209d9637d6bd7506040b2fcd158c9a7917db3"
	},

	{ "Mofiqul/dracula.nvim",
		commit = "9fe831e685a76e1a1898a694623b33247c4d036c",
		lazy = false
	},

	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
		version = "v0.9.1"
	},

	{ "lukas-reineke/indent-blankline.nvim",
        --after = { "dracula.nvim" },
        version = "v2.20.8"
  },

  { "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
        commit = "2248ef254d0a1488a72041cfb45ca9caada6d994"
  },

  { "p00f/nvim-ts-rainbow",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        commit = "ef95c15a935f97c65a80e48e12fe72d49aacf9b9"
  },

  { "ms-jpq/coq_nvim",
        commit = "d4a58fa7ab20c928f88e416b3fcf6ada965bf314"
  },

  { "neovim/nvim-lspconfig",
        version = "v0.1.6"
  },

  { "mhartington/formatter.nvim" },

  { "SmiteshP/nvim-navic",
        dependencies = "neovim/nvim-lspconfig",
        commit = "0ffa7ffe6588f3417e680439872f5049e38a24db"
  },

  { "romgrk/barbar.nvim",
        version = "v1.7.0"
  },

  { "brenoprata10/nvim-highlight-colors",
        config = function() require('nvim-highlight-colors').setup {} end,
        commit = "231547093a788b925b8fc36351ad422701c3a8c8"
  },

  { "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = { "nvim-lua/plenary.nvim",
                     "nvim-tree/nvim-web-devicons", lazy = true,
                     "MunifTanjim/nui.nvim", },
  },

  { "nvim-telescope/telescope.nvim",
        version = '0.1.4',
        dependencies = { {'nvim-lua/plenary.nvim'} },
  },

  { "numToStr/Comment.nvim",
        config = function() require('Comment').setup() end,
        version = "v0.8.0"
  },


})
