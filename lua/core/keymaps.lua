-- Keymap configs
local map = function(tbl)
    vim.keymap.set(tbl[1], tbl[2], tbl[3], tbl[4])
end

local imap = function(tbl)
    vim.keymap.set("i", tbl[1], tbl[2], tbl[3])
end

local nmap = function(tbl)
    vim.keymap.set("n", tbl[1], tbl[2], tbl[3])
end

local vmap = function(tbl)
    vim.keymap.set("v", tbl[1], tbl[2], tbl[3])
end

-- Set leader
vim.g.mapleader = ","

-- Buffer control
nmap {"<Tab>", ":BufferNext<cr>", {silent = true}}
nmap {"<S-Tab>", ":BufferPrevious<cr>", {silent = true}}
nmap {"<leader><Tab>", ":BufferClose<cr>", {silent = true}}
nmap {"<leader><S-Tab>", ":BufferPin<cr>", {silent = true}}

-- Split navigation
nmap {"<C-h>", ":wincmd h<CR>", {silent = true}}
nmap {"<C-j>", ":wincmd j<CR>", {silent = true}}
nmap {"<C-k>", ":wincmd k<CR>", {silent = true}}
nmap {"<C-l>", ":wincmd l<CR>", {silent = true}}

-- Remove highlighting on escape
nmap {"<esc>", ":nohlsearch<cr>", {silent = true}}

-- Tab controls indent in visual
vmap {"<Tab>", ">gv"}
vmap {"<S-Tab>", "<gv"}

-- Keep selection when indenting
vmap {">", ">gv"}
vmap {"<", "<gv"}

-- Telescope keymaps
local builtin = require('telescope.builtin')
nmap {"<leader>ff", builtin.find_files}
nmap {"<leader>fg", builtin.live_grep}
nmap {"<leader>fb", builtin.buffers}
nmap {"<leader>fh", builtin.help_tags}

-- Trouble keymaps
nmap {"<leader>xx", ":Trouble diagnostics toggle<cr>", {silent = true}}
nmap {"<leader>cs", ":Trouble symbols toggle win.position=bottom<cr>", {silent = true}}
nmap {"<leader>cl", ":Trouble lsp toggle<cr>", {silent = true}}
nmap {"<leader>xL", ":Trouble loclist toggle<cr>", {silent = true}}
nmap {"<leader>xQ", ":Trouble qflistoggle<cr>", {silent = true}}
