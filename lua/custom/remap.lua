local nmap = function(keys, func, desc)
    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
end
local imap = function(keys, func, desc)
    vim.keymap.set('i', keys, func, { buffer = bufnr, desc = desc })
end
local vmap = function(keys, func, desc)
    vim.keymap.set('v', keys, func, { buffer = bufnr, desc = desc })
end

vim.g.mapleader = " "

-- Send to system clipboard over ssh
vmap("<leader>y", ":OSCYank<cr>", "Yank to system clipboard")

-- My custom keymap
nmap("<leader>ex", vim.cmd.Ex, "Open net rw")
nmap("<leader>sf", ":Telescope find_files<cr>", "[S]earch [F]iles")
nmap("<leader>sh", ":Telescope find_files hidden=true<cr>", "[S]earch [H]idden Files")
nmap("<leader>sc", ":Telescope commands<cr>", "[S]earch [C]ommands")
nmap("<leader>sb", ":Telescope buffers<cr>", "[S]earch [B]uffers")
nmap("<leader>ss", ":Telescope live_grep<cr>", "[S]earch [S]tring")
nmap("<leader>sk", ":Telescope keymaps<cr>", "[S]earch [K]eymaps")
nmap("<leader>pd", ":Telescope diagnostics<cr>", "[P]roject [D]iagnostics")
nmap("<leader>pt", ":Trouble<cr>", "[P]roject [T]rouble")
nmap("<leader>lg", ":LazyGit<cr>", "[L]azy[G]it")
nmap("<leader>ff", function() vim.lsp.buf.format { async = true } end, "[F]ormat [F]ile")
nmap("<leader>ee", ":Neotree<cr>", "[E]xplorer")
nmap("<leader>w", vim.cmd.w, "[W]rite")
nmap("<leader>q", ":q<cr>", "[Q]uit")
nmap("<leader>h", ":noh<cr>", "No [H]ighlight")
nmap("<leader>tt", ":ToggleTerm<cr>", "[T]oggle [T]erminal")
nmap("<leader>so", ":SymbolsOutline<cr>", "[S]ymbols [O]utline")
nmap("<leader>sv", ":source $MYVIMRC<cr>", "[S]ource [V]imrc")
nmap("<leader>slh", ":set laststatus=0<cr>", "[S]tatus[l]ine [H]ide")
nmap("<leader>sls", ":set laststatus=2<cr>", "[S]tatus[l]ine [S]how")
nmap("<leader>sm", ":Mason<cr>", "[S]how [M]ason")
vmap("<leader>vp", "\"_dP", "[V]oid [P]aste")
nmap("<leader>fb", ":Telescope file_browser path=%:p:h<cr>", "[F]ile [B]rowser")

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
nmap('gD', vim.lsp.buf.declaration, "LSP: [G]o to [D]eclaration")
nmap('gd', vim.lsp.buf.definition, "LSP: [G]o to [D]efinition")
nmap('K', vim.lsp.buf.hover, "LSP: [K]eyword")
nmap('gi', vim.lsp.buf.implementation, "LSP: [G]o to [I]mplementation")
nmap('<C-k>', vim.lsp.buf.signature_help, "LSP: [C]ompletion [K]eyword")
-- nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, "LSP: [W]orkspace [A]dd Folder")
-- nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, "LSP: [W]orkspace [R]emove Folder")
-- nmap('<leader>wl', function()
--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, "LSP: [W]orkspace [L]ist Folders")
nmap('<leader>D', vim.lsp.buf.type_definition, "LSP: [D]efinition")
nmap("<leader>sr", vim.lsp.buf.rename, "LSP: [S]ymbol [R]ename")
nmap('gr', vim.lsp.buf.references, "LSP: [G]o to [R]eferences")
nmap('<leader>se', vim.diagnostic.open_float, "LSP: [S]how [E]rrors")

local vm_maps                 = {}
vm_maps["Find Under"]         = "<A-d>"
vm_maps["Find Subword Under"] = "<A-d>"
vim.g.VM_maps                 = vm_maps
