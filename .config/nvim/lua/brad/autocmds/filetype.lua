vim.filetype.add({
    extension = {
        xaml = "xml",
        axaml = function()

            return "axaml"

        end

    },

})

vim.api.nvim_create_autocmd("FileType", {
    pattern = "axaml",
    callback = function()
        vim.lsp.start({
            -- cmd = {vim.env.HOME .. "/.local/programs/AvaloniaLSP/AvaloniaLanguageServer"},
            cmd = {"dotnet", vim.env.HOME .. "/.local/programs/AvaloniaLSP/AvaloniaLanguageServer.dll"},
            root_dir = vim.fs.dirname(vim.fs.find(function(name, _)
                return name:match(".*%.csproj")
            end, {upwards = true})[1]),
            filetypes = { "axaml" }
        })
        return 'xml'
    end
})

