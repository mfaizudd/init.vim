vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

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
        },
        branch = 'v3.x'
    }

    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'arcticicestudio/nord-vim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'cohama/lexima.vim'
    use 'is0n/fm-nvim'
    use {
        "Pocco81/auto-save.nvim",
        config = function()
            require("auto-save").setup {
                -- your config goes here
                -- or just leave it empty :
            }
        end,
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    }
    use 'mg979/vim-visual-multi'
    use 'numToStr/Comment.nvim'
    use 'simrat39/rust-tools.nvim'
    use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }
    use 'akinsho/toggleterm.nvim'
    use 'simrat39/symbols-outline.nvim'
    use 'ryanoasis/vim-devicons'
    use 'jwalton512/vim-blade'
    use 'akinsho/git-conflict.nvim'

    use { "catppuccin/nvim", as = "catppuccin" }
    use 'ojroques/vim-oscyank'
    use 'adelarsq/neofsharp.vim'
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
    }
    use "nvim-treesitter/nvim-treesitter-context"
    use "nvim-tree/nvim-tree.lua"
    use 'lewis6991/gitsigns.nvim'
    use 'RRethy/nvim-base16'
    use 'xiyaowong/transparent.nvim'
    use 'romgrk/barbar.nvim'
    use 'NoahTheDuke/vim-just'
end)
