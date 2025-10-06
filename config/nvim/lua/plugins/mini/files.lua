local files = require("mini.files")

files.setup()

vim.keymap.set('n', '<Leader>e', function()
    if not files.close() then
	files.open()
    end
end)
