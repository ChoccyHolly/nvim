-- Neo-Tree config
require("neo-tree").setup {
    hide_root_node = true,
    default_component_configs = {
        modified = {
            symbol = "",
        },
        git_status = {
            symbols = {
                added = "",
                modified = "",
            },
        },
    },
    filesystem = {
        follow_current_file = {
            enabled = true,
            leave_dirs_open = true,
        },
    },
}
