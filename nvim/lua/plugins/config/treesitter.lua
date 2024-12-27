local function setup_treesitter()
  require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all"
    ensure_installed = "all",

    ignore_install = {},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,

    highlight = {
      -- Enables tree-sitter highlighting
      enable = true,

      -- Disable vim's regex highlighting for better performance
      additional_vim_regex_highlighting = false,
    },

    indent = {
      -- Enable tree-sitter based indentation
      enable = true,
    },

    incremental_selection = {
      -- Enable incremental selection
      enable = true,
      keymaps = {
        init_selection = "gnn",
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    },

    textobjects = {
      -- Enable text object selection
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
        },
      },
      -- Enable text object movement
      move = {
        enable = true,
        set_jumps = true,
        goto_next_start = {
          ["]m"] = "@function.outer",
          ["]c"] = "@class.outer",
        },
        goto_next_end = {
          ["]M"] = "@function.outer",
          ["]C"] = "@class.outer",
        },
        goto_previous_start = {
          ["[m"] = "@function.outer",
          ["[c"] = "@class.outer",
        },
        goto_previous_end = {
          ["[M"] = "@function.outer",
          ["[C"] = "@class.outer",
        },
      },
    },

    modules = {}
  }
end

-- Call the setup function
setup_treesitter()
