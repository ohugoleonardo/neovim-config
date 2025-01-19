vim.cmd[[
  autocmd CursorHold,CursorHoldI * silent! lua vim.lsp.buf.hover()
]]

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
  max_width = math.floor(vim.o.columns * 0.5),  -- Largura: metade do tamanho da tela
  max_height = math.floor(vim.o.lines * 0.3),  -- Altura: 30% da tela
})
