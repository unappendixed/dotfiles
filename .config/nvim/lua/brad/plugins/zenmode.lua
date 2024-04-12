return {
    "folke/zen-mode.nvim",
    config = function()
        require("zen-mode").setup {
            window = {
                options = {
                    number = true,
                },
                width = 100,
            },
            plugins = {
                options = {
                    enabled = true,
                    laststatus = 3,
                }
            },
            on_open = function(win)
                vim.opt.linebreak = true
                vim.opt.wrap = true
                vim.opt.number = false
                vim.opt.relativenumber = false
                vim.keymap.set("n", "j", "gj")
                vim.keymap.set("n", "k", "gk")
                vim.keymap.set("v", "j", "gj")
                vim.keymap.set("v", "k", "gk")
                vim.opt.colorcolumn = "0"
            end,
            on_close = function(win)
                vim.opt.wrap = false
                vim.opt.linebreak = false
                vim.opt.number = true
                vim.opt.relativenumber = true
                vim.keymap.set("n", "j", "j")
                vim.keymap.set("n", "k", "k")
                vim.keymap.set("v", "j", "j")
                vim.keymap.set("v", "k", "k")
                vim.opt.colorcolumn = "80"
            end
        }
        vim.keymap.set("n", "<leader>z", function()
            require("zen-mode").toggle()
        end)
    end
}
