return {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            enabled = vim.fn.executable("make") == 1,
            config = function()
                require("telescope").load_extension("fzf")
            end,
        },
    },
    config = function()
        local opts = { noremap = true, silent = true }
        local builtin = require("telescope.builtin")

        vim.keymap.set('n', '<Leader>ff', builtin.find_files, opts)
        vim.keymap.set('n', '<Leader>fs', builtin.live_grep, opts)
        vim.keymap.set('n', '<Leader>fb', builtin.buffers, opts)
        vim.keymap.set('n', '<Leader>fc', builtin.grep_string, opts)

    end,
}
