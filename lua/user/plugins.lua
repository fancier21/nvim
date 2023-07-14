local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim"
  use 'kyazdani42/nvim-web-devicons'
  use "norcalli/nvim.lua"
  use {
    "RRethy/nvim-base16",
    config = function()
      vim.cmd([[colorscheme base16-tomorrow-night]])
    end,
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    tag = 'nightly'
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
  }
  use {
    "akinsho/toggleterm.nvim", tag = '*',
    config = function()
      require("toggleterm").setup()
    end
  }
  use 'lukas-reineke/indent-blankline.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'mbbill/undotree'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nvim-treesitter/nvim-treesitter-textobjects'
  use {
    'codota/tabnine-nvim',
    run = "./dl_binaries.sh"
  }
  use 'MunifTanjim/nui.nvim'
  use({
    "jackMort/ChatGPT.nvim",
    config = function()
      require("chatgpt").setup({
        chat = {
          keymaps = {
            close = { "jk", "kj", "<Esc>" },
            yank_last = "<C-y>",
            scroll_up = "<C-u>",
            scroll_down = "<C-d>",
            toggle_settings = "<C-o>",
            new_session = "<C-n>",
            cycle_windows = "<Tab>",
          },
        },
        popup_input = {
          submit = "<C-t>",
        },
      })
    end,
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
  })
  use 'tpope/vim-surround'
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
  use({
    "L3MON4D3/LuaSnip",
    tag = "v1.*",
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  })
  use 'rafamadriz/friendly-snippets'
  -- use 'onsails/lspkind-nvim'
  use {
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  }
  use {
    "rest-nvim/rest.nvim",
    requires = { "nvim-lua/plenary.nvim" }
  }
end)
