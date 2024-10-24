return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null = require("null-ls")

        null.setup({
            sources = {
                null.builtins.formatting.csharpier.with({
                    command = "csharpier",
                    args = { "--write-stdout", "$FILENAME"},
                    filetypes = { "cs" }
                })
            },
        })
    end
}
