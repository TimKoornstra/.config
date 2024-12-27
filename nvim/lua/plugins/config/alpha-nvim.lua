local function setup_alpha()
  local alpha = require('alpha')
  local dashboard = require('alpha.themes.dashboard')

  -- Calculate center padding
  local header_padding = vim.fn.max({ 2, vim.fn.floor(vim.fn.winheight(0) * 0.2) })

  -- Preserve the existing ASCII art header
  dashboard.section.header.val = {
    [[                    ▄▄▄▄▄▪  • ▌ ▄ ·. .▄▄ ·                         ]],
    [[                     •██  ██ ·██ ▐███▪▐█ ▀.                        ]],
    [[                      ▐█.▪▐█·▐█ ▌▐▌▐█·▄▀▀▀█▄                       ]],
    [[                      ▐█▌·▐█▌██ ██▌▐█▌▐█▄▪▐█                       ]],
    [[                      ▀▀▀ ▀▀▀▀▀  █▪▀▀▀ ▀▀▀▀                        ]],
    [[                                             o8o                   ]],
    [[                                             `"'                   ]],
    [[ooo. .oo.    .ooooo.   .ooooo.  oooo    ooo oooo  ooo. .oo.  .oo.  ]],
    [[`888P"Y88b  d88' `88b d88' `88b  `88.  .8'  `888  `888P"Y88bP"Y88b ]],
    [[ 888   888  888ooo888 888   888   `88..8'    888   888   888   888 ]],
    [[ 888   888  888    .o 888   888    `888'     888   888   888   888 ]],
    [[o888o o888o `Y8bod8P' `Y8bod8P'     `8'     o888o o888o o888o o888o]],
  }

  -- Keep existing buttons with enhanced functionality
  dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("\\ t f", "  Find file"),
    dashboard.button("\\ t o", "  Previously opened files"),
    dashboard.button("\\ t C", "  Colorscheme"),
    dashboard.button("\\ p", "ﯻ  Toggle Sidebar"),
    dashboard.button("\\ D", "  Git Changes"),
    dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
  }

  -- Center-aligned footer
  local function footer()
    local datetime = os.date("%Y-%m-%d %H:%M")
    local version = vim.version()
    local nvim_version = string.format("v%d.%d.%d", version.major, version.minor, version.patch)
    return string.format("   %s  |  %s", nvim_version, datetime)
  end

  dashboard.section.footer.val = footer()



  dashboard.section.footer.val = footer()

  -- Layout configuration with proper spacing
  dashboard.config.layout = {
    { type = "padding", val = header_padding },
    dashboard.section.header,
    { type = "padding", val = 4 },
    dashboard.section.buttons,
    { type = "padding", val = 2 },
    dashboard.section.footer,
  }

  -- Custom highlights with increased visibility
  dashboard.section.header.opts.hl = "AlphaHeader"
  dashboard.section.buttons.opts.hl = "AlphaButtons"
  dashboard.section.footer.opts.hl = "AlphaFooter"

  -- Set up highlights with stronger colors
  local highlights = {
    AlphaHeader = { fg = "#88C0D0", bold = true }, -- Brighter blue
    AlphaButtons = { fg = "#81A1C1" },
    AlphaFooter = { fg = "#88C0D0" },
  }

  for group, colors in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, colors)
  end

  -- Configure options
  dashboard.opts.opts.noautocmd = true

  -- Setup alpha
  alpha.setup(dashboard.opts)

  -- Auto-start alpha when no files are specified
  vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
      local should_skip = false
      if vim.fn.argc() > 0 then should_skip = true end
      if vim.fn.line2byte('$') ~= -1 then should_skip = true end

      if not should_skip then
        vim.cmd('Alpha')
      end
    end,
  })

  -- Keybinding to return to dashboard
  vim.keymap.set('n', '<leader>h', ':Alpha<CR>', { noremap = true, silent = true })
end

setup_alpha()
