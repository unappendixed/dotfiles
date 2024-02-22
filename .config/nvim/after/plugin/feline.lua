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
