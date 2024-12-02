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
        "folke/tokyonight.nvim",
        config = function()
            require("plugins/tokyonight")
        end,
    },

    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("plugins/treesitter")
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
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        ---@module "ibl"
        ---@type ibl.config
        opts = {},
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },

    {
        "lewis6991/gitsigns.nvim",
        opts = {},
    },

    {
        "romgrk/barbar.nvim",
        dependencies = { "lewis6991/gitsigns.nvim", "nvim-tree/nvim-web-devicons" },
        init = function() vim.g.barbar_auto_setup = false end,
        config = function()
            require("plugins/barbar")
        end,
    },

    {
        "neovim/nvim-lspconfig",
    },

    {
        "mrcjkb/rustaceanvim",
        lazy = false,
    },

    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        build = "make install_jsregexp"
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {"hrsh7th/cmp-buffer", "hrsh7th/cmp-nvim-lsp"},
        config = function()
            require("plugins/cmp")
        end,
    },

    {
        "numToStr/Comment.nvim",
        opts = {},
    },

    {
        "folke/noice.nvim",
        event = "VeryLazy",
        opts = {},
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        },
    },

    {
        "folke/trouble.nvim",
        opts = {},
        cmd = "Trouble",
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("plugins/telescope")
        end,
    },

    {
        "nvim-telescope/telescope-fzf-native.nvim",
    },

    {
        "tpope/vim-fugitive",
    },

    {
        "folke/edgy.nvim",
        event = "VeryLazy",
        config = function()
            require("plugins/edgy")
        end,
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
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
})
