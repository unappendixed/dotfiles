return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },   -- Required

        {
            'williamboman/mason.nvim' ,
            config = function()

                require('mason').setup({})

                require('mason-lspconfig').setup({
                    handlers = {
                        require('lsp-zero').default_setup,
                    }
                })
            end
        }, -- Optional

        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        { 
            'hrsh7th/nvim-cmp', 
            config = function()

                local cmp = require('cmp')
                local cmp_action = require('lsp-zero').cmp_action()

                local cmp_select = { behavior = cmp.SelectBehavior.Select }

                cmp.setup({
                    mapping = cmp.mapping.preset.insert({
                        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                        ['<CR>'] = cmp.mapping.confirm({ select = true }),
                        ['<C-Space>'] = cmp.mapping.complete(),
                    })
                })
            end,
        }, -- Required

        { 'hrsh7th/cmp-nvim-lsp' }, -- Required
        { 'hrsh7th/cmp-buffer' }, -- Optional
        { 'hrsh7th/cmp-path' }, -- Optional
        { 'saadparwaiz1/cmp_luasnip' }, -- Optional
        { 'hrsh7th/cmp-nvim-lua' }, -- Optional

        -- Snippets
        { 'L3MON4D3/LuaSnip' },   -- Required
        { 'rafamadriz/friendly-snippets' }, -- Optional
    },
    config = function()

        local lsp = require('lsp-zero')

        lsp.preset('recommended')

        local cmp = require('cmp')

        lsp.set_preferences({
            --sign_icons = {}
        })


        local function setBindings(client, bufnr)
            local opts = { buffer = bufnr, remap = false }

            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition({ reuse_win = true }) end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set({"n", "i", "v"}, "<M-CR>", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("n", "<leader>vf", function() vim.lsp.buf.format() end, opts)
            vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
            vim.keymap.set("n", "<leader>vh", function() vim.cmd.TroubleToggle() end)
            vim.keymap.set("n", "\\", function() vim.diagnostic.open_float() end)
        end


        lsp.on_attach(setBindings)

        vim.api.nvim_create_autocmd(
        "FileType", {
            pattern = { "qf" },
            command = [[nnoremap <buffer> <CR> <CR>:cclose<CR>]]
        }
        )

        vim.diagnostic.config({
            virtual_text = true,
            update_in_insert = true,
            signs = true,
            float = true
        })

        lsp.setup()
    end,
}
