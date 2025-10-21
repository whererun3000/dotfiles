require("mason").setup {}

vim.lsp.enable({ 'gopls', 'clangd', 'lua_ls', 'ruff' })

vim.keymap.del({ 'n', 'v' }, 'gra')
vim.keymap.del('n', 'gri')
vim.keymap.del('n', 'grn')
vim.keymap.del('n', 'grr')
vim.keymap.del('n', 'grt')

vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(args)
		vim.keymap.set('n', 'gQ', vim.lsp.buf.format, { buf = args.buffer })
		vim.keymap.set('n', 'gN', vim.lsp.buf.rename, { buf = args.buffer })
		vim.keymap.set('n', 'gD', vim.lsp.buf.definition, { buf = args.buffer })
	end,
})
