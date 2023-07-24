require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "pylsp", "tsserver", "svelte" }
})

local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {})
    vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', {})

    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
    vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})

    -- Turn on auto formatting
    if client.server_capabilities.documentFormattingProvider then
        vim.cmd(
            [[
                augroup LspFormatting
                autocmd! * <buffer>
                autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
                augroup END
                ]]
        )
    end

end

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

require("lspconfig")["pylsp"].setup {
    on_attach = on_attach,
    flags = lsp_flags,
}

require("lspconfig").lua_ls.setup {
    on_attach = on_attach,
    flags = lsp_flags,
}

require'lspconfig'.tsserver.setup {
    on_attach = on_attach,
    flags = lsp_flags,
}

require'lspconfig'.svelte.setup {
    on_attach = on_attach,
    flags = lsp_flags,
}
