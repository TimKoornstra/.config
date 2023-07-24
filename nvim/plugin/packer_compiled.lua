-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    after = { "nvim-cmp" },
    config = { 'require("plugins.config/luasnip")' },
    load_after = {},
    loaded = true,
    needs_bufread = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\n�\v\0\0\t\0\27\00176\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\b\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0B\4\3\2>\4\2\0039\4\b\1'\6\14\0'\a\15\0B\4\3\2>\4\3\0039\4\b\1'\6\16\0'\a\17\0B\4\3\2>\4\4\0039\4\b\1'\6\18\0'\a\19\0B\4\3\2>\4\5\0039\4\b\1'\6\20\0'\a\21\0B\4\3\2>\4\6\0039\4\b\1'\6\22\0'\a\23\0'\b\24\0B\4\4\0?\4\0\0=\3\5\0029\2\25\0009\4\26\1B\2\2\1K\0\1\0\topts\nsetup\f:qa<CR>\19  Quit NVIM\6q\21  Git Changes\b\\ D\24ﯻ  Toggle Sidebar\b\\ p\21  Colorscheme\n\\ t C!  Previously opened files\n\\ t o\19  Find file\n\\ t f :ene <BAR> startinsert <CR>\18  New file\6e\vbutton\fbuttons\1\r\0\0`                    ▄▄▄▄▄▪  • ▌ ▄ ·. .▄▄ ·                         g                     •██  ██ ·██ ▐███▪▐█ ▀.                        n                      ▐█.▪▐█·▐█ ▌▐▌▐█·▄▀▀▀█▄                       q                      ▐█▌·▐█▌██ ██▌▐█▌▐█▄▪▐█                       j                      ▀▀▀ ▀▀▀▀▀  █▪▀▀▀ ▀▀▀▀                        H                                             o8o                   H                                             `\"'                   Hooo. .oo.    .ooooo.   .ooooo.  oooo    ooo oooo  ooo. .oo.  .oo.  H`888P\"Y88b  d88' `88b d88' `88b  `88.  .8'  `888  `888P\"Y88bP\"Y88b H 888   888  888ooo888 888   888   `88..8'    888   888   888   888 H 888   888  888    .o 888   888    `888'     888   888   888   888 Ho888o o888o `Y8bod8P' `Y8bod8P'     `8'     o888o o888o o888o o888o\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\15����\4\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n4\0\1\5\0\4\0\0056\1\0\0009\1\1\1'\3\2\0009\4\3\0D\1\3\0\fordinal\a%s\vformat\vstring�\2\1\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0003\4\4\0=\4\5\0034\4\3\0005\5\6\0>\5\1\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\15text_align\vcenter\rfiletype\rNvimTree\ttext\18File Explorer\fnumbers\0\1\0\6\rtab_size\3\18\18modified_icon\b●\20separator_style\nslant\16diagnostics\rnvim_lsp\tview\16multiwindow\22max_prefix_length\3\5\nsetup\15bufferline\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewFocusFiles", "DiffviewToggleFiles", "DiffviewClose", "DiffviewRefresh", "DiffviewToggle", "DiffviewFileHistory" },
    config = { "\27LJ\2\n�\1\0\1\6\0\b\0\0196\1\0\0'\3\1\0B\1\2\0029\1\2\1B\1\1\2\15\0\1\0X\2\5�6\2\3\0009\2\4\2'\4\5\0B\2\2\1X\2\6�6\2\3\0009\2\4\2'\4\6\0009\5\a\0&\4\5\4B\2\2\1K\0\1\0\targs\18DiffviewOpen \18DiffviewClose\bcmd\bvim\21get_current_view\17diffview.lib\frequire�\20\1\0\n\0�\1\3�\0026\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0003\4\6\0005\5\a\0B\1\4\0016\1\0\0'\3\b\0B\1\2\0029\1\t\0015\3\n\0005\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\18\0005\5\17\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\4=\4\24\0035\4\25\0005\5\26\0=\5\27\0045\5\28\0=\5\29\4=\4\30\0035\4$\0005\5 \0005\6\31\0=\6!\0055\6\"\0=\6#\5=\5%\0045\5&\0=\5\29\4=\4'\0035\4(\0004\5\0\0=\5\29\4=\4)\0035\4*\0004\5\0\0=\5+\0044\5\0\0=\5,\4=\4-\0034\4\0\0=\4.\0035\4/\0005\0051\0009\0060\0=\0062\0059\0063\0=\0064\0059\0065\0=\0066\0059\0067\0=\0068\0059\0069\0=\6:\0059\6;\0=\6<\0059\6=\0=\6>\0059\6?\0=\6@\0059\6A\0=\6B\0059\6C\0=\6D\0059\6E\0'\bF\0B\6\2\2=\6G\0059\6E\0'\bH\0B\6\2\2=\6I\0059\6E\0'\bJ\0B\6\2\2=\6K\0059\6E\0'\bL\0B\6\2\2=\6M\0059\6E\0'\bN\0B\6\2\2=\6O\5=\5\24\0044\5\0\0=\5P\0044\5\0\0=\5Q\0044\5\3\0005\6S\0005\aR\0>\a\1\0069\aT\0'\tF\0B\a\2\0?\a\0\0>\6\1\0055\6V\0005\aU\0>\a\1\0069\aT\0'\tH\0B\a\2\0?\a\0\0>\6\2\5=\5W\0044\5\4\0005\6Y\0005\aX\0>\a\1\0069\aT\0'\tJ\0B\a\2\0?\a\0\0>\6\1\0055\6[\0005\aZ\0>\a\1\0069\aT\0'\tF\0B\a\2\0?\a\0\0>\6\2\0055\6]\0005\a\\\0>\a\1\0069\aT\0'\tH\0B\a\2\0?\a\0\0>\6\3\5=\5^\0045\5`\0009\6_\0=\6a\0059\6_\0=\6b\0059\6c\0=\6d\0059\6c\0=\6e\0059\6f\0=\6g\0059\6f\0=\6h\0059\6f\0=\6i\0059\6j\0=\6k\0059\6l\0=\6m\0059\6n\0=\6o\0059\6p\0=\6q\0059\6r\0=\6s\0059\6t\0=\6u\0059\6v\0*\b\1\0B\6\2\2=\6w\0059\6v\0*\b\2\0B\6\2\2=\6x\0059\0060\0=\0062\0059\0063\0=\0064\0059\0065\0=\0066\0059\0067\0=\0068\0059\0069\0=\6:\0059\6y\0=\6z\0059\6{\0=\6|\0059\6;\0=\6<\0059\6=\0=\6>\0059\6?\0=\6@\0059\6A\0=\6B\0059\6C\0=\6D\5=\5\30\0045\5~\0009\6}\0=\6\127\0059\6�\0=\6�\0059\6�\0=\6�\0059\6t\0=\6�\0059\6�\0=\6�\0059\6�\0=\6�\0059\6_\0=\6a\0059\6_\0=\6b\0059\6c\0=\6d\0059\6c\0=\6e\0059\6f\0=\6g\0059\6f\0=\6h\0059\6f\0=\6i\0059\6v\0*\b\1\0B\6\2\2=\6w\0059\6v\0*\b\2\0B\6\2\2=\6x\0059\0060\0=\0062\0059\0063\0=\0064\0059\0065\0=\0066\0059\0067\0=\0068\0059\0069\0=\6:\0059\6;\0=\6<\0059\6=\0=\6>\0059\6?\0=\6@\5=\5'\0045\5�\0009\6f\0=\0062\0059\6�\0=\6�\5=\5�\4=\4�\3B\1\2\1K\0\1\0\fkeymaps\17option_panel\6q\nclose\1\0\0\azM\20close_all_folds\azR\19open_all_folds\6L\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6f\24toggle_flatten_dirs\6i\18listing_style\n<c-f>\n<c-b>\16scroll_view\6l\20open_commit_log\6R\18refresh_files\6X\18restore_entry\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\ndiff4\1\3\0\0\0\b3do\1\3\0\0\6n\6x\1\3\0\0\0\b2do\1\3\0\0\6n\6x\1\3\0\0\0\b1do\1\3\0\0\6n\6x\ndiff3\1\3\0\0\0\b3do\1\3\0\0\6n\6x\fdiffget\1\3\0\0\0\b2do\1\3\0\0\6n\6x\ndiff2\ndiff1\adx\tnone\15<leader>ca\ball\15<leader>cb\tbase\15<leader>ct\vtheirs\15<leader>co\tours\20conflict_choose\a]x\18next_conflict\a[x\18prev_conflict\vg<C-x>\17cycle_layout\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\14goto_file\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\2\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\21commit_log_panel\1\0\0\23file_history_panel\1\0\2\vheight\3\16\rposition\vbottom\16log_options\1\0\0\15multi_file\1\0\1\16diff_merges\17first-parent\16single_file\1\0\0\1\0\1\16diff_merges\rcombined\15file_panel\15win_config\1\0\2\nwidth\3#\rposition\tleft\17tree_options\1\0\2\20folder_statuses\16only_folded\17flatten_dirs\2\1\0\1\18listing_style\ttree\tview\17file_history\1\0\1\vlayout\21diff2_horizontal\15merge_tool\1\0\2\vlayout\21diff3_horizontal\24disable_diagnostics\2\fdefault\1\0\0\1\0\1\vlayout\21diff2_horizontal\nsigns\1\0\3\tdone\b✓\14fold_open\b\16fold_closed\b\nicons\1\0\2\16folder_open\b\18folder_closed\b\fgit_cmd\1\2\0\0\bgit\1\0\3\14use_icons\2\21enhanced_diff_hl\1\18diff_binaries\1\nsetup\rdiffview\1\0\1\nnargs\6*\0\19DiffviewToggle\29nvim_create_user_command\bapi\bvim\21diffview.actions\frequire\a����\4\1����\v\1����\3\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\f\0005\5\v\0=\5\5\4=\4\r\0035\4\15\0005\5\14\0=\5\5\4=\4\16\3=\3\17\2B\0\2\1K\0\1\0\vselect\fbuiltin\1\0\0\1\0\1\rwinblend\3\0\bnui\1\0\0\1\0\1\rwinblend\3\0\fbackend\1\0\0\1\5\0\0\ffzf_lua\bfzf\fbuiltin\bnui\ninput\1\0\0\16win_options\1\0\0\1\0\1\rwinblend\3\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n3\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\20NvimTreeRefresh\bcmd\bvim7\1\0\4\1\3\0\b-\0\0\0B\0\1\0016\0\0\0009\0\1\0003\2\2\0)\0032\0B\0\3\1K\0\1\0\0�\0\rdefer_fn\bvim\20\1\1\2\0\1\0\0033\1\0\0002\0\0�L\1\2\0\0a\0\4\v\2\4\0\16\14\0\3\0X\4\1�4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\6\0\0\18\a\1\0-\b\1\0\18\n\2\0B\b\2\2\18\t\3\0B\4\5\1K\0\1\0\0�\2�\bset\vkeymap\bvim\vbuffer�\6\1\1\n\0(\0I6\1\0\0009\1\1\0019\1\2\0013\2\3\0003\3\4\0\18\4\3\0'\6\5\0'\a\6\0009\b\a\0015\t\b\0B\4\5\1\18\4\3\0'\6\5\0'\a\t\0009\b\n\0015\t\v\0B\4\5\1\18\4\3\0'\6\5\0'\a\f\0009\b\r\0015\t\14\0B\4\5\1\18\4\3\0'\6\5\0'\a\15\0009\b\16\0015\t\17\0B\4\5\1\18\4\3\0'\6\5\0'\a\18\0009\b\19\0015\t\20\0B\4\5\1\18\4\3\0'\6\5\0'\a\21\0009\b\22\0015\t\23\0B\4\5\1\18\4\3\0'\6\5\0'\a\24\0009\b\25\0015\t\26\0B\4\5\1\18\4\3\0'\6\5\0'\a\27\0009\b\28\0015\t\29\0B\4\5\1\18\4\3\0'\6\5\0'\a\30\0009\b\31\0015\t \0B\4\5\1\18\4\3\0'\6\5\0'\a!\0009\b\"\0015\t#\0B\4\5\1\18\4\3\0005\6$\0'\a%\0009\b&\0015\t'\0B\4\5\0012\0\0�K\0\1\0\1\0\1\tdesc\16Select hunk\16select_hunk\15<leader>ih\1\3\0\0\6o\6x\1\0\1\tdesc\14Diff this\rdiffthis\15<leader>hd\1\0\1\tdesc\30Toggle current line blame\30toggle_current_line_blame\15<leader>hb\1\0\1\tdesc\17Preview hunk\17preview_hunk\15<leader>hp\1\0\1\tdesc\17Reset buffer\17reset_buffer\15<leader>hR\1\0\1\tdesc\20Undo stage hunk\20undo_stage_hunk\15<leader>hu\1\0\1\tdesc\17Stage buffer\17stage_buffer\15<leader>hS\1\0\1\tdesc\15Reset hunk\15reset_hunk\15<leader>hr\1\0\1\tdesc\15Stage hunk\15stage_hunk\15<leader>hs\1\0\1\tdesc\14Prev Hunk\14prev_hunk\a[c\1\0\1\tdesc\14Next Hunk\14next_hunk\a]c\6n\0\0\rgitsigns\vloaded\fpackage�\3\1\0\5\0\24\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\18\0=\3\19\0023\3\20\0=\3\21\0025\3\22\0=\3\23\2B\0\2\1K\0\1\0\17watch_gitdir\1\0\1\rinterval\3�\a\14on_attach\0\28current_line_blame_opts\1\0\4\ndelay\3�\1\14virt_text\2\18virt_text_pos\beol\22ignore_whitespace\1\nsigns\1\0\3\23current_line_blame\2\20update_debounce\3�\1\18sign_priority\3\6\14untracked\1\0\2\ahl\nGreen\ttext\b│\17changedelete\1\0\2\ahl\bRed\ttext\6~\14topdelete\1\0\2\ahl\bRed\ttext\6-\vdelete\1\0\2\ahl\bRed\ttext\b│\vchange\1\0\2\ahl\tBlue\ttext\b│\badd\1\0\0\1\0\2\ahl\nGreen\ttext\b│\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lsp-inlayhints.nvim"] = {
    config = { "\27LJ\2\n�\1\0\4\b\0\a\1\22\t\1\0\0X\4\a�9\4\0\0029\4\1\4\14\0\4\0X\4\3�'\4\2\0L\4\2\0X\4\6�9\4\3\0029\4\1\4\14\0\4\0X\4\2�'\4\2\0L\4\2\0006\4\4\0009\4\5\4\f\6\0\0X\6\1�4\6\0\0'\a\6\0D\4\3\0\a, \vconcat\ntable\15type_hints\5\tshow\20parameter_hints\4�\1\0\4\b\0\6\1#\a\3\0\0X\4\4�+\4\1\0=\4\1\1+\4\1\0=\4\2\0014\4\0\0\21\5\4\0\22\5\0\0059\6\1\1\15\0\6\0X\a\3�5\6\3\0\14\0\6\0X\a\1�+\6\0\0<\6\5\4\21\5\4\0\22\5\0\0054\6\3\0>\0\1\0069\a\4\2>\a\2\6<\6\5\4\21\5\4\0\22\5\0\0059\6\2\1\15\0\6\0X\a\3�5\6\5\0\14\0\6\0X\a\1�+\6\0\0<\6\5\4L\4\2\0\1\3\0\0\6 \vNormal\14highlight\1\3\0\0\6 \vNormal\17paddingRight\16paddingLeft\16sumneko_lua\2�\1\1\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0003\4\5\0=\4\6\0033\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\16inlay_hints\24virt_text_formatter\0\20label_formatter\0\1\0\1\22only_current_line\1\1\0\1\23enabled_at_startup\1\nsetup\19lsp-inlayhints\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/lsp-inlayhints.nvim",
    url = "https://github.com/lvimuser/lsp-inlayhints.nvim"
  },
  ["lualine.nvim"] = {
    config = { 'require("plugins.config/lualine")' },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  neogen = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\5\0005\5\4\0=\5\6\4=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14languages\vpython\1\0\0\rtemplate\1\0\0\1\0\1\26annotation_convention\rnumpydoc\1\0\1\fenabled\2\nsetup\vneogen\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/neogen",
    url = "https://github.com/danymat/neogen"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nerdcommenter",
    url = "https://github.com/preservim/nerdcommenter"
  },
  ["nvim-cmp"] = {
    config = { 'require("plugins.config/cmp_config")' },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("plugins.config/lsp_config")' },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-semantic-tokens"] = {
    config = { "\27LJ\2\n�\1\0\0\a\0\6\1\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\3\0006\4\0\0'\6\4\0B\4\2\0?\4\0\0=\3\5\2B\0\2\1K\0\1\0\17highlighters+nvim-semantic-tokens.table-highlighter\1\0\1\vpreset\fdefault\nsetup\25nvim-semantic-tokens\frequire\3����\4\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-semantic-tokens",
    url = "https://github.com/theHamsta/nvim-semantic-tokens"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("plugins.config/nvim-tree")' },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedarkpro.nvim"] = {
    config = { 'require("plugins.config/onedarkpro")' },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["python-type-stubs"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/python-type-stubs",
    url = "https://github.com/microsoft/python-type-stubs"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    config = { "\27LJ\2\n�\f\0\0\5\0B\0G6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0024\3\0\0=\3\n\0024\3\0\0=\3\v\0025\3\r\0005\4\f\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\0035\4\19\0=\4\20\0035\4\21\0=\4\22\0035\4\23\0=\4\24\0035\4\25\0=\4\26\0035\4\27\0=\4\28\0035\4\29\0=\4\30\0035\4\31\0=\4 \0035\4!\0=\4\"\0035\4#\0=\4$\0035\4%\0=\4&\0035\4'\0=\4(\0035\4)\0=\4*\0035\4+\0=\4,\0035\4-\0=\4.\0035\4/\0=\0040\0035\0041\0=\0042\0035\0043\0=\0044\0035\0045\0=\0046\0035\0047\0=\0048\0035\0049\0=\4:\0035\4;\0=\4<\0035\4=\0=\4>\0035\4?\0=\4@\3=\3A\2B\0\2\1K\0\1\0\fsymbols\18TypeParameter\1\0\2\ticon\t𝙏\ahl\16TSParameter\rOperator\1\0\2\ticon\6+\ahl\15TSOperator\nEvent\1\0\2\ticon\t🗲\ahl\vTSType\vStruct\1\0\2\ticon\t𝓢\ahl\vTSType\15EnumMember\1\0\2\ticon\b\ahl\fTSField\tNull\1\0\2\ticon\tNULL\ahl\vTSType\bKey\1\0\2\ticon\t🔐\ahl\vTSType\vObject\1\0\2\ticon\b⦿\ahl\vTSType\nArray\1\0\2\ticon\b\ahl\15TSConstant\fBoolean\1\0\2\ticon\b⊨\ahl\14TSBoolean\vNumber\1\0\2\ticon\6#\ahl\rTSNumber\vString\1\0\2\ticon\t𝓐\ahl\rTSString\rConstant\1\0\2\ticon\b\ahl\15TSConstant\rVariable\1\0\2\ticon\b\ahl\15TSConstant\rFunction\1\0\2\ticon\b\ahl\15TSFunction\14Interface\1\0\2\ticon\bﰮ\ahl\vTSType\tEnum\1\0\2\ticon\bℰ\ahl\vTSType\16Constructor\1\0\2\ticon\b\ahl\18TSConstructor\nField\1\0\2\ticon\b\ahl\fTSField\rProperty\1\0\2\ticon\b\ahl\rTSMethod\vMethod\1\0\2\ticon\aƒ\ahl\rTSMethod\nClass\1\0\2\ticon\t𝓒\ahl\vTSType\fPackage\1\0\2\ticon\b\ahl\16TSNamespace\14Namespace\1\0\2\ticon\b\ahl\16TSNamespace\vModule\1\0\2\ticon\b\ahl\16TSNamespace\tFile\1\0\0\1\0\2\ticon\b\ahl\nTSURI\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\v\vunfold\6l\tfold\6h\17code_actions\6a\18rename_symbol\6r\15fold_reset\6R\19toggle_preview\6K\17hover_symbol\14<C-space>\19focus_location\6o\18goto_location\t<Cr>\15unfold_all\6E\rfold_all\6W\1\3\0\0\n<Esc>\6q\17fold_markers\1\3\0\0\b\b\1\0\r\27highlight_hovered_item\2\16show_guides\2\twrap\1\nwidth\3\25\22auto_unfold_hover\2\25preview_bg_highlight\nPmenu\24show_symbol_details\2\26show_relative_numbers\1\17show_numbers\1\15auto_close\1\19relative_width\2\17auto_preview\1\rposition\nright\nsetup\20symbols-outline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-media-files.nvim"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/telescope-media-files.nvim",
    url = "https://github.com/nvim-telescope/telescope-media-files.nvim"
  },
  ["telescope-project.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\fproject\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-file-browser.nvim", "telescope-media-files.nvim", "telescope-project.nvim" },
    config = { 'require("plugins.config/telescope")' },
    loaded = true,
    only_config = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["which-key.nvim"] = {
    config = { 'require("plugins.config/whichkey")' },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^diffview"] = "diffview.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: diffview.nvim
time([[Setup for diffview.nvim]], true)
try_loadstring("\27LJ\2\ne\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\24:DiffviewToggle<cr>\14<leader>D\6n\bset\vkeymap\bvim\0", "setup", "diffview.nvim")
time([[Setup for diffview.nvim]], false)
-- Setup for: neogen
time([[Setup for neogen]], true)
try_loadstring("\27LJ\2\nf\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\1\tdesc\vNeogen\20<cmd>Neogen<cr>\15<leader>gd\6n\bset\vkeymap\bvim\0", "setup", "neogen")
time([[Setup for neogen]], false)
time([[packadd for neogen]], true)
vim.cmd [[packadd neogen]]
time([[packadd for neogen]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require("plugins.config/whichkey")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require("plugins.config/lsp_config")
time([[Config for nvim-lspconfig]], false)
-- Config for: onedarkpro.nvim
time([[Config for onedarkpro.nvim]], true)
require("plugins.config/onedarkpro")
time([[Config for onedarkpro.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("plugins.config/telescope")
time([[Config for telescope.nvim]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\a\0005\4\5\0005\5\4\0=\5\6\4=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14languages\vpython\1\0\0\rtemplate\1\0\0\1\0\1\26annotation_convention\rnumpydoc\1\0\1\fenabled\2\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\18\0\0236\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\0025\3\t\0005\4\b\0=\4\n\0035\4\f\0005\5\v\0=\5\5\4=\4\r\0035\4\15\0005\5\14\0=\5\5\4=\4\16\3=\3\17\2B\0\2\1K\0\1\0\vselect\fbuiltin\1\0\0\1\0\1\rwinblend\3\0\bnui\1\0\0\1\0\1\rwinblend\3\0\fbackend\1\0\0\1\5\0\0\ffzf_lua\bfzf\fbuiltin\bnui\ninput\1\0\0\16win_options\1\0\0\1\0\1\rwinblend\3\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: nvim-semantic-tokens
time([[Config for nvim-semantic-tokens]], true)
try_loadstring("\27LJ\2\n�\1\0\0\a\0\6\1\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\3\0006\4\0\0'\6\4\0B\4\2\0?\4\0\0=\3\5\2B\0\2\1K\0\1\0\17highlighters+nvim-semantic-tokens.table-highlighter\1\0\1\vpreset\fdefault\nsetup\25nvim-semantic-tokens\frequire\3����\4\0", "config", "nvim-semantic-tokens")
time([[Config for nvim-semantic-tokens]], false)
-- Config for: lsp-inlayhints.nvim
time([[Config for lsp-inlayhints.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\4\b\0\a\1\22\t\1\0\0X\4\a�9\4\0\0029\4\1\4\14\0\4\0X\4\3�'\4\2\0L\4\2\0X\4\6�9\4\3\0029\4\1\4\14\0\4\0X\4\2�'\4\2\0L\4\2\0006\4\4\0009\4\5\4\f\6\0\0X\6\1�4\6\0\0'\a\6\0D\4\3\0\a, \vconcat\ntable\15type_hints\5\tshow\20parameter_hints\4�\1\0\4\b\0\6\1#\a\3\0\0X\4\4�+\4\1\0=\4\1\1+\4\1\0=\4\2\0014\4\0\0\21\5\4\0\22\5\0\0059\6\1\1\15\0\6\0X\a\3�5\6\3\0\14\0\6\0X\a\1�+\6\0\0<\6\5\4\21\5\4\0\22\5\0\0054\6\3\0>\0\1\0069\a\4\2>\a\2\6<\6\5\4\21\5\4\0\22\5\0\0059\6\2\1\15\0\6\0X\a\3�5\6\5\0\14\0\6\0X\a\1�+\6\0\0<\6\5\4L\4\2\0\1\3\0\0\6 \vNormal\14highlight\1\3\0\0\6 \vNormal\17paddingRight\16paddingLeft\16sumneko_lua\2�\1\1\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0003\4\5\0=\4\6\0033\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\16inlay_hints\24virt_text_formatter\0\20label_formatter\0\1\0\1\22only_current_line\1\1\0\1\23enabled_at_startup\1\nsetup\19lsp-inlayhints\frequire\0", "config", "lsp-inlayhints.nvim")
time([[Config for lsp-inlayhints.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("plugins.config/nvim-tree")
time([[Config for nvim-tree.lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\2\n4\0\1\5\0\4\0\0056\1\0\0009\1\1\1'\3\2\0009\4\3\0D\1\3\0\fordinal\a%s\vformat\vstring�\2\1\0\6\0\n\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0003\4\4\0=\4\5\0034\4\3\0005\5\6\0>\5\1\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\15text_align\vcenter\rfiletype\rNvimTree\ttext\18File Explorer\fnumbers\0\1\0\6\rtab_size\3\18\18modified_icon\b●\20separator_style\nslant\16diagnostics\rnvim_lsp\tview\16multiwindow\22max_prefix_length\3\5\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")

vim.cmd [[ packadd alpha-nvim ]]

-- Config for: alpha-nvim
try_loadstring("\27LJ\2\n�\v\0\0\t\0\27\00176\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\b\0009\4\b\1'\6\t\0'\a\n\0'\b\v\0B\4\4\2>\4\1\0039\4\b\1'\6\f\0'\a\r\0B\4\3\2>\4\2\0039\4\b\1'\6\14\0'\a\15\0B\4\3\2>\4\3\0039\4\b\1'\6\16\0'\a\17\0B\4\3\2>\4\4\0039\4\b\1'\6\18\0'\a\19\0B\4\3\2>\4\5\0039\4\b\1'\6\20\0'\a\21\0B\4\3\2>\4\6\0039\4\b\1'\6\22\0'\a\23\0'\b\24\0B\4\4\0?\4\0\0=\3\5\0029\2\25\0009\4\26\1B\2\2\1K\0\1\0\topts\nsetup\f:qa<CR>\19  Quit NVIM\6q\21  Git Changes\b\\ D\24ﯻ  Toggle Sidebar\b\\ p\21  Colorscheme\n\\ t C!  Previously opened files\n\\ t o\19  Find file\n\\ t f :ene <BAR> startinsert <CR>\18  New file\6e\vbutton\fbuttons\1\r\0\0`                    ▄▄▄▄▄▪  • ▌ ▄ ·. .▄▄ ·                         g                     •██  ██ ·██ ▐███▪▐█ ▀.                        n                      ▐█.▪▐█·▐█ ▌▐▌▐█·▄▀▀▀█▄                       q                      ▐█▌·▐█▌██ ██▌▐█▌▐█▄▪▐█                       j                      ▀▀▀ ▀▀▀▀▀  █▪▀▀▀ ▀▀▀▀                        H                                             o8o                   H                                             `\"'                   Hooo. .oo.    .ooooo.   .ooooo.  oooo    ooo oooo  ooo. .oo.  .oo.  H`888P\"Y88b  d88' `88b d88' `88b  `88.  .8'  `888  `888P\"Y88bP\"Y88b H 888   888  888ooo888 888   888   `88..8'    888   888   888   888 H 888   888  888    .o 888   888    `888'     888   888   888   888 Ho888o o888o `Y8bod8P' `Y8bod8P'     `8'     o888o o888o o888o o888o\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\15����\4\0", "config", "alpha-nvim")

vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
require("plugins.config/lualine")

vim.cmd [[ packadd nvim-treesitter ]]
vim.cmd [[ packadd nvim-treesitter-textobjects ]]
vim.cmd [[ packadd telescope-project.nvim ]]

-- Config for: telescope-project.nvim
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\fproject\19load_extension\14telescope\frequire\0", "config", "telescope-project.nvim")

vim.cmd [[ packadd telescope-media-files.nvim ]]
vim.cmd [[ packadd telescope-file-browser.nvim ]]
vim.cmd [[ packadd friendly-snippets ]]
vim.cmd [[ packadd LuaSnip ]]

-- Config for: LuaSnip
require("plugins.config/luasnip")

vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
require("plugins.config/cmp_config")

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'DiffviewClose', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewClose ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewOpen', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewToggleFiles', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewToggleFiles', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewToggleFiles ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewRefresh', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewRefresh', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewRefresh ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewFileHistory', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewFileHistory', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewFileHistory ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewToggle', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SymbolsOutline', function(cmdargs)
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutline', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'symbols-outline.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SymbolsOutline ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewFocusFiles', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewFocusFiles', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewFocusFiles ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
