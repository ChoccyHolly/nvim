-- Lualine config
local tokyonightcolors = require("tokyonight.colors").setup {style = "night"}

require("lualine").setup {
    options = {
        icons_enabled = true,
        theme = "tokyonight",
        component_separators = "|",
        section_separators = { left = "", right = ""},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 10,
            tabline = 100,
            winbar = 100,
        }
    },
    sections = {
        lualine_a = {
            {
                "mode",
                separator = {left = ""},
                right_padding = 2,
                color = {gui = "bold"},
            },
        },
        lualine_b = {
            {
                "filename",
                symbols = {
                    modified = "",
                    readonly = "󰷊",
                    unnamed = "Unnamed",
                    newfile = "󰝒",
                },
            },
            {"branch", component_separators = {right = ""}},
            {"diff", padding = {left = 0}},
        },
        lualine_c = {
            {
                "diagnostics",
                sources = {"nvim_diagnostic"},
                symbols = {error = " ", warn = " ", info = " ", hint = " "},
                diagnostics_color = {
                    color_error = {fg = tokyonightcolors.red},
                    color_warn = {fg = tokyonightcolors.yellow},
                    color_info = {fg = tokyonightcolors.cyan},
                },
            },
        },
        lualine_x = {},
        lualine_y = {"filetype", "progress"},
        lualine_z = {
            {
                "datetime",
                style="%I:%M %p",
                separator = {right = ""},
                left_padding = 2,
                color = {gui = "bold"},
            },
        },
    },
    inactive_sections = {
        lualine_a = {"filename"},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {"datetime"}
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
