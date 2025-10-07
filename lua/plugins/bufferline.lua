-- Bufferline config
local tokyonightcolors = require("tokyonight.colors").setup {style = "night"}

require("bufferline").setup {
    options = {
        enforce_regular_tabs = true,
        buffer_close_icon = "",
        separator_style = {"", ""},
        indicator = { style = "icon", icon = "▍" },
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
        fill = { bg = tokyonightcolors.bg },
        background = { bg = tokyonightcolors.bg_dark },
        buffer_selected = { bg = tokyonightcolors.bg_dark },
        close_button = { bg = tokyonightcolors.bg_dark },
        close_button_selected = { bg = tokyonightcolors.bg_dark },
        modified = { bg = tokyonightcolors.bg_dark },
        modified_selected = { bg = tokyonightcolors.bg_dark },
        error_selected = { fg = tokyonightcolors.fg, bg = tokyonightcolors.bg_dark },
        error_diagnostic_selected = { fg = tokyonightcolors.red, bg = tokyonightcolors.bg_dark },
        warning_selected = { fg = tokyonightcolors.fg, bg = tokyonightcolors.bg_dark },
        warning_diagnostic_selected = { fg = tokyonightcolors.yellow, bg = tokyonightcolors.bg_dark },
        hint_selected = { fg = tokyonightcolors.fg, bg = tokyonightcolors.bg_dark },
        hint_diagnostic_selected = { fg = tokyonightcolors.teal, bg = tokyonightcolors.bg_dark },
        info_selected = { fg = tokyonightcolors.fg, bg = tokyonightcolors.bg_dark },
        info_diagnostic_selected = { fg = tokyonightcolors.cyan, bg = tokyonightcolors.bg_dark },
    },
}
