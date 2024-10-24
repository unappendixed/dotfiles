function ColorMyPencils(color)
    local envColor = require('brad.theme-active').themeName
    color = envColor or color
    vim.cmd.colorscheme(color)
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require('catppuccin').setup({
                -- values: latte, frappe, machiatto, mocha
                flavour = "mocha",
                styles = {
                    conditionals = {}
                }
            })
        end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require('gruvbox').setup({
                overrides = {
                    SignColumn = { link = "Normal" },
                    GruvboxGreenSign = { bg = "" },
                    GruvboxOrangeSign = { bg = "" },
                    GruvboxPurpleSign = { bg = "" },
                    GruvboxYellowSign = { bg = "" },
                    GruvboxRedSign = { bg = "" },
                    GruvboxBlueSign = { bg = "" },
                    GruvboxAquaSign = { bg = "" },
                },
            })
        end
    },
    {
        'Shatur/neovim-ayu',
        priority = 1000,
    },
    {
        'Mofiqul/dracula.nvim',
        priority = 1000,
    }
}
