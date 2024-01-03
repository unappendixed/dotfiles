function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)
end

require('catppuccin').setup({
    -- values: latte, frappe, machiatto, mocha
    flavour = "mocha",
    styles = {
        conditionals = {}
    }
})

ColorMyPencils()
