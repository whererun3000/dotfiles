vim.keymap.set('c', '<C-A>', '<Home>')
vim.keymap.set('c', '<C-E>', '<End>')
vim.keymap.set('c', '<C-B>', '<Left>')
vim.keymap.set('c', '<C-F>', '<Right>')

require('mini.move').setup()
require('mini.bracketed').setup()
