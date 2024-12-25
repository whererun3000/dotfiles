if vim.g.vscode then
    require("vscode.keymaps")
else
    require('core.options')
    require('core.keymaps')
    require('core.lazy')
end
