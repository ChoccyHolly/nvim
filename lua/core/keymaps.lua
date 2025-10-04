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
nmap {"<Tab>", "<cmd>BufferLineCycleNext<cr>"}
nmap {"<S-Tab>", "<cmd>BufferLineCyclePrev<cr>"}
nmap {"<leader><Tab>", "<cmd>bdelete<cr>"}
nmap {"<leader><S-Tab>", "<cmd>BufferLineTogglePin<cr>"}

-- Split navigation
-- map {{"n", "v", "i", "t"}, "<C-h>", "<cmd>wincmd h<cr>"}
-- map {{"n", "v", "i", "t"}, "<C-j>", "<cmd>wincmd j<cr>"}
-- map {{"n", "v", "i", "t"}, "<C-k>", "<cmd>wincmd k<cr>"}
-- map {{"n", "v", "i", "t"}, "<C-l>", "<cmd>wincmd l<cr>"}

-- Remove highlighting on escape
nmap {"<esc>", "<cmd>nohlsearch<cr>"}

-- Tab controls indent in visual
vmap {"<Tab>", ">gv"}
vmap {"<S-Tab>", "<gv"}

-- Keep selection when indenting
vmap {">", ">gv"}
vmap {"<", "<gv"}

-- Telescope keymaps
local builtin = require("telescope.builtin")
nmap {"<leader>ff", builtin.find_files}
nmap {"<leader>fg", builtin.live_grep}
nmap {"<leader>fb", builtin.buffers}
nmap {"<leader>fh", builtin.help_tags}

-- Trouble keymaps
nmap {"<leader>xx", "<cmd>Trouble diagnostics toggle<cr>"}
nmap {"<leader>xs", "<cmd>Trouble symbols toggle win.position=bottom<cr>"}
nmap {"<leader>xl", "<cmd>Trouble lsp toggle<cr>"}
nmap {"<leader>xL", "<cmd>Trouble loclist toggle<cr>"}
nmap {"<leader>xt", "<cmd>Trouble todo toggle<cr>"}

-- Open Neo-Tree
nmap {"<leader>e", function() require("edgy").toggle("left") end}
nmap {"<leader>g", "<cmd>Neotree position=right git_status toggle<cr>"}

-- Toggleterm
nmap {"<leader>t", "<cmd>Telescope toggleterm_manager<cr>"}
map {"t", "<C-t>", "<cmd>Telescope toggleterm_manager<cr>"}
map {"t", "<C-CR>", "<cmd>ToggleTerm<cr>"}
map {"t", "<C-BS>", "<cmd>TermExec cmd=\"exit\"<cr>"}

-- Lazy
nmap {"<leader>l", ":Lazy<cr>", {silent = true}}

-- Flash
nmap {"s", function() require("flash").jump() end}

-- Spider
nmap {"w", function() require("spider").motion("w") end}
nmap {"e", function() require("spider").motion("e") end}
nmap {"b", function() require("spider").motion("b") end}
