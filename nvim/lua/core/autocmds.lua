vim.cmd [[
    augroup YankHighlight
        autocmd!
        autocmd TextYankPost * silent! lua vim.highlight.on_yank { higroup = "IncSearch", timeout = 300 }
    augroup END
]]

