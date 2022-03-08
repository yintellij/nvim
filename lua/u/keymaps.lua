local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- open explorer by <leader> + e
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
--keymap("v", "<A-j>", ":m .+1<CR>==", opts)
--keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- avoid overriding of register
keymap("v", "p", '"_dP', opts)

-- Move text up and down
-- keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
-- keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
-- keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>p", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<leader>P", [[<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false, no_ignore = true, hidden = true}))<cr>]], opts)

-- references
keymap("n", "gr", [[<cmd>lua require'telescope.builtin'.lsp_references({includeDeclaration = false, path_display = {"relative"}, layout_config = {width = 0.99}})<cr>]], opts)
keymap("n", "gB", [[<cmd>lua require'telescope.builtin'.git_branches({layout_config = {width = 0.99}})<cr>]], opts)
keymap("n", "gC", [[<cmd>lua require'telescope.builtin'.git_bcommits({layout_config = {width = 0.99}})<cr>]], opts)

-- go to definition
keymap("n", "gd", [[<cmd>lua require'telescope.builtin'.lsp_definitions({ path_display = {"relative"}, layout_config = {width = 0.99}})<cr>]], opts)

-- code actions
keymap("n", "ga", [[<cmd>lua require'telescope.builtin'.lsp_code_actions(require('telescope.themes').get_cursor())<cr>]], opts)

-- implementations
keymap("n", "gi", [[<cmd>lua require'telescope.builtin'.lsp_implementations({ path_display = {"relative"}, layout_config = {width = 0.99}})<cr>]], opts)
keymap("n", "gs", [[<cmd>lua require'telescope.builtin'.lsp_document_symbols({ path_display = {"relative"}, layout_config = {width = 0.99}})<cr>]], opts)

keymap("n", "gL", [[<cmd>lua require'telescope.builtin'.diagnostics({ bufnr = 0, layout_config = { width = 0.99 }})<cr>]], opts)


keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').live_grep({ layout_config = { width = 0.99}})<cr>", opts)
keymap("n", "<leader>F", [[<cmd>lua require'telescope.builtin'.live_grep({layout_config = {width = 0.99}, additional_args = function() return {"--no-ignore", "--hidden"};  end} )<cr>]], opts)
keymap("n", "<leader>=", "<cmd>lua vim.lsp.buf.formatting_sync()<cr>", opts)
keymap("n", "gm", [[<cmd>lua require'telescope.builtin'.marks({path_display = {"relative"}, layout_config = {width = 0.99}})<cr>]], opts)

