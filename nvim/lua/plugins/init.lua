local packer, use, use_local, install_sync = unpack(require "plugins.packer")

local function get_config(name)
    return string.format('require("plugins.config/%s")', name)
end

packer.startup {
    function()
        -- Package manager
        use { "wbthomason/packer.nvim", opt = true }

        -- Required by many plugins
        use { "nvim-lua/plenary.nvim" }

        -- UI and Themes
        use { "navarasu/onedark.nvim", config = get_config("onedark") }
        use { "nvim-tree/nvim-web-devicons" }
        use { "nvim-lualine/lualine.nvim", after = "nvim-web-devicons", config = get_config("lualine") }
        use { "akinsho/bufferline.nvim", after = "nvim-web-devicons", ext = "bufferline" }
        use { 'goolord/alpha-nvim', after = "nvim-web-devicons", ext = "alpha-nvim" }
        use { "stevearc/dressing.nvim", ext = "dressing" }
        use { "folke/which-key.nvim", config = get_config("whichkey") }
        use { "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline", ext = "symbols-outline" }
        use { "norcalli/nvim-colorizer.lua", config = function() require("colorizer").setup({ "*" }) end }
        use { "RRethy/vim-illuminate" }

        -- File explorer
        use { "nvim-tree/nvim-tree.lua", config = get_config("nvim-tree"), ext = "nvim-tree-settings"}

        -- Fuzzy finder
        use { "nvim-telescope/telescope.nvim", ext = "telescope-keymap", config = get_config("telescope") }
        use { "nvim-telescope/telescope-media-files.nvim", after = "telescope.nvim" }
        use { "nvim-telescope/telescope-file-browser.nvim", after = "telescope.nvim" }

        -- Syntax highlighting and code parsing
        use { "nvim-treesitter/nvim-treesitter", event = { "BufRead", "BufNewFile" }, config = get_config("treesitter") }
        use { "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" }
        use { "nvim-treesitter/nvim-treesitter-context", after = "nvim-treesitter" }

        -- LSP and completion
        use { "neovim/nvim-lspconfig", config = get_config("lsp_config") }
        use { "williamboman/mason.nvim" }
        use { "williamboman/mason-lspconfig.nvim" }
        use { "j-hui/fidget.nvim", ext = "fidget", tag = "legacy" }
        use { "microsoft/python-type-stubs", opt = true }
        use { "theHamsta/nvim-semantic-tokens", ext = "nvim-semantic-tokens" }

        -- Snippets and completion
        use { "rafamadriz/friendly-snippets" }
        use { "L3MON4D3/LuaSnip", tag = "v2.*", run = "make install_jsregexp", dependencies = { "rafamadriz/friendly-snippets" } }
        use { "hrsh7th/nvim-cmp", after = "LuaSnip", config = get_config("cmp_config"),
            requires = {
                "saadparwaiz1/cmp_luasnip",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-nvim-lua",
                "hrsh7th/cmp-cmdline",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-nvim-lsp-signature-help",
            } 
        }

        -- Git integration
        use { "lewis6991/gitsigns.nvim", ext = "gitsigns" }
        use { "sindrets/diffview.nvim", ext = "diffview" }

        -- Avante plugin (AI-assisted coding)
        use {
            "yetone/avante.nvim",
            build = "make",
            requires = {
                "nvim-treesitter/nvim-treesitter",
                "stevearc/dressing.nvim",
                "nvim-lua/plenary.nvim",
                "MunifTanjim/nui.nvim",
                "nvim-tree/nvim-web-devicons",
                "zbirenbaum/copilot.lua",
                {
                    "HakonHarnes/img-clip.nvim",
                    opts = {
                        default = {
                            embed_image_as_base64 = false,
                            prompt_for_file_name = false,
                            drag_and_drop = { insert_mode = true },
                            use_absolute_path = true,
                        },
                    },
                },
                {
                    'MeanderingProgrammer/render-markdown.nvim',
                    config = function()
                        require('render-markdown').setup({
                            file_types = { "markdown", "Avante" },
                        })
                    end,
                },
            },
            config = get_config("avante"),
        }

        -- Documentation
        use { "danymat/neogen", ext = "neogen" }

        -- Code manipulation
        use { "preservim/nerdcommenter" }
        use { "kylechui/nvim-surround", ext = "nvim-surround" }
        use {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            config = function() require("nvim-autopairs").setup {} end
        }

        -- Navigation
        use { "smoka7/hop.nvim", ext = "hop" }

        install_sync()
    end,
    config = {},
}
