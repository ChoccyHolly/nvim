-- Alpha config
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local telescope = require("telescope.builtin")

dashboard.section.buttons.val = {
    dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "󰈞  Find file", telescope.find_files),
    dashboard.button("g", "󰈬  Find word", telescope.live_grep),
    dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
}

alpha.setup(dashboard.config)
