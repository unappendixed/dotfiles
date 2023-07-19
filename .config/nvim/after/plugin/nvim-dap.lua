local dap = require('dap')

require('dap.ext.vscode').load_launchjs()


vim.keymap.set("n", "<leader>db", function()
    dap.toggle_breakpoint()
end)

vim.keymap.set("n", "<F5>", function()
    dap.continue()
end)

vim.keymap.set("n", "<F7>", function()
    dap.step_into()
end)

vim.keymap.set("n", "<F6>", function()
    dap.step_over()
end)

vim.keymap.set("n", "<leader>dd", function()
    dap.continue()
end)

vim.keymap.set("n", "<leader>dr", function()
    dap.repl_open()
end)
