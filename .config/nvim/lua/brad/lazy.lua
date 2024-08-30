require("lazy").setup("brad.plugins")

ColorMyPencils('catppuccin')


-- 
    --use 'wbthomason/packer.nvim'

    --use {
    --    'nvim-telescope/telescope.nvim', tag = '0.1.4',
    --    -- or                            , branch = '0.1.x',
    --    requires = { { 'nvim-lua/plenary.nvim' } }
    --}
    --
    --use({
    --    "catppuccin/nvim",
    --    as = "catppuccin"
    --})

    --use {'stevearc/aerial.nvim', as = 'aerial'}


    --use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    --use ('nvim-treesitter/nvim-treesitter-context')

    --use('theprimeagen/harpoon')

    --use('mbbill/undotree')

    --use {
    --    'junegunn/fzf',
    --    as = ".fzf"
    --}
    --use('junegunn/fzf.vim')

    --use('tpope/vim-fugitive')

    ---- Theming
    --use {
    --    'famiu/feline.nvim',
    --    requires = {
    --        {
    --            'lewis6991/gitsigns.nvim',
    --            requires = { 'nvim-lua/plenary.nvim' },
    --            config = function()
    --                require('gitsigns').setup()
    --            end,
    --        },
    --        'kyazdani42/nvim-web-devicons',
    --    },
    --}

    ---- Lua
    --use {
    --    "folke/trouble.nvim",
    --    requires = "nvim-tree/nvim-web-devicons",
    --    config = function()
    --        require("trouble").setup {
    --        }
    --    end
    --}

    --use {
    --    "folke/todo-comments.nvim",
    --    requires = "nvim-lua/plenary.nvim",
   --

   --use { "skwee357/nvim-prose" }

    --use {
    --    "folke/zen-mode.nvim",
    --    config = function()
    --        require("zen-mode").setup {
    --            window = {
    --                options = {
    --                    number = true,
    --                },
    --            },
    --            on_open = function(win)
    --                vim.cmd("set wrap")
    --                vim.cmd("set linebreak")
    --                vim.cmd("set nonumber")
    --                vim.cmd("set norelativenumber")
    --                vim.keymap.set("n", "j", "gj")
    --                vim.keymap.set("n", "k", "gk")
    --                vim.opt.colorcolumn = "0"
    --            end,
    --            on_close = function(win)
    --                vim.cmd("set nowrap")
    --                vim.cmd("set number")
    --                vim.cmd("set relativenumber")
    --                vim.keymap.set("n", "j", "j")
    --                vim.keymap.set("n", "k", "k")
    --                vim.opt.colorcolumn = "120"
    --            end
    --        }
    --    end
    --}



    --use('mfussenegger/nvim-dap')
    --use('rcarriga/nvim-dap-ui')

    ---- Lua
    --use('tpope/vim-surround')
    --use {
    --    'numToStr/Comment.nvim',
    --    config = function()
    --        require('Comment').setup()
    --    end
    --}

    --use {
    --    'VonHeikemen/lsp-zero.nvim',
    --    branch = 'v3.x',
    --    requires = {
    --        -- LSP Support
    --        { 'neovim/nvim-lspconfig' },   -- Required
    --        { 'williamboman/mason.nvim' }, -- Optional
    --        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

    --        -- Autocompletion
    --        { 'hrsh7th/nvim-cmp' }, -- Required
    --        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
    --        { 'hrsh7th/cmp-buffer' }, -- Optional
    --        { 'hrsh7th/cmp-path' }, -- Optional
    --        { 'saadparwaiz1/cmp_luasnip' }, -- Optional
    --        { 'hrsh7th/cmp-nvim-lua' }, -- Optional

    --        -- Snippets
    --        { 'L3MON4D3/LuaSnip' },   -- Required
    --        { 'rafamadriz/friendly-snippets' }, -- Optional
    --    }
    
