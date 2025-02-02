-- Treesitter config
require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "c",
        "cpp",
        "lua",
        "python",
        "rust",
        "vim",
        "vimdoc",
        "query",
    },
    sync_install = false,
    auto_install = true,
    highlight = {enable = true},
}
