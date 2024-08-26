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
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["alpha-nvim"] = {
    config = { "\27LJ\2\2�\v\0\0\b\0\27\00176\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\b\0009\4\b\1'\5\t\0'\6\n\0'\a\v\0B\4\4\2>\4\1\0039\4\b\1'\5\f\0'\6\r\0B\4\3\2>\4\2\0039\4\b\1'\5\14\0'\6\15\0B\4\3\2>\4\3\0039\4\b\1'\5\16\0'\6\17\0B\4\3\2>\4\4\0039\4\b\1'\5\18\0'\6\19\0B\4\3\2>\4\5\0039\4\b\1'\5\20\0'\6\21\0B\4\3\2>\4\6\0039\4\b\1'\5\22\0'\6\23\0'\a\24\0B\4\4\0?\4\0\0=\3\5\0029\2\25\0009\3\26\1B\2\2\1K\0\1\0\topts\nsetup\f:qa<CR>\19  Quit NVIM\6q\21  Git Changes\b\\ D\24ﯻ  Toggle Sidebar\b\\ p\21  Colorscheme\n\\ t C!  Previously opened files\n\\ t o\19  Find file\n\\ t f :ene <BAR> startinsert <CR>\18  New file\6e\vbutton\fbuttons\1\r\0\0`                    ▄▄▄▄▄▪  • ▌ ▄ ·. .▄▄ ·                         g                     •██  ██ ·██ ▐███▪▐█ ▀.                        n                      ▐█.▪▐█·▐█ ▌▐▌▐█·▄▀▀▀█▄                       q                      ▐█▌·▐█▌██ ██▌▐█▌▐█▄▪▐█                       j                      ▀▀▀ ▀▀▀▀▀  █▪▀▀▀ ▀▀▀▀                        H                                             o8o                   H                                             `\"'                   Hooo. .oo.    .ooooo.   .ooooo.  oooo    ooo oooo  ooo. .oo.  .oo.  H`888P\"Y88b  d88' `88b d88' `88b  `88.  .8'  `888  `888P\"Y88bP\"Y88b H 888   888  888ooo888 888   888   `88..8'    888   888   888   888 H 888   888  888    .o 888   888    `888'     888   888   888   888 Ho888o o888o `Y8bod8P' `Y8bod8P'     `8'     o888o o888o o888o o888o\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\15����\4\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/alpha-nvim",
    url = "https://github.com/goolord/alpha-nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\0024\0\1\4\0\4\0\0056\1\0\0009\1\1\1'\2\2\0009\3\3\0D\1\3\0\fordinal\a%s\vformat\vstring�\2\1\0\5\0\n\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\3\0003\3\4\0=\3\5\0024\3\3\0005\4\6\0>\4\1\3=\3\a\2=\2\t\1B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\fnumbers\0\1\0\6\22max_prefix_length\3\5\16diagnostics\rnvim_lsp\tview\16multiwindow\rtab_size\3\18\20separator_style\nslant\18modified_icon\b●\nsetup\15bufferline\frequire\0" },
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
    config = { "\27LJ\2\2�\1\0\1\5\0\b\0\0196\1\0\0'\2\1\0B\1\2\0029\1\2\1B\1\1\2\15\0\1\0X\2\5�6\2\3\0009\2\4\2'\3\5\0B\2\2\1X\2\6�6\2\3\0009\2\4\2'\3\6\0009\4\a\0&\3\4\3B\2\2\1K\0\1\0\targs\18DiffviewOpen \18DiffviewClose\bcmd\bvim\21get_current_view\17diffview.lib\frequire�\20\1\0\b\0�\1\3�\0026\0\0\0'\1\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\2\5\0003\3\6\0005\4\a\0B\1\4\0016\1\0\0'\2\b\0B\1\2\0029\1\t\0015\2\n\0005\3\v\0=\3\f\0025\3\r\0=\3\14\0025\3\15\0=\3\16\0025\3\18\0005\4\17\0=\4\19\0035\4\20\0=\4\21\0035\4\22\0=\4\23\3=\3\24\0025\3\25\0005\4\26\0=\4\27\0035\4\28\0=\4\29\3=\3\30\0025\3$\0005\4 \0005\5\31\0=\5!\0045\5\"\0=\5#\4=\4%\0035\4&\0=\4\29\3=\3'\0025\3(\0004\4\0\0=\4\29\3=\3)\0025\3*\0004\4\0\0=\4+\0034\4\0\0=\4,\3=\3-\0024\3\0\0=\3.\0025\3/\0005\0041\0009\0050\0=\0052\0049\0053\0=\0054\0049\0055\0=\0056\0049\0057\0=\0058\0049\0059\0=\5:\0049\5;\0=\5<\0049\5=\0=\5>\0049\5?\0=\5@\0049\5A\0=\5B\0049\5C\0=\5D\0049\5E\0'\6F\0B\5\2\2=\5G\0049\5E\0'\6H\0B\5\2\2=\5I\0049\5E\0'\6J\0B\5\2\2=\5K\0049\5E\0'\6L\0B\5\2\2=\5M\0049\5E\0'\6N\0B\5\2\2=\5O\4=\4\24\0034\4\0\0=\4P\0034\4\0\0=\4Q\0034\4\3\0005\5S\0005\6R\0>\6\1\0059\6T\0'\aF\0B\6\2\0?\6\0\0>\5\1\0045\5V\0005\6U\0>\6\1\0059\6T\0'\aH\0B\6\2\0?\6\0\0>\5\2\4=\4W\0034\4\4\0005\5Y\0005\6X\0>\6\1\0059\6T\0'\aJ\0B\6\2\0?\6\0\0>\5\1\0045\5[\0005\6Z\0>\6\1\0059\6T\0'\aF\0B\6\2\0?\6\0\0>\5\2\0045\5]\0005\6\\\0>\6\1\0059\6T\0'\aH\0B\6\2\0?\6\0\0>\5\3\4=\4^\0035\4`\0009\5_\0=\5a\0049\5_\0=\5b\0049\5c\0=\5d\0049\5c\0=\5e\0049\5f\0=\5g\0049\5f\0=\5h\0049\5f\0=\5i\0049\5j\0=\5k\0049\5l\0=\5m\0049\5n\0=\5o\0049\5p\0=\5q\0049\5r\0=\5s\0049\5t\0=\5u\0049\5v\0*\6\1\0B\5\2\2=\5w\0049\5v\0*\6\2\0B\5\2\2=\5x\0049\0050\0=\0052\0049\0053\0=\0054\0049\0055\0=\0056\0049\0057\0=\0058\0049\0059\0=\5:\0049\5y\0=\5z\0049\5{\0=\5|\0049\5;\0=\5<\0049\5=\0=\5>\0049\5?\0=\5@\0049\5A\0=\5B\0049\5C\0=\5D\4=\4\30\0035\4~\0009\5}\0=\5\127\0049\5�\0=\5�\0049\5�\0=\5�\0049\5t\0=\5�\0049\5�\0=\5�\0049\5�\0=\5�\0049\5_\0=\5a\0049\5_\0=\5b\0049\5c\0=\5d\0049\5c\0=\5e\0049\5f\0=\5g\0049\5f\0=\5h\0049\5f\0=\5i\0049\5v\0*\6\1\0B\5\2\2=\5w\0049\5v\0*\6\2\0B\5\2\2=\5x\0049\0050\0=\0052\0049\0053\0=\0054\0049\0055\0=\0056\0049\0057\0=\0058\0049\0059\0=\5:\0049\5;\0=\5<\0049\5=\0=\5>\0049\5?\0=\5@\4=\4'\0035\4�\0009\5f\0=\0052\0049\5�\0=\5�\4=\4�\3=\3�\2B\1\2\1K\0\1\0\fkeymaps\17option_panel\6q\nclose\1\0\0\azM\20close_all_folds\azR\19open_all_folds\6L\6y\14copy_hash\f<C-A-d>\21open_in_diffview\ag!\1\0\0\foptions\6f\24toggle_flatten_dirs\6i\18listing_style\n<c-f>\n<c-b>\16scroll_view\6l\20open_commit_log\6R\18refresh_files\6X\18restore_entry\6U\16unstage_all\6S\14stage_all\6-\23toggle_stage_entry\18<2-LeftMouse>\6o\t<cr>\17select_entry\t<up>\6k\15prev_entry\v<down>\6j\1\0\0\15next_entry\ndiff4\1\3\0\0\0\b3do\1\3\0\0\6n\6x\1\3\0\0\0\b2do\1\3\0\0\6n\6x\1\3\0\0\0\b1do\1\3\0\0\6n\6x\ndiff3\1\3\0\0\0\b3do\1\3\0\0\6n\6x\fdiffget\1\3\0\0\0\b2do\1\3\0\0\6n\6x\ndiff2\ndiff1\adx\tnone\15<leader>ca\ball\15<leader>cb\tbase\15<leader>ct\vtheirs\15<leader>co\tours\20conflict_choose\a]x\18next_conflict\a[x\18prev_conflict\vg<C-x>\17cycle_layout\14<leader>b\17toggle_files\14<leader>e\16focus_files\f<C-w>gf\18goto_file_tab\15<C-w><C-f>\20goto_file_split\agf\14goto_file\f<s-tab>\22select_prev_entry\n<tab>\1\0\0\22select_next_entry\1\0\1\21disable_defaults\2\nhooks\17default_args\24DiffviewFileHistory\17DiffviewOpen\1\0\0\21commit_log_panel\1\0\0\23file_history_panel\1\0\2\vheight\3\16\rposition\vbottom\16log_options\1\0\0\15multi_file\1\0\1\16diff_merges\17first-parent\16single_file\1\0\0\1\0\1\16diff_merges\rcombined\15file_panel\15win_config\1\0\2\nwidth\3#\rposition\tleft\17tree_options\1\0\2\17flatten_dirs\2\20folder_statuses\16only_folded\1\0\1\18listing_style\ttree\tview\17file_history\1\0\1\vlayout\21diff2_horizontal\15merge_tool\1\0\2\24disable_diagnostics\2\vlayout\21diff3_horizontal\fdefault\1\0\0\1\0\1\vlayout\21diff2_horizontal\nsigns\1\0\3\tdone\b✓\14fold_open\b\16fold_closed\b\nicons\1\0\2\16folder_open\b\18folder_closed\b\fgit_cmd\1\2\0\0\bgit\1\0\3\21enhanced_diff_hl\1\14use_icons\2\18diff_binaries\1\nsetup\rdiffview\1\0\1\nnargs\6*\0\19DiffviewToggle\29nvim_create_user_command\bapi\bvim\21diffview.actions\frequire\a����\4\1����\v\1����\3\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\2�\1\0\0\5\0\18\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\0015\2\t\0005\3\b\0=\3\n\0025\3\f\0005\4\v\0=\4\5\3=\3\r\0025\3\15\0005\4\14\0=\4\5\3=\3\16\2=\2\17\1B\0\2\1K\0\1\0\vselect\fbuiltin\1\0\0\1\0\1\rwinblend\3\0\bnui\1\0\0\1\0\1\rwinblend\3\0\fbackend\1\0\0\1\5\0\0\ffzf_lua\bfzf\fbuiltin\bnui\ninput\1\0\0\16win_options\1\0\0\1\0\1\rwinblend\3\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\2U\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0" },
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
    config = { "\27LJ\2\0023\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0\20NvimTreeRefresh\bcmd\bvim7\1\0\3\1\3\0\b-\0\0\0B\0\1\0016\0\0\0009\0\1\0003\1\2\0)\0022\0B\0\3\1K\0\1\0\0�\0\rdefer_fn\bvim\20\1\1\2\0\1\0\0033\1\0\0002\0\0�L\1\2\0\0a\0\4\t\2\4\0\16\14\0\3\0X\4\1�4\3\0\0-\4\0\0=\4\0\0036\4\1\0009\4\2\0049\4\3\4\18\5\0\0\18\6\1\0-\a\1\0\18\b\2\0B\a\2\2\18\b\3\0B\4\5\1K\0\1\0\0�\2�\bset\vkeymap\bvim\vbuffer�\6\1\1\t\0(\0I6\1\0\0009\1\1\0019\1\2\0013\2\3\0003\3\4\0\18\4\3\0'\5\5\0'\6\6\0009\a\a\0015\b\b\0B\4\5\1\18\4\3\0'\5\5\0'\6\t\0009\a\n\0015\b\v\0B\4\5\1\18\4\3\0'\5\5\0'\6\f\0009\a\r\0015\b\14\0B\4\5\1\18\4\3\0'\5\5\0'\6\15\0009\a\16\0015\b\17\0B\4\5\1\18\4\3\0'\5\5\0'\6\18\0009\a\19\0015\b\20\0B\4\5\1\18\4\3\0'\5\5\0'\6\21\0009\a\22\0015\b\23\0B\4\5\1\18\4\3\0'\5\5\0'\6\24\0009\a\25\0015\b\26\0B\4\5\1\18\4\3\0'\5\5\0'\6\27\0009\a\28\0015\b\29\0B\4\5\1\18\4\3\0'\5\5\0'\6\30\0009\a\31\0015\b \0B\4\5\1\18\4\3\0'\5\5\0'\6!\0009\a\"\0015\b#\0B\4\5\1\18\4\3\0005\5$\0'\6%\0009\a&\0015\b'\0B\4\5\0012\0\0�K\0\1\0\1\0\1\tdesc\16Select hunk\16select_hunk\15<leader>ih\1\3\0\0\6o\6x\1\0\1\tdesc\14Diff this\rdiffthis\15<leader>hd\1\0\1\tdesc\30Toggle current line blame\30toggle_current_line_blame\15<leader>hb\1\0\1\tdesc\17Preview hunk\17preview_hunk\15<leader>hp\1\0\1\tdesc\17Reset buffer\17reset_buffer\15<leader>hR\1\0\1\tdesc\20Undo stage hunk\20undo_stage_hunk\15<leader>hu\1\0\1\tdesc\17Stage buffer\17stage_buffer\15<leader>hS\1\0\1\tdesc\15Reset hunk\15reset_hunk\15<leader>hr\1\0\1\tdesc\15Stage hunk\15stage_hunk\15<leader>hs\1\0\1\tdesc\14Prev Hunk\14prev_hunk\a[c\1\0\1\tdesc\14Next Hunk\14next_hunk\a]c\6n\0\0\rgitsigns\vloaded\fpackage�\3\1\0\4\0\24\0\0276\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\16\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\0025\3\f\0=\3\r\0025\3\14\0=\3\15\2=\2\17\0015\2\18\0=\2\19\0013\2\20\0=\2\21\0015\2\22\0=\2\23\1B\0\2\1K\0\1\0\17watch_gitdir\1\0\1\rinterval\3�\a\14on_attach\0\28current_line_blame_opts\1\0\4\14virt_text\2\ndelay\3�\1\18virt_text_pos\beol\22ignore_whitespace\1\nsigns\1\0\3\18sign_priority\3\6\23current_line_blame\2\20update_debounce\3�\1\14untracked\1\0\1\ttext\b│\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\6-\vdelete\1\0\1\ttext\b│\vchange\1\0\1\ttext\b│\badd\1\0\0\1\0\1\ttext\b│\nsetup\rgitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\2U\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["lsp-inlayhints.nvim"] = {
    config = { "\27LJ\2\2�\1\0\4\a\0\a\1\22\t\1\0\0X\4\a�9\4\0\0029\4\1\4\14\0\4\0X\4\3�'\4\2\0L\4\2\0X\4\6�9\4\3\0029\4\1\4\14\0\4\0X\4\2�'\4\2\0L\4\2\0006\4\4\0009\4\5\4\f\5\0\0X\5\1�4\5\0\0'\6\6\0D\4\3\0\a, \vconcat\ntable\15type_hints\5\tshow\20parameter_hints\4�\1\0\4\b\0\6\1#\a\3\0\0X\4\4�+\4\1\0=\4\1\1+\4\1\0=\4\2\0014\4\0\0\21\5\4\0\22\5\0\0059\6\1\1\15\0\6\0X\a\3�5\6\3\0\14\0\6\0X\a\1�+\6\0\0<\6\5\4\21\5\4\0\22\5\0\0054\6\3\0>\0\1\0069\a\4\2>\a\2\6<\6\5\4\21\5\4\0\22\5\0\0059\6\2\1\15\0\6\0X\a\3�5\6\5\0\14\0\6\0X\a\1�+\6\0\0<\6\5\4L\4\2\0\1\3\0\0\6 \vNormal\14highlight\1\3\0\0\6 \vNormal\17paddingRight\16paddingLeft\16sumneko_lua\2�\1\1\0\4\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0003\3\5\0=\3\6\0023\3\a\0=\3\b\2=\2\t\1B\0\2\1K\0\1\0\16inlay_hints\24virt_text_formatter\0\20label_formatter\0\1\0\1\22only_current_line\1\1\0\1\23enabled_at_startup\1\nsetup\19lsp-inlayhints\frequire\0" },
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
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
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
    config = { "\27LJ\2\2�\1\0\0\5\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\a\0005\3\5\0005\4\4\0=\4\6\3=\3\b\2=\2\t\1B\0\2\1K\0\1\0\14languages\vpython\1\0\0\rtemplate\1\0\0\1\0\1\26annotation_convention\rnumpydoc\1\0\2\19snippet_engine\fluasnip\fenabled\2\nsetup\vneogen\frequire\0" },
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
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2@\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { 'require("plugins.config/cmp_config")' },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\2A\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("plugins.config/lsp_config")' },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-semantic-tokens"] = {
    config = { "\27LJ\2\2�\1\0\0\5\0\6\1\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0004\2\3\0006\3\0\0'\4\4\0B\3\2\0?\3\0\0=\2\5\1B\0\2\1K\0\1\0\17highlighters+nvim-semantic-tokens.table-highlighter\1\0\1\vpreset\fdefault\nsetup\25nvim-semantic-tokens\frequire\3����\4\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-semantic-tokens",
    url = "https://github.com/theHamsta/nvim-semantic-tokens"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\2?\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
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
    after = { "nvim-treesitter-context", "nvim-treesitter-textobjects" },
    config = { 'require("plugins.config/treesitter")' },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    config = { 'require("plugins.config/onedark")' },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
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
    config = { "\27LJ\2\2�\f\0\0\4\0B\0G6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0=\2\5\0015\2\a\0005\3\6\0=\3\b\2=\2\t\0014\2\0\0=\2\n\0014\2\0\0=\2\v\0015\2\r\0005\3\f\0=\3\14\0025\3\15\0=\3\16\0025\3\17\0=\3\18\0025\3\19\0=\3\20\0025\3\21\0=\3\22\0025\3\23\0=\3\24\0025\3\25\0=\3\26\0025\3\27\0=\3\28\0025\3\29\0=\3\30\0025\3\31\0=\3 \0025\3!\0=\3\"\0025\3#\0=\3$\0025\3%\0=\3&\0025\3'\0=\3(\0025\3)\0=\3*\0025\3+\0=\3,\0025\3-\0=\3.\0025\3/\0=\0030\0025\0031\0=\0032\0025\0033\0=\0034\0025\0035\0=\0036\0025\0037\0=\0038\0025\0039\0=\3:\0025\3;\0=\3<\0025\3=\0=\3>\0025\3?\0=\3@\2=\2A\1B\0\2\1K\0\1\0\fsymbols\18TypeParameter\1\0\2\ahl\16TSParameter\ticon\t𝙏\rOperator\1\0\2\ahl\15TSOperator\ticon\6+\nEvent\1\0\2\ahl\vTSType\ticon\t🗲\vStruct\1\0\2\ahl\vTSType\ticon\t𝓢\15EnumMember\1\0\2\ahl\fTSField\ticon\b\tNull\1\0\2\ahl\vTSType\ticon\tNULL\bKey\1\0\2\ahl\vTSType\ticon\t🔐\vObject\1\0\2\ahl\vTSType\ticon\b⦿\nArray\1\0\2\ahl\15TSConstant\ticon\b\fBoolean\1\0\2\ahl\14TSBoolean\ticon\b⊨\vNumber\1\0\2\ahl\rTSNumber\ticon\6#\vString\1\0\2\ahl\rTSString\ticon\t𝓐\rConstant\1\0\2\ahl\15TSConstant\ticon\b\rVariable\1\0\2\ahl\15TSConstant\ticon\b\rFunction\1\0\2\ahl\15TSFunction\ticon\b\14Interface\1\0\2\ahl\vTSType\ticon\bﰮ\tEnum\1\0\2\ahl\vTSType\ticon\bℰ\16Constructor\1\0\2\ahl\18TSConstructor\ticon\b\nField\1\0\2\ahl\fTSField\ticon\b\rProperty\1\0\2\ahl\rTSMethod\ticon\b\vMethod\1\0\2\ahl\rTSMethod\ticon\aƒ\nClass\1\0\2\ahl\vTSType\ticon\t𝓒\fPackage\1\0\2\ahl\16TSNamespace\ticon\b\14Namespace\1\0\2\ahl\16TSNamespace\ticon\b\vModule\1\0\2\ahl\16TSNamespace\ticon\b\tFile\1\0\0\1\0\2\ahl\nTSURI\ticon\b\21symbol_blacklist\18lsp_blacklist\fkeymaps\nclose\1\0\v\17code_actions\6a\18rename_symbol\6r\17hover_symbol\14<C-space>\rfold_all\6W\19toggle_preview\6K\15unfold_all\6E\15fold_reset\6R\tfold\6h\vunfold\6l\18goto_location\t<Cr>\19focus_location\6o\1\3\0\0\n<Esc>\6q\17fold_markers\1\3\0\0\b\b\1\0\r\24show_symbol_details\2\27highlight_hovered_item\2\15auto_close\1\twrap\1\rposition\nright\19relative_width\2\16show_guides\2\26show_relative_numbers\1\17auto_preview\1\25preview_bg_highlight\nPmenu\17show_numbers\1\22auto_unfold_hover\2\nwidth\3\25\nsetup\20symbols-outline\frequire\0" },
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
    config = { "\27LJ\2\2L\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\1K\0\1\0\fproject\19load_extension\14telescope\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/telescope-project.nvim",
    url = "https://github.com/nvim-telescope/telescope-project.nvim"
  },
  ["telescope.nvim"] = {
    after = { "telescope-media-files.nvim", "telescope-project.nvim", "telescope-file-browser.nvim" },
    config = { 'require("plugins.config/telescope")' },
    loaded = true,
    only_config = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
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
try_loadstring("\27LJ\2\2e\0\0\5\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\1K\0\1\0\1\0\1\vsilent\2\24:DiffviewToggle<cr>\14<leader>D\6n\bset\vkeymap\bvim\0", "setup", "diffview.nvim")
time([[Setup for diffview.nvim]], false)
-- Setup for: neogen
time([[Setup for neogen]], true)
try_loadstring("\27LJ\2\2f\0\0\5\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\1K\0\1\0\1\0\1\tdesc\vNeogen\20<cmd>Neogen<cr>\15<leader>gd\6n\bset\vkeymap\bvim\0", "setup", "neogen")
time([[Setup for neogen]], false)
time([[packadd for neogen]], true)
vim.cmd [[packadd neogen]]
time([[packadd for neogen]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\2U\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("plugins.config/telescope")
time([[Config for telescope.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require("plugins.config/whichkey")
time([[Config for which-key.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\2?\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require("plugins.config/lsp_config")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("plugins.config/nvim-tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\2A\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0B\0\2\1K\0\1\0\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\18\0\0236\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\6\0005\2\4\0005\3\3\0=\3\5\2=\2\a\0015\2\t\0005\3\b\0=\3\n\0025\3\f\0005\4\v\0=\4\5\3=\3\r\0025\3\15\0005\4\14\0=\4\5\3=\3\16\2=\2\17\1B\0\2\1K\0\1\0\vselect\fbuiltin\1\0\0\1\0\1\rwinblend\3\0\bnui\1\0\0\1\0\1\rwinblend\3\0\fbackend\1\0\0\1\5\0\0\ffzf_lua\bfzf\fbuiltin\bnui\ninput\1\0\0\16win_options\1\0\0\1\0\1\rwinblend\3\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\2U\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\vwindow\1\0\0\1\0\1\nblend\3\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: neogen
time([[Config for neogen]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\a\0005\3\5\0005\4\4\0=\4\6\3=\3\b\2=\2\t\1B\0\2\1K\0\1\0\14languages\vpython\1\0\0\rtemplate\1\0\0\1\0\1\26annotation_convention\rnumpydoc\1\0\2\19snippet_engine\fluasnip\fenabled\2\nsetup\vneogen\frequire\0", "config", "neogen")
time([[Config for neogen]], false)
-- Config for: onedark.nvim
time([[Config for onedark.nvim]], true)
require("plugins.config/onedark")
time([[Config for onedark.nvim]], false)
-- Config for: nvim-semantic-tokens
time([[Config for nvim-semantic-tokens]], true)
try_loadstring("\27LJ\2\2�\1\0\0\5\0\6\1\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0004\2\3\0006\3\0\0'\4\4\0B\3\2\0?\3\0\0=\2\5\1B\0\2\1K\0\1\0\17highlighters+nvim-semantic-tokens.table-highlighter\1\0\1\vpreset\fdefault\nsetup\25nvim-semantic-tokens\frequire\3����\4\0", "config", "nvim-semantic-tokens")
time([[Config for nvim-semantic-tokens]], false)
-- Config for: lsp-inlayhints.nvim
time([[Config for lsp-inlayhints.nvim]], true)
try_loadstring("\27LJ\2\2�\1\0\4\a\0\a\1\22\t\1\0\0X\4\a�9\4\0\0029\4\1\4\14\0\4\0X\4\3�'\4\2\0L\4\2\0X\4\6�9\4\3\0029\4\1\4\14\0\4\0X\4\2�'\4\2\0L\4\2\0006\4\4\0009\4\5\4\f\5\0\0X\5\1�4\5\0\0'\6\6\0D\4\3\0\a, \vconcat\ntable\15type_hints\5\tshow\20parameter_hints\4�\1\0\4\b\0\6\1#\a\3\0\0X\4\4�+\4\1\0=\4\1\1+\4\1\0=\4\2\0014\4\0\0\21\5\4\0\22\5\0\0059\6\1\1\15\0\6\0X\a\3�5\6\3\0\14\0\6\0X\a\1�+\6\0\0<\6\5\4\21\5\4\0\22\5\0\0054\6\3\0>\0\1\0069\a\4\2>\a\2\6<\6\5\4\21\5\4\0\22\5\0\0059\6\2\1\15\0\6\0X\a\3�5\6\5\0\14\0\6\0X\a\1�+\6\0\0<\6\5\4L\4\2\0\1\3\0\0\6 \vNormal\14highlight\1\3\0\0\6 \vNormal\17paddingRight\16paddingLeft\16sumneko_lua\2�\1\1\0\4\0\n\0\r6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\3\0005\2\4\0003\3\5\0=\3\6\0023\3\a\0=\3\b\2=\2\t\1B\0\2\1K\0\1\0\16inlay_hints\24virt_text_formatter\0\20label_formatter\0\1\0\1\22only_current_line\1\1\0\1\23enabled_at_startup\1\nsetup\19lsp-inlayhints\frequire\0", "config", "lsp-inlayhints.nvim")
time([[Config for lsp-inlayhints.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd LuaSnip ]]
vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
require("plugins.config/cmp_config")

vim.cmd [[ packadd nvim-web-devicons ]]
vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
require("plugins.config/lualine")

vim.cmd [[ packadd bufferline.nvim ]]

-- Config for: bufferline.nvim
try_loadstring("\27LJ\2\0024\0\1\4\0\4\0\0056\1\0\0009\1\1\1'\2\2\0009\3\3\0D\1\3\0\fordinal\a%s\vformat\vstring�\2\1\0\5\0\n\0\0156\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\b\0005\2\3\0003\3\4\0=\3\5\0024\3\3\0005\4\6\0>\4\1\3=\3\a\2=\2\t\1B\0\2\1K\0\1\0\foptions\1\0\0\foffsets\1\0\3\ttext\18File Explorer\15text_align\vcenter\rfiletype\rNvimTree\fnumbers\0\1\0\6\22max_prefix_length\3\5\16diagnostics\rnvim_lsp\tview\16multiwindow\rtab_size\3\18\20separator_style\nslant\18modified_icon\b●\nsetup\15bufferline\frequire\0", "config", "bufferline.nvim")

vim.cmd [[ packadd alpha-nvim ]]

-- Config for: alpha-nvim
try_loadstring("\27LJ\2\2�\v\0\0\b\0\27\00176\0\0\0'\1\1\0B\0\2\0026\1\0\0'\2\2\0B\1\2\0029\2\3\0019\2\4\0025\3\6\0=\3\5\0029\2\3\0019\2\a\0024\3\b\0009\4\b\1'\5\t\0'\6\n\0'\a\v\0B\4\4\2>\4\1\0039\4\b\1'\5\f\0'\6\r\0B\4\3\2>\4\2\0039\4\b\1'\5\14\0'\6\15\0B\4\3\2>\4\3\0039\4\b\1'\5\16\0'\6\17\0B\4\3\2>\4\4\0039\4\b\1'\5\18\0'\6\19\0B\4\3\2>\4\5\0039\4\b\1'\5\20\0'\6\21\0B\4\3\2>\4\6\0039\4\b\1'\5\22\0'\6\23\0'\a\24\0B\4\4\0?\4\0\0=\3\5\0029\2\25\0009\3\26\1B\2\2\1K\0\1\0\topts\nsetup\f:qa<CR>\19  Quit NVIM\6q\21  Git Changes\b\\ D\24ﯻ  Toggle Sidebar\b\\ p\21  Colorscheme\n\\ t C!  Previously opened files\n\\ t o\19  Find file\n\\ t f :ene <BAR> startinsert <CR>\18  New file\6e\vbutton\fbuttons\1\r\0\0`                    ▄▄▄▄▄▪  • ▌ ▄ ·. .▄▄ ·                         g                     •██  ██ ·██ ▐███▪▐█ ▀.                        n                      ▐█.▪▐█·▐█ ▌▐▌▐█·▄▀▀▀█▄                       q                      ▐█▌·▐█▌██ ██▌▐█▌▐█▄▪▐█                       j                      ▀▀▀ ▀▀▀▀▀  █▪▀▀▀ ▀▀▀▀                        H                                             o8o                   H                                             `\"'                   Hooo. .oo.    .ooooo.   .ooooo.  oooo    ooo oooo  ooo. .oo.  .oo.  H`888P\"Y88b  d88' `88b d88' `88b  `88.  .8'  `888  `888P\"Y88bP\"Y88b H 888   888  888ooo888 888   888   `88..8'    888   888   888   888 H 888   888  888    .o 888   888    `888'     888   888   888   888 Ho888o o888o `Y8bod8P' `Y8bod8P'     `8'     o888o o888o o888o o888o\bval\vheader\fsection\27alpha.themes.dashboard\nalpha\frequire\15����\4\0", "config", "alpha-nvim")

vim.cmd [[ packadd telescope-project.nvim ]]

-- Config for: telescope-project.nvim
try_loadstring("\27LJ\2\2L\0\0\2\0\4\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0'\1\3\0B\0\2\1K\0\1\0\fproject\19load_extension\14telescope\frequire\0", "config", "telescope-project.nvim")

vim.cmd [[ packadd telescope-file-browser.nvim ]]
vim.cmd [[ packadd telescope-media-files.nvim ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'DiffviewOpen', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewOpen', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewOpen ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewToggle', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewToggle', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewToggle ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewClose', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewClose', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewClose ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'SymbolsOutline', function(cmdargs)
          require('packer.load')({'symbols-outline.nvim'}, { cmd = 'SymbolsOutline', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'symbols-outline.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('SymbolsOutline ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewRefresh', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewRefresh', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewRefresh ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewToggleFiles', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewToggleFiles', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewToggleFiles ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewFocusFiles', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewFocusFiles', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewFocusFiles ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'DiffviewFileHistory', function(cmdargs)
          require('packer.load')({'diffview.nvim'}, { cmd = 'DiffviewFileHistory', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'diffview.nvim'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('DiffviewFileHistory ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufNewFile * ++once lua require("packer.load")({'nvim-treesitter'}, { event = "BufNewFile *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPre * ++once lua require("packer.load")({'gitsigns.nvim'}, { event = "BufReadPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'nvim-autopairs'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-treesitter'}, { event = "BufRead *" }, _G.packer_plugins)]]
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
