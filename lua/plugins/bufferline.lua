-- Bufferline config
local tokyonightcolors = require("tokyonight.colors").setup {style = "night"}

require("bufferline").setup {
    options = {
        enforce_regular_tabs = true,
        buffer_close_icon = "",
        separator_style = "slant",
        indicator = { style = "underline" },
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " " or (e == "warning" and " " or (e == "hint" and " " or " "))
                s = s .. sym
            end
            return s
        end,
    },

    highlights = {
        fill = { bg = tokyonightcolors.bg_dark },
        separator = { fg = tokyonightcolors.bg_dark },
        separator_selected = { fg = tokyonightcolors.bg_dark },
        separator_visible = { fg = tokyonightcolors.bg_dark },
        error_selected = { fg = tokyonightcolors.fg },
        error_diagnostic_selected = { fg = tokyonightcolors.red },
        warning_selected = { fg = tokyonightcolors.fg },
        warning_diagnostic_selected = { fg = tokyonightcolors.yellow },
        hint_selected = { fg = tokyonightcolors.fg },
        hint_diagnostic_selected = { fg = tokyonightcolors.teal },
        info_selected = { fg = tokyonightcolors.fg },
        info_diagnostic_selected = { fg = tokyonightcolors.cyan },
    },
}
