return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { '<Leader>e', '<Cmd>NvimTreeFindFileToggle<CR>' },
    },
    config = function()
        require("nvim-tree").setup {}
    end,
}
