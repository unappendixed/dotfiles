return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("trouble").setup()
        vim.keymap.set("n", "<leader>vl", function() vim.cmd("TroubleToggle document_diagnostics") end)
        vim.keymap.set("n", "<leader>vL", function() vim.cmd("TroubleToggle workspace_diagnostics") end)
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
