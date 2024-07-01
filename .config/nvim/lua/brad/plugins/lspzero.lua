return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
        -- LSP Support
        {
            'neovim/nvim-lspconfig',
            dependencies = {
                {
                    "folke/neodev.nvim",
                    config = function()
                        require("neodev").setup({})
                    end
                }
            }
        }, -- Required

        {
            'williamboman/mason.nvim',
            config = function()
                require('mason').setup({})

                require('mason-lspconfig').setup({
                    handlers = {
                        require('lsp-zero').default_setup,
                    }
                })
            end
        },                                       -- Optional

        { 'williamboman/mason-lspconfig.nvim' }, -- Optional

        -- Autocompletion
        {
            'hrsh7th/nvim-cmp',
            dependencies = {
                { "hrsh7th/cmp-nvim-lua" }
            },
            config = function()
                local cmp = require('cmp')
                local cmp_action = require('lsp-zero').cmp_action()

                local cmp_select = { behavior = cmp.SelectBehavior.Select }

                cmp.setup({
                    mapping = cmp.mapping.preset.insert({
                        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                        ['<C-Space>'] = cmp.mapping.complete(),
                    }),
                    snippet = {
                        expand = function(args)
                            require('luasnip').lsp_expand(args.body)
                        end
                    },
                })

                local config = cmp.get_config()
                table.insert(config.sources, { name = "luasnip" })
                cmp.setup(config)
            end,
        },                              -- Required

        { 'hrsh7th/cmp-nvim-lsp' },     -- Required
        { 'hrsh7th/cmp-buffer' },       -- Optional
        { 'hrsh7th/cmp-path' },         -- Optional
        { 'saadparwaiz1/cmp_luasnip' }, -- Optional

        -- Snippets
        { 'L3MON4D3/LuaSnip' },             -- Required
        { 'rafamadriz/friendly-snippets' }, -- Optional
    },
    config = function()
        local lsp = require('lsp-zero')


        local cmp = require('cmp')


        local function setBindings(client, bufnr)
            local opts = { buffer = bufnr, remap = false }


            vim.keymap.set("n", "gd", function() vim.lsp.buf.definition({ reuse_win = true }) end, opts)
            vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
            vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
            vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
            vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
            vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set({ "n", "i", "v" }, "<M-CR>", function() vim.lsp.buf.code_action() end, opts)
            vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
            vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
            vim.keymap.set("n", "<leader>vf", function()

                -- set conform binding here so it isn't overriden by LSP hook
                local conform = require("conform")
                if conform == nil then
                    vim.lsp.buf.format()
                else
                    conform.format({bufnr = opts.buffer, lsp_fallback = true})
                end

            end, opts)
            vim.keymap.set("n", "<leader>vsr", "<cmd>LspRestart<CR>")
            vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
            vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
            vim.keymap.set("n", "<leader>vh", function() vim.cmd.TroubleToggle() end)
            vim.keymap.set("n", "\\", function() vim.diagnostic.open_float() end)
        end



        lsp.on_attach(setBindings)

        -- vim.api.nvim_create_autocmd(
        --     "FileType", {
        --         pattern = { "qf" },
        --         command = [[nnoremap <buffer> <CR> <CR>:cclose<CR>]]
        --     }
        -- )

        vim.diagnostic.config({
            virtual_text = true,
            update_in_insert = true,
            signs = true,
            float = true
        })

        lsp.setup()

        local lspconfig = require("lspconfig")

        lspconfig.emmet_language_server.setup({
            filetypes = { "css", "eruby", "html", "javascript",
                "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact", "vue",
                "templ" }
        })

        lspconfig.htmx.setup({
            filetypes = { "html", "templ" }
        })

        lspconfig.nil_ls.setup({
            settings = {
                ['nil'] = {
                    formatting = {
                        command = { "nixpkgs-fmt" }
                    }
                }
            }
        })

        vim.filetype.add({ extension = { templ = "templ" } })
    end,
}
