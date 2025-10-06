local picker = require("mini.pick")

picker.setup()

local builtin = picker.builtin
vim.keymap.set('n', '<Leader>p', function() builtin.files() end)
vim.keymap.set('n', '<Leader>b', function() builtin.buffers() end)
