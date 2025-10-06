vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim.git" },

    { src = "https://github.com/neovim/nvim-lspconfig.git" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter.git" },

    { src = "https://github.com/catppuccin/nvim.git" },
})

require("plugins.mini")
require("plugins.syntax")
require("plugins.colors")
