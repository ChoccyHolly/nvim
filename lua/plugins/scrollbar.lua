-- Scrollbar config
require("scrollbar").setup {
    handle = { hide_if_all_visible = false, highlight = "CursorLine" },
    handlers = { gitsigns = true },
    excluded_filetypes = { "neo-tree", "trouble", "TelescopePrompt", "alpha" },
}
