vim.keymap.set('n', 'q', function() vim.cmd("cclose | lclose") end, { silent = true, buf = 0 })
