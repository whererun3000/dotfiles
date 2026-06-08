require("mini.icons").setup {}
require("mini.hipatterns").setup {}

require("mini.tabline").setup {}
require("mini.statusline").setup {}

require("mini.basics").setup {}

require("mini.trailspace").setup {}
require("mini.indentscope").setup {}

require("mini.git").setup {}
require("mini.pick").setup {}
require("mini.files").setup {}
require("mini.extra").setup {}

require("mini.completion").setup {
	auto_setup = false,
	source_func = "omnifunc",

	window = {
		info = {
			border = "rounded",
		},
	},
}

vim.keymap.set('n', "<Leader>e", MiniFiles.open)
