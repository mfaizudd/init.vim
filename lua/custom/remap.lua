vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pf", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>pd", ":Telescope diagnostics<cr>")
vim.keymap.set("n", "<leader>pt", ":Trouble<cr>")
vim.keymap.set("n", "<leader>pg", ":LazyGit<cr>")
vim.keymap.set("n", "<leader>e", ":NERDTree<cr>")
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>h", ":noh<cr>")

