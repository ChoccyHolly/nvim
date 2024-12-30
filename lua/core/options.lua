-- General configs
local g = vim.g
local opt = vim.opt

-- General
opt.mouse = ""
opt.clipboard = "unnamedplus"
opt.swapfile = false

-- Visual
vim.cmd [[colorscheme tokyonight]]
vim.cmd [[colorscheme tokyonight-night]]
vim.cmd [[syntax enable]]
vim.termguicolors = true
opt.number = true
opt.relativenumber = true
opt.showmatch = true
opt.wrap = false
opt.list = true
opt.listchars:append "eol:↴"
opt.cursorline = true

-- Splits
opt.splitright = true
opt.splitbelow = true

-- Indents and Tabs
vim.cmd [[filetype plugin indent on]]
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.shiftround = true
opt.smartindent = true

-- Autocomplete
opt.completeopt = {"menu", "menuone", "noselect"}
