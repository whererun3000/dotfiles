vim.keymap.set('c', '<C-a>', '<home>')
vim.keymap.set('c', '<C-e>', '<end>')
vim.keymap.set('c', '<C-b>', '<left>')
vim.keymap.set('c', '<C-f>', '<right>')

vim.keymap.set('n', '<C-w>-', '<CMD>split<CR>')
vim.keymap.set('n', '<C-w>\\', '<CMD>vsplit<CR>')

vim.keymap.set('n', '<Leader>bd', '<CMD>bd<CR>')

require('mini.move').setup()
require('mini.bracketed').setup()
