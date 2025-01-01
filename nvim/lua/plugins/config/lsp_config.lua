-- Helper function to get python path
local function get_python_path()
  local conda_prefix = os.getenv('CONDA_PREFIX')
  local venv_prefix = os.getenv('VIRTUAL_ENV')

  if conda_prefix then
    return conda_prefix .. "/bin/python3"
  elseif venv_prefix then
    return venv_prefix .. "/bin/python3"
  else
    return vim.g.python3_host_prog
  end
end

-- Enhanced keybindings setup
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
  map("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", bufopts)

  -- Workspace
  map("n", "<leader>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", bufopts)
  map("n", "<leader>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", bufopts)
  map("n", "<leader>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", bufopts)
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

-- Common LSP setup function
local function make_config()
  local capabilities = require("blink.cmp").get_lsp_capabilities()

  local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
  function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
    opts = opts or {}
    opts.border = opts.border or 'rounded'
    return orig_util_open_floating_preview(contents, syntax, opts, ...)
  end

  -- Configure diagnostic style
  vim.diagnostic.config({
    float = { border = 'rounded' },
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = false,
    severity_sort = true,
  })

  return {
    capabilities = capabilities,
    flags = {
      debounce_text_changes = 200,
    },
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
    end
  }
end

local function setup_lspconfig()
  local lspconfig = require("lspconfig")
  local base_config = make_config()

  -- Python LSP configuration
  lspconfig.pylsp.setup(vim.tbl_deep_extend("force", base_config, {
    settings = {
      pylsp = {
        plugins = {
          -- Formatting
          black = { enabled = false },
          autopep8 = { enabled = false },
          yapf = { enabled = false },

          -- Linting
          pylint = {
            enabled = false,
            executable = "pylint",
            args = {
              "--disable=no-member",
              "--disable=C0111", -- Missing docstring
              "--disable=C0103", -- Invalid name
            },
          },
          pyflakes = { enabled = false },
          pycodestyle = { enabled = false },

          -- Type checking
          pylsp_mypy = {
            enabled = true,
            overrides = { "--python-executable", get_python_path(), true },
            report_progress = true,
            live_mode = false,
            strict = true
          },

          -- Completion
          jedi_completion = {
            fuzzy = true,
            include_params = true
          },

          -- Import sorting
          isort = { enabled = false },

          -- Additional features
          rope_completion = { enabled = true },
          rope_autoimport = { enabled = true }
        },
      },
    },
  }))

  -- TypeScript LSP configuration
  lspconfig.ts_ls.setup(vim.tbl_deep_extend("force", base_config, {
    settings = {
      typescript = {
        inlayHints = {
          includeInlayParameterNameHints = 'all',
          includeInlayParameterNameHintsWhenArgumentMatchesName = false,
          includeInlayFunctionParameterTypeHints = true,
          includeInlayVariableTypeHints = true,
          includeInlayPropertyDeclarationTypeHints = true,
          includeInlayFunctionLikeReturnTypeHints = true,
          includeInlayEnumMemberValueHints = true,
        }
      }
    }
  }))

  -- ESLint LSP configuration
  lspconfig.eslint.setup({ base_config })

  -- Lua LSP configuration
  lspconfig.lua_ls.setup(vim.tbl_deep_extend("force", base_config, {
    settings = {
      Lua = {
        diagnostics = {
          globals = { 'vim' }
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false,
        },
        telemetry = {
          enable = false,
        },
      },
    },
  }))

  -- Ruff LSP configuration
  require('lspconfig').ruff.setup({
    init_options = {
      settings = {
        lint = {
          select = {
            "F",      -- pyflakes
            "E", "W", -- pycodestyle
            "PL",     -- pylint
            "I",      -- isort
          },
          ignore = {
            "E501", "E741", "F402", "F823", "PLR0913", "PLR0911",
            "PLR0912", "PLR0915", "PLW2901", "PLW0603"
          },
        },
      }
    }
  })
end

-- Call the setup function
setup_lspconfig()
