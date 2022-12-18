local map = vim.keymap.set
local del = vim.keymap.del

-- Add keymappings
map('n', '<C-j>', '<C-W>j')
map('n', '<C-k>', '<C-W>k')
map('n', '<C-h>', '<C-W>h')
map('n', '<C-l>', '<C-W>l')

map('n', '<leader>gs', '<Cmd>SymbolsOutline<CR>')

-- Barbar
vim.cmd("nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>")
vim.cmd("nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>")
-- Re-order to previous/next
vim.cmd("nnoremap <silent>    <A-<> <Cmd>BufferMovePrevious<CR>")
vim.cmd("nnoremap <silent>    <A->> <Cmd>BufferMoveNext<CR>")
-- Goto buffer in position...
vim.cmd("nnoremap <silent>    <A-1> <Cmd>BufferGoto 1<CR>")
vim.cmd("nnoremap <silent>    <A-2> <Cmd>BufferGoto 2<CR>")
vim.cmd("nnoremap <silent>    <A-3> <Cmd>BufferGoto 3<CR>")
vim.cmd("nnoremap <silent>    <A-4> <Cmd>BufferGoto 4<CR>")
vim.cmd("nnoremap <silent>    <A-5> <Cmd>BufferGoto 5<CR>")
vim.cmd("nnoremap <silent>    <A-6> <Cmd>BufferGoto 6<CR>")
vim.cmd("nnoremap <silent>    <A-7> <Cmd>BufferGoto 7<CR>")
vim.cmd("nnoremap <silent>    <A-8> <Cmd>BufferGoto 8<CR>")
vim.cmd("nnoremap <silent>    <A-9> <Cmd>BufferGoto 9<CR>")
vim.cmd("nnoremap <silent>    <A-0> <Cmd>BufferLast<CR>")

-- Copilot
vim.api.nvim_set_keymap('i', '<C-/>', 'copilot#Accept("<CR>")', {expr=true, silent=true})

--map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>',{})
-- Delete keymappings
