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
    vim.keymap.set({"n", "i"}, "<M-CR>", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("n", "<leader>vf", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "<leader>vh", function() vim.cmd.TroubleToggle() end)
    vim.keymap.set("n", "\\", function() vim.diagnostic.open_float() end)
end


-- require('lspconfig').svelte.setup{
--     plugin = {
--         css = {enable = true}
--     }
-- }

-- require('lspconfig').volar.setup {
--     filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json' },
--     init_options = {
--         typescript = {
--             tsdk = '$HOME/.config/yarn/global/node_modules/typescript/lib'
--         }
--     },
--     root_dir = util.root_pattern('package.json'),
--     on_attach = function(client, bufnr) setBindings(client, bufnr) end
-- }


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

--vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
