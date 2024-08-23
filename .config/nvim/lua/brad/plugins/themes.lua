function ColorMyPencils(color)
    color = color or "catppuccin"
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
            ColorMyPencils()
        end,
    },
    { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
}
