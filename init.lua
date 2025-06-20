vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.hlsearch=true
vim.opt.autoindent=true
vim.opt.wildmode="longest,list"
vim.opt.tabstop=4
vim.opt.expandtab=true
vim.opt.shiftwidth=4
vim.opt.softtabstop=4
vim.opt.ignorecase=true
vim.opt.smartcase=true
vim.opt.colorcolumn="80"
vim.opt.title=true
vim.opt.autowriteall=true
require("config")
vim.cmd("Copilot disable")
-- vim.opt.nowrap=true
-- lua require('plugins')
-- lua require('lsp')
-- lua require('custom')
-- colorscheme base16-gruvbox-dark-soft
-- autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
