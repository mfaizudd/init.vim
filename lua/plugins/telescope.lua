return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        pickers = {
            find_files = {
                hidden = false
            },
            file_browser = {
                initial_mode = "normal",
            },
            buffers = {
                mappings = {
                    n = {
                        ['<C-d>'] = require('telescope.actions').delete_buffer
                    }
                }
            }
        },
    }
}
