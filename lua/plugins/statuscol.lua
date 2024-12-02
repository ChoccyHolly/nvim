-- Statuscol config
local builtin = require("statuscol.builtin")

require("statuscol").setup {
    relculright = true,
    segments = {
        {
            text = {builtin.foldfunc},
            click = "v:lua.ScFa",
        },
        {
            sign = { namespace = { "gitsigns" }, maxwidth = 1, auto = true },
            click = "v:lua.ScSa"
        },
        {
            sign = { namespace = { "diagnostic/signs" }, maxwidth = 2, auto = true },
            click = "v:lua.ScSa"
        },
        {
            text = { builtin.lnumfunc, " " },
            click = "v:lua.ScLa",
        },
    },
}
