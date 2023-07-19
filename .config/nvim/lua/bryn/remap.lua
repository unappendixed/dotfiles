vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "<C-x>", "<C-\\><C-n>", {silent = true})
vim.keymap.set("n", "<leader>bd", function() vim.cmd("%bd!|e#") end)
vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set('n', "<leader>et", vim.cmd.Lexplore)
vim.keymap.set("n", "<leader>fp", "<C-^>")

vim.keymap.set("n", "<leader>cd", function()
    vim.cmd("cd %:p:h")
end)

-- Insert semicolon


vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-d", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--CtrlSpace

--Greatest remap ever apparently
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

-- apparently uppercase q is bad
vim.keymap.set("n", "Q", "<nop")

-- format all
vim.keymap.set("n", "<C-M-l>", function() vim.lsp.buf.format() end)

-- magic replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
