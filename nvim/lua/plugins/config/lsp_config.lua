-- This file contains general shared settings for LSPs
-- For LSP-specific settings, see `~/.config/nvim/after/lsp/`
local ok, blink = pcall(require, "blink.cmp")
local capabilities = ok and blink.get_lsp_capabilities()
    or vim.lsp.protocol.make_client_capabilities()

-- Keybindings per-buffer
local function setup_keybindings(bufnr)
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  local map = vim.keymap.set

  -- Navigation
  map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", bufopts)
  map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", bufopts)
  map("n", "gr", require("telescope.builtin").lsp_references, bufopts)
  map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", bufopts)
  map("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", bufopts)

  -- Documentation
  map("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", bufopts)
  map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", bufopts)

  -- Refactoring
  map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", bufopts)
  map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", bufopts)

  -- Diagnostics
  map("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", bufopts)
  map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", bufopts)
  map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", bufopts)
end

-- From: https://github.com/neovim/nvim-lspconfig/wiki/UI-Customization#show-line-diagnostics-automatically-in-hover-window
local function setup_diagnostics(bufnr)
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
end

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

  -- This runs for any server that attaches
  on_attach = function(client, bufnr)
    setup_keybindings(bufnr)
    setup_diagnostics(bufnr)

    -- Enable formatting on save if the client supports it
    if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})

vim.lsp.enable({ "pylsp", "ruff", "lua_ls", "ts_ls", "eslint", "rust_analyzer" })
