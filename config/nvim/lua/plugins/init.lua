vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim.git" },

    { src = "https://github.com/mason-org/mason.nvim.git" },

    { src = "https://github.com/nvim-treesitter/nvim-treesitter.git" },

    { src = "https://github.com/catppuccin/nvim.git" },
	{ src = "https://github.com/folke/tokyonight.nvim.git" },
})

require("plugins.lsp")
require("plugins.mini")
require("plugins.syntax")
require("plugins.colors")
