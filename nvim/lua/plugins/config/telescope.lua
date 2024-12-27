local function setup_telescope()
  local keymap = vim.keymap
  local telescope = require("telescope")

  telescope.setup {
    defaults = {
      vimgrep_arguments = {
        "rg",
        "-L",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
      },
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "ascending",
      layout_strategy = "horizontal",
      grouped = true,
      layout_config = {
        horizontal = {
          preview_width = 0.75,
          results_width = 0.75,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.87,
        preview_cutoff = 100,
      },
      prompt_prefix = "   ",
      selection_caret = "> ",
      entry_prefix = "  ",
      file_sorter = require("telescope.sorters").get_fuzzy_file,
      file_ignore_patterns = { "node_modules" },
      generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
      path_display = { "smart" },
      winblend = 0,
      border = {},
      color_devicons = true,
      set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
      buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,

      extensions = {
        file_browser = {
          theme = "ivy",
          hijack_netrw = true,
          auto_preview = true,
          grouped = true,
        },
        media_files = {
          -- Filetypes allowed for preview
          filetypes = { "png", "jpg", "jpeg", "webp", "pdf", "mp4" },
          find_cmd = "rg",
        },
      },
    },
    pickers = {
      diagnostics = {
        theme = "ivy",
        layout_strategy = "vertical",
        layout_config = {
          preview_height = 0.5,
          width = 0.9,
          height = 0.8,
          mirror = false,
        },
        border = true,
        previewer = true,
        preview_cutoff = 0,
      },
    },
  }

  -- Load the extensions
  telescope.load_extension("file_browser")
  telescope.load_extension("media_files")

  -- Define key mappings for Telescope
  keymap.set("n", "<leader>ts", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "FZF current buffer" })
  keymap.set("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
  keymap.set("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
  keymap.set("n", "<leader>to", "<cmd>Telescope oldfiles<cr>", { desc = "Old files" })
  keymap.set("n", "<leader>tb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
  keymap.set("n", "<leader>tC", "<cmd>Telescope colorscheme<cr>", { desc = "Colorscheme" })
  keymap.set("n", "<Leader>td", "<cmd>Telescope diagnostics<cr>", { desc = "Diagnostics" })
  keymap.set("n", "<Leader>tr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
  keymap.set("n", "<Leader>tD", "<cmd>Telescope lsp_definitions<cr>", { desc = "Definitions" })
  keymap.set("n", "<leader>tm", "<cmd>Telescope media_files<cr>", { desc = "Media files" })
  keymap.set("n", "<leader>tp", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>",
    { desc = "File browser" })
end

-- Call the setup function
setup_telescope()
