-- Lsp config

-- Server setups
local lspconfig = require("lspconfig")
lspconfig.clangd.setup {}
lspconfig.pyright.setup {}

-- Inlay hints
vim.lsp.inlay_hint.enable()
