return {
    'neovim/nvim-lspconfig',
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            -- ensure_installed = { "jdtls" },
        })

        local lspconfig = require("lspconfig")
            lspconfig.pyright.setup({})                   -- LSP para Python
            lspconfig.clangd.setup({})                    -- LSP para C/C++
            lspconfig.ts_ls.setup({})                     -- LSP para JavaScript/TypeScript
        end,
}
