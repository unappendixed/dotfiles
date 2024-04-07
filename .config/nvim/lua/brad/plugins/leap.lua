return {
    "ggandor/leap.nvim",
    dependencies = {
        "tpope/vim-repeat",
    },
    config = function()
        -- require("leap").create_default_mappings()
        vim.keymap.set({ 'n', 'o' }, 's', '<Plug>(leap-forward)')
        vim.keymap.set({ 'n', 'o' }, 'S', '<Plug>(leap-backward)')
        vim.keymap.set({ 'n', 'o' }, 'gs', '<Plug>(leap-from-window)')
    end
}
