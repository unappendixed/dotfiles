vim.keymap.set("n", "<leader>vl", function() vim.cmd("TroubleToggle document_diagnostics") end)
vim.keymap.set("n", "<leader>vL", function() vim.cmd("TroubleToggle workspace_diagnostics") end)
