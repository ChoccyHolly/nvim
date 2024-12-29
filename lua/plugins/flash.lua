-- Flash config
require("flash").setup {
    modes = { char = { jump_labels = true }},
    label = { rainbow = { enabled = true }},
    prompt = { enabled = false },
}

require("flash").toggle()
