function ColorMyPencils(color)
    local envColor = require('brad.theme-active').themeName
    color = envColor or color
    vim.cmd.colorscheme(color)
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
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
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
    {'Shatur/neovim-ayu'},
    {'Mofiqul/dracula.nvim'}
}
