local extra = require("mini.extra")
extra.setup()

local pickers = extra.pickers
vim.keymap.set('n', '<Leader>h', pickers.history)
vim.keymap.set('n', '<Leader>e', pickers.explorer)
vim.keymap.set('n', 'gd', function() pickers.lsp({ scope = 'definition' }) end)
vim.keymap.set('n', 'gr', function() pickers.lsp({ scope = 'references' }) end)
vim.keymap.set('n', 'gI', function() pickers.lsp({ scope = 'implementation' }) end)
vim.keymap.set('n', 'gO', function() pickers.lsp({ scope = 'document_symbol' }) end)
