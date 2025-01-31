return {
  -- Plugin para integrar o LSP ao nvim-cmp
  {
    "hrsh7th/cmp-nvim-lsp"
  },
  -- Plugin para o LuaSnip
  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  -- Plugin para nvim-cmp
  {
    "hrsh7th/nvim-cmp",
    version = false,
    config = function()
      local cmp = require("cmp")
      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },  -- Fonte para LSP
          { name = "luasnip" },   -- Fonte para snippets
          { name = "path" },      -- Fonte para caminhos de arquivos
        }, {
          { name = "buffer" },    -- Fonte para buffer
        }),
      })
    end,
  },
  -- Plugins para as fontes buffer e path
  {
    "hrsh7th/cmp-buffer",  -- Fonte para buffer
  },
  {
    "hrsh7th/cmp-path",    -- Fonte para caminhos
  }
}

