local extra = require("mini.extra")
extra.setup()

local pickers = extra.pickers

vim.keymap.set('n', '<C-p>e', pickers.explorer)
--- vim.keymap.set('n', '<C-p>d', pickers.diagnostic)

--- vim.keymap.set('n', '<C-p>gc', pickers.git_commits)
--- vim.keymap.set('n', '<C-p>gb', pickers.git_branches)

--- vim.keymap.set('n', '<C-p>o', function() pickers.lsp({ scope = 'document_symbol' }) end)
--- vim.keymap.set('n', '<C-p>O', function() pickers.lsp({ scope = 'workspace_symbol' }) end)

--- vim.keymap.set('n', 'gR', function() pickers.lsp({ scope = 'references' }) end)
--- vim.keymap.set('n', 'gI', function() pickers.lsp({ scope = 'implementation' }) end)
