vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "<C-x>", "<C-\\><C-n>", { silent = true })
vim.keymap.set("n", "<leader>w", "<C-w>")

-- Split navigation
vim.keymap.set("n", "<M-h>", function() vim.cmd("wincmd h") end)
vim.keymap.set("n", "<M-j>", function() vim.cmd("wincmd j") end)
vim.keymap.set("n", "<M-k>", function() vim.cmd("wincmd k") end)
vim.keymap.set("n", "<M-l>", function() vim.cmd("wincmd l") end)

--Split resizing
vim.keymap.set("n", "<M-,>", "<C-w><")
vim.keymap.set("n", "<M-.>", "<C-w>>")
vim.keymap.set("n", "<M-->", "<C-w>-")
vim.keymap.set("n", "<M-=>", "<C-w>+")

vim.keymap.set("i", "<C-c>", "<Esc>")
-- disabled the below remap because it's annoying when keys lag behind during input.
-- vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set('n', "<leader>et", vim.cmd.Lexplore)
vim.keymap.set("n", "<leader>fp", "<C-^>")


vim.keymap.set("n", "<leader>cd", function()
    vim.cmd("cd %:p:h")
end)

vim.g.togglelist = false

vim.keymap.set("n", "<leader>vi", function()
    if vim.g.togglelist == false then
        vim.cmd("set list")
        vim.g.togglelist = true
    else
        vim.cmd("set list!")
        vim.g.togglelist = false
    end
end)

vim.keymap.set("i", "", "<C-w>")


vim.keymap.set("v", "K", ":m '<-2<cr>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-d", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--Aerial code outline
vim.keymap.set("n", "<leader>vo", "<cmd>AerialToggle!<CR>")

--Greatest remap ever apparently
vim.keymap.set("x", "<leader>p", "\"_dP")

-- next greatest remap ever
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>Y", "\"+Y")

-- apparently uppercase q is bad
vim.keymap.set("n", "Q", "<nop>")

-- format all
vim.keymap.set("n", "<C-M-l>", function() vim.lsp.buf.format() end)

-- magic replace
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- command mode
vim.keymap.set("c", "<C-a>", "<Home>")
vim.keymap.set("c", "<C-e>", "<End>")
vim.keymap.set("c", "<M-b>", "<C-Left>")
vim.keymap.set("c", "<M-f>", "<C-Right>")
vim.keymap.set("c", "<C-b>", "<Left>")
vim.keymap.set("c", "<C-f>", "<Right>")
vim.keymap.set("c", "<C-d>", "<Del>")
vim.keymap.set("c", "<M-d>", "<C-Right><C-w>")
vim.keymap.set("c", "", "<C-w>")

vim.keymap.set("n", "<leader>ff", function()
    local cursorPos = vim.api.nvim_win_get_cursor(0)
    vim.opt.textwidth = 80
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.api.nvim_feedkeys("gggqGgg", "", true)
    vim.api.nvim_win_set_cursor(0, cursorPos)
end)
