local gitsigns = require("gitsigns")

gitsigns.setup {
	on_attach = function(buf)
		vim.keymap.set('n', '<Leader>gb', gitsigns.blame, { buffer = true })
	end,
}
