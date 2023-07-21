vim.opt.nu = true
vim.opt.wrap = false
--vim.opt.autochdr = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.showtabline = 0
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

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


vim.opt.colorcolumn = "120"

vim.opt.clipboard = vim.opt.clipboard + 'unnamedplus'

vim.g.mapleader = " "
vim.g.netrw_browsex_viewer = "firefox"

vim.g.zig_fmt_autosave = 0

-- Settings for CtrlSpace
vim.cmd("set nocompatible")
vim.cmd("set hidden")

