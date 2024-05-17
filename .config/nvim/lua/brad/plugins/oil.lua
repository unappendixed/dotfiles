return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons", },
    config = function()
        require("oil").setup({
            default_file_explorer = true,
        })

        vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>")
        vim.keymap.set("n", "-", "<CMD>Oil<CR>")
    end,
}
