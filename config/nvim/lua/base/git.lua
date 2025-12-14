local fzf = require("fzf-lua")
local gitsigns = require("gitsigns")
local diffview = require("diffview")

diffview.setup {
	enhanced_diff_hl = true,
}

gitsigns.setup {
	on_attach = function(buf)
		vim.keymap.set('n', '<Leader>gb', gitsigns.blame, { buffer = true })
	end,
}

vim.keymap.set('n', '<C-p>gC', fzf.git_commits)
vim.keymap.set('n', '<C-p>gc', fzf.git_bcommits)
vim.keymap.set('n', '<C-p>gb', fzf.git_branches)

vim.keymap.set('n', '<Leader>gd', '<CMD>DiffviewOpen<CR>')
vim.keymap.set('n', '<Leader>gh', '<CMD>DiffviewFileHistory<CR>')
vim.keymap.set({ 'n', 'v' }, '<Leader>fh', '<CMD>DiffviewFileHistory %<CR>')
