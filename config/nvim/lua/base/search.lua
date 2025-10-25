local fzf = require("fzf-lua")

vim.keymap.set('n', '<C-p>f', fzf.files)
vim.keymap.set('n', '<C-p>g', fzf.global)
vim.keymap.set('n', '<C-p>b', fzf.buffers)
vim.keymap.set('n', '<C-p>r', fzf.registers)
vim.keymap.set('n', '<C-p>/', fzf.live_grep_native)
