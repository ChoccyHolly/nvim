-- Plugin configs

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Install plugins
require("lazy").setup({
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("plugins/neo-tree")
        end,
    },
    {
        "ryanmsnyder/toggleterm-manager.nvim",
        dependencies = {
            "akinsho/nvim-toggleterm.lua",
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
        },
        config = true,
    },
    {
        "folke/tokyonight.nvim",
        opts = {
            style = "night",
            transparent = true,
            terminal_colors = true,
        },
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = { "hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp" },
        config = function()
            require("plugins/cmp")
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("plugins/lualine")
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("plugins/telescope")
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("plugins/toggleterm")
        end,
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins/flash")
        end,
    },
    {
        "folke/edgy.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins/edgy")
        end,
    },
    {
        "romgrk/barbar.nvim",
        dependencies = { "lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons" },
        init = function() vim.g.barbar_auto_setup = false end,
        opts = { separator_at_end = false },
    },
    {
        "folke/noice.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
        event = "VeryLazy",
        opts = {},
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("plugins/treesitter")
        end,
    },
    {
        "petertriho/nvim-scrollbar",
        config = function()
            require("plugins/scrollbar")
        end,
    },
    {
        "luukvbaal/statuscol.nvim",
        config = function()
            require("plugins/statuscol")
        end,
    },
    {
        "goolord/alpha-nvim",
        config = function()
            require("plugins/alpha")
        end,
    },
    {
        "kylechui/nvim-surround",
        version = "*",
        event = "VeryLazy",
        opts = {},
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },
    {
        "abecodes/tabout.nvim",
        lazy = false,
        opts = {},
    },

    { "folke/trouble.nvim", opts = {}, cmd = "Trouble" },
    { "chrisgrieser/nvim-spider", lazy = true },
    { "lewis6991/gitsigns.nvim", opts = {} },
    { "mrcjkb/rustaceanvim", lazy = false },
    { "numToStr/Comment.nvim", opts = {} },

    "nvim-telescope/telescope-fzf-native.nvim",
    "neovim/nvim-lspconfig",
    "tpope/vim-fugitive",
})
