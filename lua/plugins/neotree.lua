return {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- Ícones
            "MunifTanjim/nui.nvim",
        },
        config = function()
            require("neo-tree").setup({
                close_if_last_window = true, -- Fecha se for a última janela aberta
                popup_border_style = "rounded",
                enable_git_status = true,   -- Mostra status do Git
                enable_diagnostics = true, -- Mostra erros/warnings
                filesystem = {
                    follow_current_file = {
                        enabled = true,
                    },
                    -- Destaca o arquivo aberto
                    hijack_netrw_behavior = "open_default", -- Substitui netrw
                },
            })
        end,
}
