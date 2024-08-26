local packer, use, use_local, install_sync = unpack(require "plugins.packer")

local function get_config(name)
    return string.format('require("plugins.config/%s")', name)
end

packer.startup {
    function()
        use { "wbthomason/packer.nvim", opt = true}
        use { "nvim-lua/plenary.nvim" }

        -- Themes
        use { "navarasu/onedark.nvim", config = get_config("onedark") }
        use { "nvim-tree/nvim-web-devicons" }
        use { "nvim-lualine/lualine.nvim", after = "nvim-web-devicons", config = get_config("lualine") }
        use { "akinsho/bufferline.nvim", after = "nvim-web-devicons", ext = "bufferline" }
        use { 'goolord/alpha-nvim', after = "nvim-web-devicons", ext = "alpha-nvim" }
        
        -- Telescope
        use { "nvim-telescope/telescope.nvim", ext = "telescope-keymap", config = get_config("telescope") }
        use { "nvim-telescope/telescope-project.nvim", after = "telescope.nvim", ext = "project" }
        use { "nvim-telescope/telescope-media-files.nvim", after = "telescope.nvim" }
        use { "nvim-telescope/telescope-file-browser.nvim", after = "telescope.nvim" }

        -- Treesitter
        use { "nvim-treesitter/nvim-treesitter", event = { "BufRead", "BufNewFile" }, config = get_config("treesitter") }
        use { "nvim-treesitter/nvim-treesitter-textobjects", after = "nvim-treesitter" }
        use { "nvim-treesitter/nvim-treesitter-context", after = "nvim-treesitter" }

        -- Lsp
        use { "neovim/nvim-lspconfig", config = get_config("lsp_config") }
        use { "williamboman/mason.nvim" }
        use { "williamboman/mason-lspconfig.nvim" }
        use { "j-hui/fidget.nvim", ext = "fidget", tag = "legacy" }
        use { "microsoft/python-type-stubs", opt = true }
        use { "lvimuser/lsp-inlayhints.nvim", branch = "anticonceal", ext = "lsp-inlayhints" }
        use { "theHamsta/nvim-semantic-tokens", ext = "nvim-semantic-tokens" }

        -- git
        use { "lewis6991/gitsigns.nvim", ext = "gitsigns" }
        use { "sindrets/diffview.nvim", ext = "diffview" }
        
        -- Helpers
        use { "nvim-tree/nvim-tree.lua", config = get_config("nvim-tree"), ext = "nvim-tree-settings"}
        
        -- Auto-complete
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
        use { "github/copilot.vim" }
        
        -- UI
        use { "stevearc/dressing.nvim", ext = "dressing" }
        use { "folke/which-key.nvim", config = get_config("whichkey") }
        use { "simrat39/symbols-outline.nvim", cmd = "SymbolsOutline", ext = "symbols-outline" }
        use({
            "norcalli/nvim-colorizer.lua",
            config = function()
                require("colorizer").setup({ "*" })
            end,
        })
        use { "RRethy/vim-illuminate" }        

        -- Documentation
        use { "danymat/neogen", ext = "neogen" }
        
        -- Commenter
        use { "preservim/nerdcommenter" }
        
        -- Other
        use { "kylechui/nvim-surround", ext = "nvim-surround" }
        use { 'phaazon/hop.nvim', ext = "hop" }
        use {
            "windwp/nvim-autopairs",
            event = "InsertEnter",
            config = function()
                require("nvim-autopairs").setup {}
            end
        }
        use({
            "iamcco/markdown-preview.nvim",
            run = function()
                vim.fn["mkdp#util#install"]()
            end,
        })

        install_sync()
    end,
    config = {},
}
