vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim.git" },

    { src = "https://github.com/mason-org/mason.nvim.git" },

    { src = "https://github.com/nvim-treesitter/nvim-treesitter.git" },

    { src = "https://github.com/catppuccin/nvim.git" },
	{ src = "https://github.com/folke/tokyonight.nvim.git" },

	{ src = "https://github.com/MunifTanjim/nui.nvim" },
	{ src = "https://github.com/folke/noice.nvim.git" },
	{ src = "https://github.com/rcarriga/nvim-notify.git" },

	{ src = "https://github.com/hrsh7th/nvim-cmp.git" },
	{ src = "https://github.com/hrsh7th/cmp-cmdline.git" },
	{ src = "https://github.com/hrsh7th/cmp-nvim-lsp.git" },

	{ src = "https://github.com/lewis6991/gitsigns.nvim.git" },

	{ src = "https://github.com/ibhagwan/fzf-lua.git" },
})

require("plugins.ui")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.fzf")
require("plugins.mini")
require("plugins.syntax")
require("plugins.colors")
