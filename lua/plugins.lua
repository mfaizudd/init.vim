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
            }
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
        use 'wakatime/vim-wakatime'
        use 'tpope/vim-fugitive'
        use 'arcticicestudio/nord-vim'

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.1',
            -- or                            , branch = '0.1.x',
            requires = { { 'nvim-lua/plenary.nvim' } }
        }
        use 'cohama/lexima.vim'
        use 'kdheepak/lazygit.nvim'
        use {
            "Pocco81/auto-save.nvim",
            config = function()
                require("auto-save").setup {
                    -- your config goes here
                    -- or just leave it empty :
                }
            end,
        }
        use 'andweeb/presence.nvim'
        use 'github/copilot.vim'
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        }
        use 'mg979/vim-visual-multi'
        use 'numToStr/Comment.nvim'
        use 'simrat39/rust-tools.nvim'
        use { "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } }
        use 'akinsho/toggleterm.nvim'
        use 'simrat39/symbols-outline.nvim'
        use 'ryanoasis/vim-devicons'
        use 'jwalton512/vim-blade'
        use 'akinsho/git-conflict.nvim'

        use {
            "nvim-neo-tree/neo-tree.nvim",
            branch = "v2.x",
            requires = {
                "nvim-lua/plenary.nvim",
                "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
                "MunifTanjim/nui.nvim",
            }
        }
        use { "catppuccin/nvim", as = "catppuccin" }
        use 'ojroques/vim-oscyank'
    end)
