local picker = require("mini.pick")
picker.setup()

local builtin = picker.builtin
vim.keymap.set('n', '<C-p>h', builtin.help)
vim.keymap.set('n', '<C-p>f', builtin.files)
vim.keymap.set('n', '<C-p>b', builtin.buffers)
vim.keymap.set('n', '<C-p>s', builtin.grep_live)
