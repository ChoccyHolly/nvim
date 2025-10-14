-- Noice config
require("noice").setup({
    lsp = {
        signature = { opts = { size = { max_width = 50 } } },
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
        },
    },

    presets = {
        long_message_to_split = true,
        lsp_doc_border = true,
    },
})
