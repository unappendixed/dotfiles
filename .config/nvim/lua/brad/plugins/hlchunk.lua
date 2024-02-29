return {
    "shellRaining/hlchunk.nvim",
    -- enabled = false,
    event = { "UIEnter" },
    config = function()
        require("hlchunk").setup({
            chunk = {
                enable = false,
                use_treesitter = false
            },
            indent = {
                enable = true,
                chars = { "│",},
            },
            blank = {
                enable = false
            },
        })
    end
}
