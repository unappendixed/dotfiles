return {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
        vim.keymap.set('n', "", "gcc")
    end
}
