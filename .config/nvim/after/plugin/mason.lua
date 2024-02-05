require('mason').setup({})

require('mason-lspconfig').setup({
    handlers = {
        require('lsp-zero').default_setup,
    }
})
