vim.keymap.set('n', 'q', function() vim.cmd("cclose | lclose") end, { silent = true, buffer = 0 })
