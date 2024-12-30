-- ToggleTerm config
vim.api.nvim_create_autocmd(
    {"WinEnter", "BufEnter"},
    {
        pattern = {"*#toggleterm#*"},
        callback = function()
            vim.cmd("startinsert")
        end,
    }
)

require("toggleterm").setup {
    persist_mode = false,
    direction = "horizontal",
}
