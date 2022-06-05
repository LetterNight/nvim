
-- 按键映射
local map = vim.api.nvim_set_keymap
local bufmap = vim.api.nvim_buf_set_keymap

-- 保存
map('n', '<C-s>', ':w<CR>', {noremap = true})
map('i', '<C-s>', '<ESC>:w<CR>', {noremap = true})

-- 控制文件管理器
map('n', '<A-q>', ':NvimTreeOpen<CR>', {silent = true, noremap = true})

-- 全选
map('n', '<C-a>', 'ggVG', {silent = true, noremap = true})
map('i', '<C-a>', '<ESC>ggVG', {silent = true, noremap = true})

-- 格式化
map('n', '<C-g>', 'ggVG=', {silent = true, noremap = true})
map('i', '<C-g>', '<ESC>ggVG=', {silent = true, noremap = true})

-- lspsaga
bufmap(0, "n", "<A-r>", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
bufmap(0, "n", "<A-x>", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
bufmap(0, "x", "<A-x>", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
bufmap(0, "n", "<A-k>",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
bufmap(0, "n", "<A-->", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
bufmap(0, "n", "<A-=>", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
bufmap(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
bufmap(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})

-- 窗口切换
--nnoremap <silent> gb :BufferLinePick<CR>
vim.api.nvim_set_keymap("n", "gb", "<Cmd>BufferLinePick<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>1", "<Cmd>BufferLineGoToBuffer 1<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>2", "<Cmd>BufferLineGoToBuffer 2<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>3", "<Cmd>BufferLineGoToBuffer 3<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>4", "<Cmd>BufferLineGoToBuffer 4<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>5", "<Cmd>BufferLineGoToBuffer 5<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>6", "<Cmd>BufferLineGoToBuffer 6<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>7", "<Cmd>BufferLineGoToBuffer 7<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>8", "<Cmd>BufferLineGoToBuffer 8<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>9", "<Cmd>BufferLineGoToBuffer 9<CR>", {noremap = true, silent = true})

-- 搜索文件telescope
vim.api.nvim_set_keymap("n", "<C-t>", [[<cmd>lua require('telescope.builtin').find_files()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fg", [[<cmd>lua require('telescope.builtin').live_grep()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fb", [[<cmd>lua require('telescope.builtin').buffers()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>fh", [[<cmd>lua require('telescope.builtin').help_tags()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>sf", [[<cmd>lua require('telescope.builtin').file_browser()<cr>]], {})
vim.api.nvim_set_keymap("n", "<leader>/", [[<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find{}<CR>]], {})

-- 终端悬浮窗
vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
