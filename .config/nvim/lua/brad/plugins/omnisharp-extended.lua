return {
    "Hoffs/omnisharp-extended-lsp.nvim",
    config = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "cs",
            callback = function(data)
                -- print("called remap autocmd")
                local bufnr = data.buf

                vim.api.nvim_create_autocmd("LspAttach", {
                    buffer = bufnr,
                    callback = function()
                        vim.keymap.set("n", "gd", function() require("omnisharp_extended").lsp_definition() end, {buffer = bufnr})
                        vim.keymap.set("n", "<leader>vrr", function() require("omnisharp_extended").lsp_references() end, {buffer = bufnr})
                    end
                })
            end
        })
    end
}
