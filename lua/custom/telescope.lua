local telescope = require('telescope')
telescope.setup {
    pickers = {
        find_files = {
            hidden = false
        },
        file_browser = {
            initial_mode = "normal",
        }
    }
}
require("telescope").load_extension "file_browser"
