-- Config for edgy
vim.opt.laststatus = 3
vim.opt.splitkeep = "screen"

require("edgy").setup {
    exit_when_last = true,
    left = {
        {
            ft = "neo-tree",
            title = "Neo-Tree",
            size = { height = 0.55 },
            pinned = true,
            open = "Neotree position=left filesystem",
            filter = function(buf)
                return vim.b[buf].neo_tree_source == "filesystem"
            end,
        },
        {
            ft = "neo-tree",
            title = "Git Status",
            size = { height = 0.45 },
            filter = function(buf)
                return vim.b[buf].neo_tree_source == "git_status"
            end,
        },
    },
    right = {
        {
            ft = "toggleterm",
            title = "Terminal",
            size = { width = 0.4 },
        },
    },
    bottom = {
        {
            ft = "trouble",
            title = "Trouble",
        },
    },
}
