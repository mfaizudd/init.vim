local map = require("config.mapfn")

vim.g.mapleader = " "

-- Send to system clipboard over ssh
map.v("<leader>y", ":OSCYankVisual<cr>", "Yank to system clipboard")

-- My custom keymap
map.n("<leader>ne", vim.cmd.Ex, "Open [N]etrw [E]xplorer")
map.n("<leader>sf", ":Telescope find_files<cr>", "[S]earch [F]iles")
map.n("<leader>sh", ":Telescope find_files hidden=true<cr>", "[S]earch [H]idden Files")
map.n("<leader>sc", ":Telescope commands<cr>", "[S]earch [C]ommands")
map.n("<leader>sb", ":Telescope buffers<cr>", "[S]earch [B]uffers")
map.n("<leader>ss", ":Telescope live_grep<cr>", "[S]earch [S]tring")
map.n("<leader>sk", ":Telescope keymaps<cr>", "[S]earch [K]eymaps")
map.n("<leader>pd", ":Telescope diagnostics<cr>", "[P]roject [D]iagnostics")
map.n("<leader>pt", ":Trouble<cr>", "[P]roject [T]rouble")
map.n("<leader>lg", ":LazyGit<cr>", "[L]azy[G]it")
map.n("<leader>gu", ":Gitui<cr>", "[G]it[U]i")
map.n("<leader>ff", function() vim.lsp.buf.format { async = true } end, "[F]ormat [F]ile")
map.n("<leader>ee", ":NvimTreeToggle<cr>", "[E]xplorer")
map.n("<leader>w", vim.cmd.w, "[W]rite")
map.n("<leader>q", ":bp<bar>sp<bar>bn<bar>bd<cr>", "[Q]uit")
map.n("<leader>h", ":noh<cr>", "No [H]ighlight")
map.n("<leader>tt", ":ToggleTerm<cr>", "[T]oggle [T]erminal")
map.n("<leader>so", ":Telescope lsp_document_symbols<cr>", "[S]ymbols [O]utline")
map.n("<leader>wso", ":Telescope lsp_dynamic_workspace_symbols<cr>", "[W]orkspace [S]ymbols [O]utline")
map.n("<leader>sv", ":source $MYVIMRC<cr>", "[S]ource [V]imrc")
map.n("<leader>slh", ":set laststatus=0<cr>", "[S]tatus[l]ine [H]ide")
map.n("<leader>sls", ":set laststatus=2<cr>", "[S]tatus[l]ine [S]how")
map.n("<leader>sm", ":Mason<cr>", "[S]how [M]ason")
map.v("<leader>vp", "\"_dP", "[V]oid [P]aste")
map.n("<leader>fe", ":Telescope file_browser<cr>", "[F]ile [E]xplorer")
map.n("<leader>bq", ":BufferCloseAllButVisible<cr>", "[B]uffer [Q]uit All but Visible")
map.n("<leader>u", vim.cmd.UndotreeToggle, "[U]ndotree")
map.n("<leader>fto", ":%s/\\(typeof\\|nameof\\)( \\(.\\{-}\\) )/\\1(\\2)<cr>", "[F]ix [T]ype[O]f")

-- Bufferline
map.n("<A-h>", ":BufferPrevious<cr>", "Previous buffer")
map.n("<A-l>", ":BufferNext<cr>", "Next buffer")
map.n("<A-H>", ":BufferMovePrevious<cr>", "Move buffer back")
map.n("<A-L>", ":BufferMoveNext<cr>", "Move buffer forward")
map.n("<A-q>", ":BufferClose<cr>", "Close buffer")
-- map.n("<A-q>", ":bp<bar>sp<bar>bn<bar>bd<cr>", "Close buffer")

-- Line movement
map.n("<A-j>", ":m .+1<cr>==", "Move line up")
map.n("<A-k>", ":m .-2<cr>==", "Move line down")
map.i("<A-j>", "<esc>:m .+1<cr>==gi", "Move line up")
map.i("<A-k>", "<esc>:m .-2<cr>==gi", "Move line down")
map.v("<A-j>", ":m '>+1<cr>gv=gv", "Move line up")
map.v("<A-k>", ":m '<-2<cr>gv=gv", "Move line down")

-- LSP keymaps
map.i("<C-Space>", vim.lsp.buf.hover, "LSP: Hover")
map.n("<leader>ca", vim.lsp.buf.code_action, "LSP: [C]ode [A]ction")
map.n("gD", vim.lsp.buf.declaration, "LSP: [G]o to [D]eclaration")
map.n("gd", vim.lsp.buf.definition, "LSP: [G]o to [D]efinition")
map.n("K", vim.lsp.buf.hover, "LSP: [K]eyword")
map.n("gi", vim.lsp.buf.implementation, "LSP: [G]o to [I]mplementation")
map.n("<C-k>", vim.lsp.buf.signature_help, "LSP: [C]ompletion [K]eyword")

-- Copilot keymaps
vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false,
    desc = "Accepet Copilot suggestion",
})
vim.g.copilot_no_tab_map = true
-- map.n('<leader>wa', vim.lsp.buf.add_workspace_folder, "LSP: orkspace [A]dd Folder")
-- map.n('<leader>wr', vim.lsp.buf.remove_workspace_folder, "LSP: [W]orkspace [R]emove Folder")
-- map.n('<leader>wl', function()
--     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
-- end, "LSP: [W]orkspace [L]ist Folders")
map.n("<leader>D", vim.lsp.buf.type_definition, "LSP: [D]efinition")
map.n("<leader>sr", vim.lsp.buf.rename, "LSP: [S]ymbol [R]ename")
map.n("gr", vim.lsp.buf.references, "LSP: [G]o to [R]eferences")
map.n("<leader>se", vim.diagnostic.open_float, "LSP: [S]how [E]rrors")

local vm_maps                 = {}
vm_maps["Find Under"]         = "<A-d>"
vm_maps["Find Subword Under"] = "<A-d>"
vim.g.VM_maps                 = vm_maps
