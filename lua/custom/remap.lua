vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>pf", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>pd", ":Telescope diagnostics<cr>")
vim.keymap.set("n", "<leader>pt", ":Trouble<cr>")
vim.keymap.set("n", "<leader>pg", ":LazyGit<cr>")
vim.keymap.set("n", "<leader>ff", vim.lsp.buf.formatting)
vim.keymap.set("n", "<leader>e", ":NERDTree<cr>")
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", ":q<cr>")
vim.keymap.set("n", "<leader>h", ":noh<cr>")
vim.keymap.set("n", "<A-j>", ":m .+1<cr>==")
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==")
vim.keymap.set("i", "<A-j>", "<esc>:m .+1<cr>==gi")
vim.keymap.set("i", "<A-k>", "<esc>:m .-2<cr>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv")

local vm_maps                 = {}
vm_maps["Find Under"]         = "<A-d>"
vm_maps["Find Subword Under"] = "<A-d>"
vim.g.VM_maps                 = vm_maps
