local telescope = require('telescope')
telescope.setup {
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
    }
}
telescope.load_extension "file_browser"
