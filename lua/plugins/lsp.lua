return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require("lspconfig")
            lspconfig.pyright.setup({})    -- LSP para Python
            lspconfig.clangd.setup({})     -- LSP para C/C++
            lspconfig.ts_ls.setup({})      -- LSP para JavaScript/TypeScript
        end,
}
