return {
    "hedyhli/outline.nvim",
    config = function()
        require("outline").setup({
            outline_window = {
                position = "left",
            },
        })
        vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>")
    end
}
