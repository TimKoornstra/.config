-- This file contains general shared settings for LSPs
-- For LSP-specific settings, see `~/.config/nvim/after/lsp/`
local ok, blink = pcall(require, "blink.cmp")
local capabilities = ok and blink.get_lsp_capabilities()
    or vim.lsp.protocol.make_client_capabilities()

-- Keymaps on LspAttach (runs for every client that attaches)
local lsp_group = vim.api.nvim_create_augroup("UserLspKeymaps", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
  group = lsp_group,
  callback = function(args)
    local bufnr = args.buf
    local map = function(mode, lhs, rhs)
      vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, buffer = bufnr })
    end

    -- Navigation
    map("n", "gd", vim.lsp.buf.definition)
    map("n", "gi", vim.lsp.buf.implementation)
    map("n", "gD", vim.lsp.buf.declaration)
    map("n", "gt", vim.lsp.buf.type_definition)

    -- References via Telescope (lazy-require so it works even if not loaded yet)
    map("n", "gr", function() require("telescope.builtin").lsp_references() end)

    -- Docs / Sig-help
    map("n", "K", vim.lsp.buf.hover)
    map("n", "<C-k>", vim.lsp.buf.signature_help)

    -- Refactor
    map("n", "<leader>rn", vim.lsp.buf.rename)
    map("n", "<leader>ca", vim.lsp.buf.code_action)

    -- Diagnostics
    map("n", "<leader>e", vim.diagnostic.open_float)
    map("n", "]d", function()
      vim.diagnostic.jump({ count = 1, float = true })
    end)

    map("n", "[d", function()
      vim.diagnostic.jump({ count = -1, float = true })
    end)

    -- Format on save if the server supports it
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end

    -- Diagnostics settings
    vim.api.nvim_create_autocmd("CursorHold", {
      buffer = bufnr,
      callback = function()
        local float_opts = {
          focusable = false,
          close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
          border = "rounded",
          source = "always", -- show source in diagnostic popup window
          prefix = " ",
          scope = 'cursor',
        }

        vim.diagnostic.open_float(nil, float_opts)
      end,
    })
  end,
})

-- Rounded borders everywhere
do
  local orig = vim.lsp.util.open_floating_preview
  function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or 'rounded'
    return orig(contents, syntax, opts, ...)
  end
end

-- Global diagnostic look
vim.diagnostic.config({
  float = { border = 'rounded' },
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Shared defaults for all LSP clients
vim.lsp.config('*', {
  capabilities = capabilities,
  flags = { debounce_text_changes = 200 },
})

vim.lsp.enable({ "pylsp", "ruff", "lua_ls", "ts_ls", "eslint", "rust_analyzer" })
