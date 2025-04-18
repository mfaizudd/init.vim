return {
    { 'tpope/vim-fugitive' },
    { 'akinsho/git-conflict.nvim' },
    { 'f-person/git-blame.nvim' },
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim", -- required
            "sindrets/diffview.nvim", -- optional - Diff integration

            -- Only one of these is needed.
            "nvim-telescope/telescope.nvim", -- optional
        },
    }
}
