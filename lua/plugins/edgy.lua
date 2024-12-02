-- Config for edgy
vim.opt.laststatus = 3
vim.opt.splitkeep = "screen"

require("edgy").setup {
    left = {
        {
            ft = "neo-tree",
	    title = "Neo-Tree",
        }
    },
    bottom = {
        {
            ft = "trouble",
            title = "Trouble",
        }
    },
}
