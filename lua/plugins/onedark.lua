return {
    'navarasu/onedark.nvim',
    config = function()
        require('onedark').setup {
            style = "darker",
        }
    code_style = {
        comments = 'none',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none'
    },


    require('onedark').load()
    end,
}
