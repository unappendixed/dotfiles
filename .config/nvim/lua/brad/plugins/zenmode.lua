return {
    "folke/zen-mode.nvim",
    config = function()
        require("zen-mode").setup {
            window = {
                options = {
                    number = true,
                },
            },
            on_open = function(win)
                vim.cmd("set wrap")
                vim.cmd("set linebreak")
                vim.cmd("set nonumber")
                vim.cmd("set norelativenumber")
                vim.keymap.set("n", "j", "gj")
                vim.keymap.set("n", "k", "gk")
                vim.opt.colorcolumn = "0"
            end,
            on_close = function(win)
                vim.cmd("set nowrap")
                vim.cmd("set number")
                vim.cmd("set relativenumber")
                vim.keymap.set("n", "j", "j")
                vim.keymap.set("n", "k", "k")
                vim.opt.colorcolumn = "120"
            end
        }
    end
}
