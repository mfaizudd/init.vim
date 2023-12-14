set relativenumber
set number
set hlsearch
set autoindent
set wildmode=longest,list
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set ignorecase
set smartcase
set colorcolumn=80
set nowrap
lua require('plugins')
lua require('lsp')
lua require('custom')
colorscheme catppuccin
autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
