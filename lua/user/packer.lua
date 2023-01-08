local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use 'kyazdani42/nvim-web-devicons'
  use({
    'navarasu/onedark.nvim',
    config = function()
      vim.cmd('colorscheme onedark')
    end,
  })
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly'
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
  }
  use {
    "akinsho/toggleterm.nvim",
    tag = 'v2.*'
  }
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'mbbill/undotree'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }
  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })
  use "glepnir/lspsaga.nvim"
  use 'numToStr/Comment.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag' -- in treesitter config

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'

  use 'L3MON4D3/LuaSnip'
  use 'rafamadriz/friendly-snippets'
  use 'onsails/lspkind-nvim'
  -- use 'MunifTanjim/prettier.nvim'
  -- use 'folke/which-key.nvim'
end)
