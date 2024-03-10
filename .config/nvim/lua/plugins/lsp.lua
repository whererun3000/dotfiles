return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    version = "*",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "nvim-telescope/telescope.nvim",
    },
    opts = function()
        local function on_lsp_attach(client, bufnr)
            local opts = { buffer = bufnr, noremap = true, silent = true }
            local builtin = require("telescope.builtin")
            vim.keymap.set('n', 'gr', builtin.lsp_references, opts)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
            vim.keymap.set('n', 'gd', builtin.lsp_definitions, opts)
            vim.keymap.set('n', 'gi', builtin.lsp_implementations, opts)
            vim.keymap.set('n', 'gq', function() vim.lsp.buf.format({ async = true }) end, opts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
            vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)
            vim.keymap.set('n', '<Leader>ss', builtin.lsp_document_symbols, opts)
        end

        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

        return {
            servers = {
                gopls = {
                    capabilities = capabilities,
                    on_attach = function(client, bufnr)
                        on_lsp_attach(client, bufnr)
                    end,
                },
            },
        }
    end,
    config = function(_, opts)
        local lspconfig = require("lspconfig")
        for server_name, server_opt in pairs(opts.servers) do
            lspconfig[server_name].setup(server_opt)
        end
    end,
}
