local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Define lider como barra de espaço
vim.g.mapleader = ' '

-- Explorador de Arquivos (Neotree)
map('n', '<Leader>n', ':Neotree toggle<CR>', opts) -- Abrir o Neotree (Space + N)

-- Mapeamentos de Salvar/Sair
map('n', 'q', ':q!<CR>', opts) -- Saída Forçada (Q)
map('n', '<C-q>', ':wq<CR>', opts) -- Salvar e Sair (Ctrl + Q)
map('n', '<C-s>', ':write<CR>', opts) -- Salvar Arquivo (Ctrl + S)

-- Telescope (Para fazer e instalar o plugin)

-- Terminal (ToggleTerm)
map('n', '<C-t>', ':ToggleTerm<CR>', opts)

-- Desfazer no Modo Normal
map('n', '<C-z>', 'u', opts)
