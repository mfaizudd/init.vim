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
lua require('plugins')
lua require('lsp')
lua require('custom')
colorscheme catppuccin
