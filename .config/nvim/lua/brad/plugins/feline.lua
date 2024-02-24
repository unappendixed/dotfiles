return {

    "famiu/feline.nvim",
    dependencies = {
        { "lewis6991/gitsigns.nvim", config = function() require('gitsigns').setup() end },
        "kyazdani42/nvim-web-devicons",
        { "catppuccin/nvim", name = "catppuccin"},
        "skwee357/nvim-prose",
    },
    config = function()

        local feline = require("feline")
        local ctp_feline = require('catppuccin.groups.integrations.feline')
        -- ctp_feline.setup()

        local components = ctp_feline.get()
        table.insert(components.active[3], 1, {provider = function()
            if vim.bo.filetype == "markdown" then
                local words = require("nvim-prose").word_count() .. "   "
                return words
            end
            return ""
        end})


        feline.setup({
            components = components
        })
    end,
}
