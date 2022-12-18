local cmp = require 'cmp'
local types = require "cmp.types"
local mapping = require "cmp.config.mapping"

cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      end,
    },
    window = {
            documentation = {
                border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
                winhighlight = "Normal:Normal,FloatBorder:VertSplit,Search:None",
            },
            completion = {
                border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
                winhighlight = "Normal:Normal,FloatBorder:VertSplit,Search:None",
            },
        },
    mapping = cmp.mapping.preset.insert({
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ["<Tab>"] = cmp.mapping(function(fallback)
            if require("luasnip").jumpable(1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-next", true, true, true), "")
            elseif require("neogen").jumpable(1) then
                vim.fn.feedkeys(
                    vim.api.nvim_replace_termcodes("<cmd>lua require('neogen').jump_next()<CR>", true, true, true),
                    ""
                )
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if require("luasnip").jumpable(-1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
            elseif require("neogen").jumpable(-1) then
                vim.fn.feedkeys(
                    vim.api.nvim_replace_termcodes("<cmd>lua require('neogen').jump_prev()<CR>", true, true, true),
                    ""
                )
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<Down>"] = { i = mapping.select_next_item { behavior = types.cmp.SelectBehavior.Select } },
        ["<Up>"] = { i = mapping.select_prev_item { behavior = types.cmp.SelectBehavior.Select } },
        ["<C-n>"] = { i = mapping.select_next_item { behavior = types.cmp.SelectBehavior.Insert } },
        ["<C-p>"] = { i = mapping.select_prev_item { behavior = types.cmp.SelectBehavior.Insert } },
        ["<C-y>"] = { i = mapping.confirm { select = false } },
        ["<C-e>"] = { i = mapping.abort() },
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- For luasnip users.
    }, {
      { name = 'buffer' },
    }),
    completion = { completeopt = "menu,menuone,noinsert" },
    experimental = {
            native_menu = false,
        },
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
            { name = "path" },
            { name = "nvim_lua" },
            { name = "cmdline", keyword_length = 2 },
        },
    })
