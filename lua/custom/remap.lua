local nmap = function(keys, func, desc)
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end
local imap = function(keys, func, desc)
    vim.keymap.set('i', keys, func, { buffer = bufnr, desc = desc })
end
local vmap = function(keys, func, desc)
    vim.keymap.set('v', keys, func, { buffer = bufnr, desc = desc })
end

-- My custom keymap
vim.g.mapleader = " "
nmap("<leader>ex", vim.cmd.Ex, "Open net rw")
nmap("<leader>sf", ":Telescope find_files<cr>", "[S]earch [F]iles")
nmap("<leader>sc", ":Telescope commands<cr>", "[S]earch [C]ommands")
nmap("<leader>sb", ":Telescope buffers<cr>", "[S]earch [B]uffers")
nmap("<leader>ss", ":Telescope live_grep<cr>", "[S]earch [S]tring")
nmap("<leader>sk", ":Telescope keymaps<cr>", "[S]earch [K]eymaps")
nmap("<leader>pd", ":Telescope diagnostics<cr>", "[P]roject [D]iagnostics")
nmap("<leader>pt", ":Trouble<cr>", "[P]roject [T]rouble")
nmap("<leader>lg", ":LazyGit<cr>", "[L]azy[G]it")
nmap("<leader>sr", vim.lsp.buf.rename, "[S]ymbol [R]ename")
nmap("<leader>ff", function() vim.lsp.buf.format { async = true } end, "[F]ormat [F]ile")
nmap("<leader>ee", ":NERDTree<cr>", "[E]xplorer")
nmap("<leader>w", vim.cmd.w, "[W]rite")
nmap("<leader>q", ":q<cr>", "[Q]uit")
nmap("<leader>h", ":noh<cr>", "No [H]ighlight")

-- Line movement
nmap("<A-j>", ":m .+1<cr>==", "Move line up")
nmap("<A-k>", ":m .-2<cr>==", "Move line down")
imap("<A-j>", "<esc>:m .+1<cr>==gi", "Move line up")
imap("<A-k>", "<esc>:m .-2<cr>==gi", "Move line down")
vmap("<A-j>", ":m '>+1<cr>gv=gv", "Move line up")
vmap("<A-k>", ":m '<-2<cr>gv=gv", "Move line down")

-- LSP keymaps
imap("<C-Space>", vim.lsp.buf.hover, "LSP: Hover")
nmap("<leader>ca", vim.lsp.buf.code_action, "LSP: [C]ode [A]ction")

local vm_maps                 = {}
vm_maps["Find Under"]         = "<A-d>"
vm_maps["Find Subword Under"] = "<A-d>"
vim.g.VM_maps                 = vm_maps
