vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        if string.match(args.file, ".-%.templ$") then
            vim.keymap.set("n", "<leader>vf", function()
                vim.lsp.buf.format({filter = function(client)
                    return client.name == "templ"
                end})
            end, { buffer = args.buf})
        end
    end
})
