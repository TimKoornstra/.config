require("onedarkpro").setup({
  colors = {}, -- Override default colors or create your own
  highlights = {}, -- Override default highlight groups or create your own
  filetypes = { -- Override which filetype highlight groups are loaded
    -- See the 'Configuring filetype highlights' section for the available list
  },
  plugins = { -- Override which plugin highlight groups are loaded
    -- See the 'Supported plugins' section for the available list
  },
  styles = {
    types = "italic",
    numbers = "NONE",
    strings = "NONE",
    comments = "italic",
    keywords = "bold,italic",
    constants = "NONE",
    functions = "bold",
    operators = "NONE",
    variables = "NONE",
    conditionals = "NONE",
    virtual_text = "NONE",
  },
  options = {
    bold = true, -- Use bold styles?
    italic = true, -- Use italic styles?
    underline = true, -- Use underline styles?
    undercurl = true, -- Use undercurl styles?

    cursorline = true, -- Use cursorline highlighting?
    transparency = false, -- Use a transparent background?
    terminal_colors = true, -- Use the theme's colors for Neovim's :terminal?
    highlight_inactive_windows = true, -- When the window is out of focus, change the normal background?
  }
})

vim.cmd("colorscheme onedark_vivid")
