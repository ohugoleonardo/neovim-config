return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.pyright.setup{}
        lspconfig.clangd.setup{}
        lspconfig.rust_analyzer.setup{}
    end,
}
