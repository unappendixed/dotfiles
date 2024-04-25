return {
    "ggandor/leap.nvim",
    dependencies = {
        "tpope/vim-repeat",
    },
    config = function()
        -- require("leap").create_default_mappings()
        -- vim.keymap.set({ 'n', 'o' }, 's', '<Plug>(leap-forward)')
        vim.keymap.set({'n', 'o' }, 's', function()
            require("leap").leap({offset = 1})
        end)
        vim.keymap.set({'n', 'o' }, 'S', function()
            require("leap").leap({backward = true, offset = 1})
        end)
        -- vim.keymap.set({ 'n', 'o' }, 'S', '<Plug>(leap-backward)')
    end
}
