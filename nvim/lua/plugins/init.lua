local packer, use, _, install_sync = unpack(require "plugins.packer")

local function get_config(name)
  return string.format('require("plugins.config/%s")', name)
end

packer.startup {
  function()
    -- Package manager
    use {
      "wbthomason/packer.nvim",
      opt = true
    }

    -- Required by many plugins
    use { "nvim-lua/plenary.nvim" }

    -- UI and Themes
    use {
      "navarasu/onedark.nvim",
      config = get_config("onedark")
    }
    use { "nvim-tree/nvim-web-devicons" }
    use {
      "nvim-lualine/lualine.nvim",
      after = "nvim-web-devicons",
      config = get_config("lualine")
    }
    use {
      "goolord/alpha-nvim",
      after = "nvim-web-devicons",
      config = get_config("alpha-nvim")
    }
    use { "stevearc/dressing.nvim" }
    use {
      "folke/which-key.nvim",
      config = get_config("whichkey")
    }
    use {
      "catgoose/nvim-colorizer.lua",
      config = function() require("colorizer").setup({ "*" }) end
    }
    use { "RRethy/vim-illuminate" }
    use {
      "folke/snacks.nvim",
      after = "nvim-web-devicons",
      config = get_config("snacks")
    }

    -- Telescope
    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        { "nvim-lua/plenary.nvim" },                      -- Required dependency for Telescope
        { "nvim-telescope/telescope-media-files.nvim" },  -- Media files extension
        { "nvim-telescope/telescope-file-browser.nvim" }, -- File browser extension
      },
      config = get_config("telescope"),
    }

    -- Syntax highlighting and code parsing
    use {
      "nvim-treesitter/nvim-treesitter",
      event = { "BufRead", "BufNewFile" },
      config = get_config("treesitter"),

      -- Update all parsers
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
    }
    use {
      "nvim-treesitter/nvim-treesitter-textobjects",
      after = "nvim-treesitter",
      requires = "nvim-treesitter/nvim-treesitter",
    }
    use {
      "nvim-treesitter/nvim-treesitter-context",
      after = "nvim-treesitter",
      requires = "nvim-treesitter/nvim-treesitter",
      config = function()
        require("treesitter-context").setup({
          multiline_threshold = 3,
        })
      end,
    }

    -- Snippets and completion
    use {
      "saghen/blink.cmp",
      config = get_config("blink_cmp"),
      tag = "*",
      requires = { "rafamadriz/friendly-snippets" }
    }

    -- LSP
    use {
      "mason-org/mason.nvim",
      config = function()
        require("mason").setup()
      end,
    }
    use {
      "neovim/nvim-lspconfig",
      config = get_config("lsp_config"),
      requires = "saghen/blink.cmp",
    }
    use { "microsoft/python-type-stubs", opt = true }

    -- Git integration
    use {
      "lewis6991/gitsigns.nvim",
      config = get_config("gitsigns")
    }
    use {
      "sindrets/diffview.nvim",
      config = get_config("diffview")
    }

    -- Documentation
    use {
      "MeanderingProgrammer/render-markdown.nvim",
      after = { "nvim-treesitter" },
      config = function()
        require("render-markdown").setup({})
      end,
    }

    ---- Code manipulation
    use { "preservim/nerdcommenter" }

    use {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      config = function() require("nvim-autopairs").setup {} end,
    }

    -- Buffer navigation
    use {
      "folke/flash.nvim",
      config = function() require("flash").setup {} end
    }

    install_sync()
  end,
  config = {},
}
