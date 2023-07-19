
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ({ "catppuccin/nvim",
	  as = "catppuccin"
  })

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use ('theprimeagen/harpoon')

  use ('mbbill/undotree')

  --use ('~/.fzf')
  use {
      'junegunn/fzf',
      as = ".fzf"
  }
  use ( 'junegunn/fzf.vim')

  use ('tpope/vim-fugitive')

  -- use ('feline-nvim/feline.nvim')
  use {
      'famiu/feline.nvim',
      requires = {
          {
              'lewis6991/gitsigns.nvim',
              requires = { 'nvim-lua/plenary.nvim' },
              config = function()
                  require('gitsigns').setup()
              end,
          },
          'kyazdani42/nvim-web-devicons',
      },
  }

  --use ('m4xshen/autoclose.nvim')
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}

  use ("mrjones2014/nvim-ts-rainbow")
  -- Lua
  use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
          require("trouble").setup {
          }
      end
  }

  use {
      "folke/zen-mode.nvim",
      config = function()
          require("zen-mode").setup {
              window = {
                  options = {
                      number = true,
                  },
              },
              on_open = function(win)
                  vim.cmd("set wrap")
                  vim.cmd("set linebreak")
                  vim.cmd("set nonumber")
                  vim.cmd("set norelativenumber")
                  vim.keymap.set("n", "j", "gj")
                  vim.keymap.set("n", "k", "gk")
                  vim.keymap.set("i", "<Enter>", "<Enter><Enter>")
                  vim.opt.colorcolumn="0"
              end,
              on_close = function(win)
                  vim.cmd("set nowrap")
                  vim.cmd("set number")
                  vim.cmd("set relativenumber")
                  vim.keymap.set("n", "j", "j")
                  vim.keymap.set("n", "k", "k")
                  vim.keymap.set("i", "<Enter>", "<Enter>")
                  vim.opt.colorcolumn="120"
              end
          }
      end
  }

  -- use ('Pocco81/auto-save.nvim')


  use ('mfussenegger/nvim-dap')
  use ('rcarriga/nvim-dap-ui')
  use ('simrat39/rust-tools.nvim')

  -- Lua
  use ('tpope/vim-surround')
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
-- Lua

  end)
