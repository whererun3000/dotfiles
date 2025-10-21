local fzf = require("fzf-lua")

vim.keymap.set('n', 'gR', fzf.lsp_references)
vim.keymap.set('n', 'gA', fzf.lsp_code_actions)
vim.keymap.set('n', 'gI', fzf.lsp_implementations)
vim.keymap.set('n', '<C-p>o', fzf.lsp_document_symbols)
vim.keymap.set('n', '<C-p>O', fzf.lsp_workspace_symbols)

vim.keymap.set('n', '<C-p>gC', fzf.git_commits)
vim.keymap.set('n', '<C-p>gc', fzf.git_bcommits)

vim.keymap.set('n', '<C-p>f', fzf.files)
vim.keymap.set('n', '<C-p>b', fzf.buffers)
vim.keymap.set('n', '<C-p>r', fzf.registers)
vim.keymap.set('n', '<C-p>/', fzf.live_grep_native)

vim.keymap.set('n', '<C-p><Leader>', fzf.global)

