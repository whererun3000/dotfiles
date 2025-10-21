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

	{ src = "https://github.com/akinsho/bufferline.nvim.git" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim.git" },

	{ src = "https://github.com/nvim-tree/nvim-web-devicons.git" },
})

require("config")
require("base")
require("lsp")
require("syntax")
require("ui")

vim.cmd.colorscheme("catppuccin")
