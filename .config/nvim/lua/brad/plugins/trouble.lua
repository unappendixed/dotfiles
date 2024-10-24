return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local trouble = require("trouble")
        trouble.setup()
        vim.keymap.set("n", "<leader>vl", function()
            trouble.toggle({mode = "diagnostics", filter = {buf = 0}})
        end)
        vim.keymap.set("n", "<leader>vL", function()
            trouble.toggle({mode = "diagnostics"})
        end)
    end,
    --use {
    --    "folke/trouble.nvim",
    --    requires = "nvim-tree/nvim-web-devicons",
    --    config = function()
    --        require("trouble").setup {
    --        }
    --    end
    --}
}
