require("nvim-treesitter.configs").setup {
	ensure_installed = {
		"c",
		"lua",
		"go", "gomod", "gosum", "gowork",
		"python",
		"bash",
	},

	folds = { enable = true },
	indent = { enable = true },
	highlight = { enable = true },
}
