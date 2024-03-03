return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = true,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { '<Leader>e', '<Cmd>NvimTreeToggle<CR>' },
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup {}
    end,
}
