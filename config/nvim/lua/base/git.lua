local this = require("gitsigns")

this.setup {
	on_attach = function(buf)
		vim.keymap.set('n', '<Leader>gb', this.blame, { buffer = true })
		vim.keymap.set('n', '<Leader>gd', function() this.diffthis("~") end, { buffer = true })
	end,
}
