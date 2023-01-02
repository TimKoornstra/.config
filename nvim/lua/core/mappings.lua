local map = vim.keymap.set
local del = vim.keymap.del

-- Add keymappings
map('n', '<C-j>', '<C-W>j')
map('n', '<C-k>', '<C-W>k')
map('n', '<C-h>', '<C-W>h')
map('n', '<C-l>', '<C-W>l')

map('n', '<leader>gs', '<Cmd>SymbolsOutline<CR>')

-- Bufferline
vim.cmd("nnoremap <silent>    <A-,> <Cmd>BufferLineCyclePrev<CR>")
vim.cmd("nnoremap <silent>    <A-.> <Cmd>BufferLineCycleNext<CR>")
-- Re-order to previous/next
vim.cmd("nnoremap <silent>    <A-<> <Cmd>BufferLineMovePrev<CR>")
vim.cmd("nnoremap <silent>    <A->> <Cmd>BufferLineMoveNext<CR>")
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferLineGoToBuffer 1<CR>")
map("n", "<A-2>", "<Cmd>BufferLineGoToBuffer 2<CR>")
map("n", "<A-3>", "<Cmd>BufferLineGoToBuffer 3<CR>")
map("n", "<A-4>", "<Cmd>BufferLineGoToBuffer 4<CR>")
map("n", "<A-5>", "<Cmd>BufferLineGoToBuffer 5<CR>")
map("n", "<A-6>", "<Cmd>BufferLineGoToBuffer 6<CR>")
map("n", "<A-7>", "<Cmd>BufferLineGoToBuffer 7<CR>")
map("n", "<A-8>", "<Cmd>BufferLineGoToBuffer 8<CR>")
map("n", "<A-9>", "<Cmd>BufferLineGoToBuffer 9<CR>")
map("n", "<A-0>", "<Cmd>BufferLineGoToBuffer 10<CR>")
-- Close buffer
map("n", "<C-W>c", "<Cmd>BufferLinePickClose<CR>")

-- WhichKey
map("n", "<leader>?", "<Cmd>WhichKey<CR>")

-- Copilot
vim.api.nvim_set_keymap('i', '<C-/>', 'copilot#Accept("<CR>")', {expr=true, silent=true})

-- Delete keymappings
