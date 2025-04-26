local function setup_blink_cmp()
  local blink_cmp = require('blink.cmp')

  blink_cmp.setup {
    -- Keymap preset: 'default', 'super-tab', or 'enter'
    keymap = {
      preset = 'enter',
      ["<CR>"] = { "accept_and_enter" }
    },

    appearance = {
      -- Fallback to nvim-cmp's highlight groups for better theme compatibility
      use_nvim_cmp_as_default = true,
      -- Adjust icon spacing for Nerd Font alignment
      nerd_font_variant = 'mono',
    },

    -- List of enabled providers
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer' },
    },

    completion = {
      menu = {
        border = 'single',
        auto_show = function(ctx)
          return ctx.mode ~= "cmdline" or not vim.tbl_contains({ '/', '?' }, vim.fn.getcmdtype())
        end,
      },
      documentation = { window = { border = 'single' }, auto_show = true },
      list = {
        selection =
        {
          preselect = function(ctx) return ctx.mode ~= 'cmdline' end,
          auto_insert = function(ctx) return ctx.mode ~= 'cmdline' end
        }
      },
      accept = {
        dot_repeat = true,
      }
    },

    signature = {
      enabled = true,
      window = { border = 'single' },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },

    cmdline = {
      keymap = {
        -- recommended, as the default keymap will only show and select the next item
        ['<Tab>'] = { 'show', 'accept' },
      },
      completion = {
        menu = {
          auto_show = function(ctx)
            return vim.fn.getcmdtype() == ':'
            -- enable for inputs as well, with:
            -- or vim.fn.getcmdtype() == '@'
          end,
        },
      }
    }
  }
end

-- Call the setup function
setup_blink_cmp()
