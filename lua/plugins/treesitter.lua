return { "nvim-treesitter/nvim-treesitter",
         build = ":TSUpdate",
         config = function()
             require'nvim-treesitter.configs'.setup {
                 ensure_installed = {"lua", "c", "cpp", "rust", "python", "markdown", "java"},
                 sync_install = true, 
                 ignore_install = { "javascript" },
                 highlight = {
                     enable = true, 
                     disable = {"markdown", "bash"},
                     additional_vim_regex_highlighting = false,
                 },
             }
        end,
}
