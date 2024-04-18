vim.opt.nu = true

vim.opt.wrap = false
--vim.opt.autochdr = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.showtabline = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.breakat = " ^I!@*-+;:/?" -- remove ., from breakat list for better wrapping

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
--vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.cmd("set listchars=trail:•,multispace:•,eol:¶")

vim.opt.colorcolumn = "80"

vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'

vim.opt.foldmethod = "indent"
vim.opt.foldlevelstart = 99

-- Uncomment and set number of columns to show fold regions
-- vim.opt.foldcolumn = "4"

vim.g.mapleader = " "
vim.g.netrw_browsex_viewer = "firefox"

-- open netrw as tree by default
-- vim.g.netrw_liststyle=3

vim.g.zig_fmt_autosave = 0

-- Settings for CtrlSpace
vim.cmd("set nocompatible")
vim.cmd("set hidden")

-- Diagnostic icons
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
