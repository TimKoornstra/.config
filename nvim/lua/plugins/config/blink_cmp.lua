local function setup_blink_cmp()
  local blink_cmp = require('blink.cmp')

  blink_cmp.setup {
    -- Keymap preset: 'default', 'super-tab', or 'enter'
    keymap = { preset = 'enter' },

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
        selection = function(ctx)
          return ctx.mode == 'cmdline' and 'auto_insert' or 'preselect'
        end
      }
    },

    signature = {
      enabled = true,
      window = { border = 'single' },
    },
  }
end

-- Call the setup function
setup_blink_cmp()
