return {
    { 'VonHeikemen/lsp-zero.nvim' },
    -- LSP Support
    { 'neovim/nvim-lspconfig' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
    { 'Hoffs/omnisharp-extended-lsp.nvim' },

    -- Autocompletion
    { 'hrsh7th/nvim-cmp' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/cmp-nvim-lua' },

    -- Snippets
    { 'L3MON4D3/LuaSnip' },
    { 'rafamadriz/friendly-snippets' },
    { 'hrsh7th/vim-vsnip' },
    { 'hrsh7th/cmp-vsnip' },
    {
        "ray-x/lsp_signature.nvim",
        event = "InsertEnter",
        opts = {
            -- cfg options
        },
    }
}
