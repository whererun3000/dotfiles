vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function vscode_keymap_set(mode, key, command)
    vim.keymap.set(mode, key, function() require('vscode-neovim').call(command) end)
    print(string.format("set keymap mode(%s), key(%s) command(%s)", mode, key, command))
end

vscode_keymap_set('n', '<Leader>e', 'workbench.view.explorer')

vscode_keymap_set('n', 'gr', 'editor.action.goToReferences')
vscode_keymap_set('n', 'gR', 'editor.action.referenceSearch.trigger')
vscode_keymap_set('n', 'gi', 'editor.action.goToImplementation')
vscode_keymap_set('n', 'gI', 'editor.action.peekImplementation')
vscode_keymap_set('n', 'gh', 'references-view.showCallHierarchy')
vscode_keymap_set('n', 'gH', 'editor.showCallHierarchy')

vscode_keymap_set('n', '[b', 'workbench.action.previousEditor')
vscode_keymap_set('n', ']b', 'workbench.action.nextEditor')

vscode_keymap_set('n', '<Leader>ff', 'workbench.action.quickOpen')
vscode_keymap_set('n', '<Leader>fc', 'workbench.action.showCommands')
vscode_keymap_set('n', '<Leader>fs', 'workbench.action.findInFiles')


vscode_keymap_set('i', '<C-.>', 'editor.action.quickFix')


vscode_keymap_set('c', '<C-b>', '<Left>')
vscode_keymap_set('c', '<C-f>', '<Right>')
