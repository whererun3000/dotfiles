return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        options = {
            diagnostics = "nvim_lsp",
            numbers = function(opts)
                return string.format('%s', opts.raise(opts.id))
            end,
        }
    },
    config = function(_, opts)
        require("bufferline").setup(opts)
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        map('n', '[b', '<Cmd>BufferLineCyclePrev<CR>', opts)
        map('n', ']b', '<Cmd>BufferLineCycleNext<CR>', opts)
        map('n', '<Leader>bo', '<Cmd>BufferLineCloseOther<CR>', opts)
        map('n', '<Leader>bl', '<Cmd>BufferLineCloseLeft<CR>', opts)
        map('n', '<Leader>br', '<Cmd>BufferLineCloseRight<CR>', opts)
    end
}
