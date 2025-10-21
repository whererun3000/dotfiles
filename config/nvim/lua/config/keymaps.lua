vim.keymap.set('c', '<C-a>', '<home>')
vim.keymap.set('c', '<C-e>', '<end>')
vim.keymap.set('c', '<C-b>', '<left>')
vim.keymap.set('c', '<C-f>', '<right>')

vim.keymap.set('n', '<C-w>-', '<cmd>split<cr>')
vim.keymap.set('n', '<C-w>\\', '<cmd>vsplit<cr>')

require('mini.move').setup()
require('mini.bracketed').setup()
