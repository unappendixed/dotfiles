return {
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", },
        config = function()
            require("oil").setup({
                default_file_explorer = true,
            })

            vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>")
            vim.keymap.set("n", "-", "<CMD>Oil<CR>")
            vim.keymap.set("n", "cd", function() require("oil.actions").cd.callback() end)
            vim.keymap.set("n", "<leader>ph", function()
                local bufname = vim.api.nvim_buf_get_name(0)
                if string.find(bufname, "oil://") ~= nil then
                    require("oil").toggle_hidden()
                end
            end)
        end,

    },
    { -- need this since `gx` command to open urls is a netrw feature
        "chrishrb/gx.nvim",
        dependencies = {"nvim-lua/plenary.nvim"},
        config = function()
            require("gx").setup({
                open_browser_app = "xdg-open",
                open_browser_args = {},
                handlers = {
                    plugin = true,
                    github = true,
                    brewfile = true,
                    package_json = true,
                    search = true,
                    go = true,
                },
                handler_options = {
                    search_engine = "duckduckgo",
                    select_for_search = false,
                }
            })

            vim.keymap.set("n", "gx", "<cmd>Browse<cr>")
        end

    }
}
