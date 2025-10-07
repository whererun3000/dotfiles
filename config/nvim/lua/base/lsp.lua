vim.lsp.enable({ 'gopls', 'clangd', 'lua_ls' })

vim.keymap.del({ 'n', 'v' }, 'gra')
vim.keymap.del('n', 'gri')
vim.keymap.del('n', 'grn')
vim.keymap.del('n', 'grr')
vim.keymap.del('n', 'grt')

vim.keymap.set('n', 'gN', vim.lsp.buf.rename)
vim.keymap.set('n', 'gD', vim.lsp.buf.definition)
