return { "nvim-treesitter/nvim-treesitter",
         build = ":TSUpdate",
         config = function()
             require'nvim-treesitter.configs'.setup {
                 ensure_installed = {"lua", "c", "cpp", "rust", "python", "markdown", "java", "javascript", "typescript", "json"},
                 sync_install = true, 
                 highlight = {
                     enable = true, 
                     disable = {"markdown", "bash"},
                     additional_vim_regex_highlighting = false,
                 },
             }
        end,
}
